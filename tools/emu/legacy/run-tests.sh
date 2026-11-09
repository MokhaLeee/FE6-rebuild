#!/usr/bin/env bash
# [归档] fe6-rebuild 旧的无头模拟器测试：启动 → 标题 → 菜单 → 进章节 → 存档往返 → 随机压力。
# 这套脚本假设“开机直接到标题”，与当前 testmenu 入口不一致，只作为迁移参考保留。
#
#   ./tools/emu/legacy/run-tests.sh                # 测 fe6re.gba
#   ./tools/emu/legacy/run-tests.sh path/to.gba    # 测指定 ROM
#   ./tools/emu/legacy/run-tests.sh --quick        # 只跑启动 + 菜单（约 1 秒）
#   ./tools/emu/legacy/run-tests.sh --clean        # 只清掉测试输出，不跑测试
#
# 退出码 0 = 全过；非 0 = 有用例失败（会在最后列出）。
# 截图和日志保留在 tools/emu/.build/out/。
set -uo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
BUILD="$HERE/../.build"
RUN="$BUILD/gbarun"
ROOT=$(cd "$HERE/../../.." && pwd)

QUICK=0
CLEAN_ONLY=0
ROM=""
for arg in "$@"; do
	case "$arg" in
	--quick) QUICK=1 ;;
	--clean) CLEAN_ONLY=1 ;;
	-*) echo "未知参数: $arg" >&2; exit 2 ;;
	*) ROM="$arg" ;;
	esac
done
[ -n "$ROM" ] || ROM="$ROOT/fe6re.gba"

OUT="$BUILD/out"
if [ "$CLEAN_ONLY" = "1" ]; then
	if [ -d "$OUT" ]; then
		rm -rf "$OUT"
		echo "已清理测试输出：$OUT"
	else
		echo "$OUT 不存在，无需清理"
	fi
	exit 0
fi

[ -x "$RUN" ] || { echo "先运行 ./tools/emu/build.sh" >&2; exit 1; }
[ -f "$ROM" ] || { echo "找不到 ROM: $ROM" >&2; exit 1; }

rm -rf "$OUT"
mkdir -p "$OUT"

FAILS=()
PASSES=0

ok() { PASSES=$((PASSES + 1)); printf '  \033[32mPASS\033[0m %s\n' "$1"; }
bad() { FAILS+=("$1"); printf '  \033[31mFAIL\033[0m %s\n' "$1"; }

# 从日志里取某个字段：field <log> <前缀> <键>
field() {
	sed -n "s/^$2 .*$3=\([0-9]*\).*/\1/p" "$1" | head -1
}

# 断言画面"不是黑屏"：颜色数 >= ${2:-24}
assert_visible() {
	local log=$1 what=$2 min=${3:-24}
	local colors
	colors=$(field "$log" STATS colors)
	if [ -z "$colors" ]; then
		bad "$what（没有抓到 STATS，可能没跑到该帧）"
	elif [ "$colors" -lt "$min" ]; then
		bad "$what（只有 $colors 种颜色，疑似黑屏/花屏）"
	else
		ok "$what（$colors 种颜色）"
	fi
}

# 断言进程正常跑完：没有 CRASH，且有 DONE
assert_completed() {
	local log=$1 what=$2
	if grep -q '^CRASH' "$log"; then
		bad "$what（$(grep -m1 '^CRASH' "$log")）"
	elif ! grep -q '^DONE' "$log"; then
		bad "$what（未跑完，日志尾部：$(tail -1 "$log")）"
	else
		ok "$what"
	fi
}

echo "== ROM: $ROM"
echo "== 1/10 开机与标题画面"
"$RUN" "$ROM" --quiet --frames 700 --stats 240 --stats 600 --shot 600 \
	--out "$OUT" >"$OUT/1-boot.log" 2>&1
assert_completed "$OUT/1-boot.log" "开机 700 帧无崩溃"
assert_visible "$OUT/1-boot.log" "标题画面有内容" 32
sed -n 's/^DONE.*secs=\([0-9.]*\) fps=\([0-9.]*\)/    速度: \2 fps/p' "$OUT/1-boot.log"

echo "== 2/10 标题 → 主菜单（按 START）"
"$RUN" "$ROM" --quiet --frames 1100 --hold 700:START:6 --stats 900 --hash 900 --shot 900 \
	--out "$OUT" >"$OUT/2-menu.log" 2>&1
assert_completed "$OUT/2-menu.log" "主菜单流程无崩溃"
assert_visible "$OUT/2-menu.log" "主菜单有内容" 32

if [ "$QUICK" = "1" ]; then
	echo
	echo "== 结果：$PASSES 通过，${#FAILS[@]} 失败（--quick 模式跳过后续用例）"
	[ ${#FAILS[@]} -eq 0 ] || exit 1
	exit 0
fi

echo "== 3/10 连按 A 进入章节地图（12000 帧）"
"$RUN" "$ROM" --quiet --frames 12000 --hold-every 720:12000:50:A:3 \
	--stats 2400 --stats 12000 --shot 12000 --out "$OUT" >"$OUT/3-chapter.log" 2>&1
assert_completed "$OUT/3-chapter.log" "推进到章节无崩溃"
assert_visible "$OUT/3-chapter.log" "章节地图有内容" 32

echo "== 4/10 存档写入 + 读回"
"$RUN" "$ROM" --quiet --frames 20000 --hold-every 720:20000:50:A:3 \
	--save-out "$OUT/game.sav" --out "$OUT" >"$OUT/4-save.log" 2>&1
SAV_SIZE=$(stat -c %s "$OUT/game.sav" 2>/dev/null || echo 0)
if [ "$SAV_SIZE" -gt 0 ]; then
	ok "游戏写出了存档（$SAV_SIZE 字节）"
else
	bad "游戏没有写出存档数据"
fi

# 有存档时主菜单应多出「記録から始める」等选项，画面必然与无存档不同
"$RUN" "$ROM" --quiet --frames 1100 --sav "$OUT/game.sav" --hold 700:START:6 \
	--hash 900 --out "$OUT" >"$OUT/4-load.log" 2>&1
H_LOAD=$(sed -n 's/^HASH frame=900 \([0-9a-f]*\)/\1/p' "$OUT/4-load.log" | head -1)
H_BASE=$(sed -n 's/^HASH frame=900 \([0-9a-f]*\)/\1/p' "$OUT/2-menu.log" | head -1)
if [ -n "$H_LOAD" ] && [ -n "$H_BASE" ] && [ "$H_LOAD" != "$H_BASE" ]; then
	ok "读回存档后菜单发生变化（$H_BASE → $H_LOAD）"
elif [ -z "$H_LOAD" ]; then
	bad "带存档启动失败（日志：$(tail -1 "$OUT/4-load.log")）"
else
	bad "存档似乎没有被读取（菜单哈希未变：$H_BASE）"
fi

echo "== 5/10 随机输入压力测试（20000 帧，固定种子可复现）"
RANDOM=12345
KEYS=(A B START SELECT UP DOWN LEFT RIGHT L R)
HOLDS=()
for f in $(seq 800 60 20000); do
	HOLDS+=(--hold "$f:${KEYS[$((RANDOM % 10))]}:20")
done
"$RUN" "$ROM" --quiet --frames 20000 "${HOLDS[@]}" \
	--stats 20000 --shot 20000 --out "$OUT" >"$OUT/5-stress.log" 2>&1
assert_completed "$OUT/5-stress.log" "随机输入 20000 帧无崩溃"
assert_visible "$OUT/5-stress.log" "压力测试结束时画面正常" 8

echo "== 6/10 banim 战斗动画路径（GDB 断点）"
if "$HERE/gdb-check.sh" "$ROM" >"$OUT/6-banim.log" 2>&1; then
	sed 's/^/  /' "$OUT/6-banim.log"
	ok "banim 代码路径被覆盖（BattleAIS_ExecCommands / EfxAdvanceFrameLut）"
else
	sed 's/^/  /' "$OUT/6-banim.log"
	bad "banim 断点没有命中（见 $OUT/6-banim.log）"
fi

echo
echo "== 7/10 第二章准备画面（prepscreen）"
# 第一章 debug 开场会自动 EvtNextChapter(CHAPTER_2)，B 过存档提示后，
# 第二章开场事件还要继续按 A 推进。gPrepMenuItemCnt 在地图菜单初始化后
# 变成 10，用它当“准备画面已就绪”的判据，不再靠帧号猜 START 的时机。
"$RUN" "$ROM" --quiet --frames 12000 \
	--sym "${ROM%.gba}.sym" \
	--hold-every 720:9000:50:A:3 \
	--hold-every 9500:10500:40:B:4 \
	--hold-every 10600:10850:40:A:3 \
	--probe "gPrepMenuItemCnt:8" \
	--stats 11000 --shot 11000 --out "$OUT" >"$OUT/7-prep.log" 2>&1
assert_completed "$OUT/7-prep.log" "通关第一章后进入第二章准备画面"
PREP_COLORS=$(field "$OUT/7-prep.log" STATS colors)
PREP_ITEMS=$(field "$OUT/7-prep.log" PROBE value)
if [ -n "$PREP_COLORS" ] && [ "$PREP_COLORS" -ge 150 ] && [ "$PREP_COLORS" -le 200 ] && [ "$PREP_ITEMS" = "10" ]; then
	ok "准备画面菜单已显示（$PREP_COLORS 种颜色，gPrepMenuItemCnt=$PREP_ITEMS）"
else
	bad "准备画面菜单没有出现（colors=${PREP_COLORS:-?}, gPrepMenuItemCnt=${PREP_ITEMS:-?}）"
fi

echo "== 8/10 准备画面子菜单交互（部署 / 物品 / 存档 / 地图 / 出击）"
# 准备画面（MENU SELECT）在 11000 帧左右已经就绪，菜单默认停在“ユニット選択”。
# 下面按 部署 → 物品整理 → 記録する → マップを見る → ゲームを始める 的顺序
# 逐个进出，帧号按新流程重新标定。
"$RUN" "$ROM" --quiet --frames 16500 \
	--sym "${ROM%.gba}.sym" \
	--hold-every 720:9000:50:A:3 \
	--hold-every 9500:10500:40:B:4 \
	--hold-every 10600:10850:40:A:3 \
	--hold 11100:A:5 --hold 11800:B:5 --hold 12000:DOWN:5 --hold 12100:A:5 \
	--hold 12700:B:5 --hold 12900:DOWN:5 --hold 13000:A:5 --hold 13600:B:5 \
	--hold 13800:DOWN:5 --hold 13900:A:5 --hold 14500:B:5 --hold 14700:DOWN:5 \
	--hold 14800:A:5 \
	--stats 11400 --stats 12400 --stats 13300 --stats 14200 --stats 16000 \
	--shot 11400 --shot 12400 --shot 13300 --shot 16000 \
	--out "$OUT" >"$OUT/8-prepmenu.log" 2>&1
assert_completed "$OUT/8-prepmenu.log" "准备画面子菜单交互无崩溃"
DEPLOY_COLORS=$(grep "STATS frame=11400" "$OUT/8-prepmenu.log" | sed -n 's/.*colors=\([0-9]*\).*/\1/p')
ITEM_COLORS=$(grep "STATS frame=12400" "$OUT/8-prepmenu.log" | sed -n 's/.*colors=\([0-9]*\).*/\1/p')
SAVE_COLORS=$(grep "STATS frame=13300" "$OUT/8-prepmenu.log" | sed -n 's/.*colors=\([0-9]*\).*/\1/p')
MAP_COLORS=$(grep "STATS frame=16000" "$OUT/8-prepmenu.log" | sed -n 's/.*colors=\([0-9]*\).*/\1/p')
if [ -n "$DEPLOY_COLORS" ] && [ "$DEPLOY_COLORS" -ge 100 ]; then
	ok "单位部署子界面有内容（$DEPLOY_COLORS 种颜色）"
else
	bad "单位部署子界面异常（colors=${DEPLOY_COLORS:-?}）"
fi
if [ -n "$ITEM_COLORS" ] && [ "$ITEM_COLORS" -ge 100 ]; then
	ok "物品整理子界面有内容（$ITEM_COLORS 种颜色）"
else
	bad "物品整理子界面异常（colors=${ITEM_COLORS:-?}）"
fi
if [ -n "$SAVE_COLORS" ] && [ "$SAVE_COLORS" -ge 300 ]; then
	ok "存档子界面有内容（$SAVE_COLORS 种颜色）"
else
	bad "存档子界面异常（colors=${SAVE_COLORS:-?}）"
fi
if [ -n "$MAP_COLORS" ] && [ "$MAP_COLORS" -ge 60 ] && [ "$MAP_COLORS" -le 200 ]; then
	ok "出击后进入地图画面（$MAP_COLORS 种颜色）"
else
	bad "出击后画面异常（colors=${MAP_COLORS:-?}）"
fi

echo "== 9/10 帮助框（prepscreen 主菜单按 R）"
"$RUN" "$ROM" --quiet --frames 12000 \
	--sym "${ROM%.gba}.sym" \
	--hold-every 720:9000:50:A:3 \
	--hold-every 9500:10500:40:B:4 \
	--hold-every 10600:10850:40:A:3 \
	--hold 11200:R:5 \
	--stats 11100 --stats 11300 \
	--hash 11100 --hash 11300 \
	--shot 11300 \
	--out "$OUT" >"$OUT/9-helpbox.log" 2>&1
assert_completed "$OUT/9-helpbox.log" "帮助框交互无崩溃"
HELP_COLORS=$(grep "STATS frame=11300" "$OUT/9-helpbox.log" | sed -n 's/.*colors=\([0-9]*\).*/\1/p')
H_BEFORE=$(sed -n 's/^HASH frame=11100 \([0-9a-f]*\)/\1/p' "$OUT/9-helpbox.log" | head -1)
H_HELP=$(sed -n 's/^HASH frame=11300 \([0-9a-f]*\)/\1/p' "$OUT/9-helpbox.log" | head -1)
if [ -n "$H_BEFORE" ] && [ -n "$H_HELP" ] && [ "$H_BEFORE" != "$H_HELP" ]; then
	ok "按 R 后画面出现帮助框（hash $H_BEFORE → $H_HELP）"
else
	bad "按 R 后画面没变化（hash 未变）"
fi
if [ -n "$HELP_COLORS" ] && [ "$HELP_COLORS" -ge 170 ] && [ "$HELP_COLORS" -le 190 ]; then
	ok "帮助框有内容（$HELP_COLORS 种颜色）"
else
	bad "帮助框异常（colors=${HELP_COLORS:-?}）"
fi

echo "== 10/10 准备画面物品子菜单（交換/捨てる/輸送隊/リスト/武器屋）"
"$RUN" "$ROM" --quiet --frames 15500 \
	--sym "${ROM%.gba}.sym" \
	--hold-every 720:9000:50:A:3 \
	--hold-every 9500:10500:40:B:4 \
	--press-when "gBmSt+0x4:8:&16;START;5;0" \
	--hold 10650:A:5 --hold 10900:B:5 --hold 11100:DOWN:5 --hold 11200:A:5 \
	--hold 11400:A:5 --hold 11600:A:5 --hold 12100:B:5 --hold 12300:DOWN:5 \
	--hold 12400:A:5 --hold 12700:B:5 --hold 12900:DOWN:5 --hold 13000:A:5 \
	--hold 13400:B:5 --hold 13600:DOWN:5 --hold 13700:A:5 --hold 14100:B:5 \
	--hold 14300:DOWN:5 --hold 14400:A:5 --hold 14800:B:5 \
	--stats 11800 --stats 12500 --stats 13200 --stats 13900 --stats 14600 \
	--shot 11800 --shot 13200 --shot 14600 \
	--out "$OUT" >"$OUT/10-prepsub.log" 2>&1
assert_completed "$OUT/10-prepsub.log" "准备画面物品子菜单交互无崩溃"
for f in 11800 12500 13200 13900 14600; do
	C=$(grep "STATS frame=$f" "$OUT/10-prepsub.log" | sed -n 's/.*colors=\([0-9]*\).*/\1/p')
	if [ -n "$C" ] && [ "$C" -ge 60 ] && [ "$C" -le 220 ]; then
		ok "子界面 $f 有内容（$C 种颜色）"
	else
		bad "子界面 $f 异常（colors=${C:-?}）"
	fi
done

if [ ${#FAILS[@]} -eq 0 ]; then
	printf '== \033[32m全部通过\033[0m（%d 项），截图在 %s\n' "$PASSES" "$OUT"
	exit 0
fi
printf '== \033[31m%d 项失败\033[0m（通过 %d 项）\n' "${#FAILS[@]}" "$PASSES"
for f in "${FAILS[@]}"; do echo "   - $f"; done
exit 1
