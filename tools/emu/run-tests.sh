#!/usr/bin/env bash
# fe6-rebuild 的无头模拟器测试：启动 → 标题 → 菜单 → 进章节 → 存档往返 → 随机压力。
#
#   ./tools/emu/run-tests.sh                # 测 fe6re.gba
#   ./tools/emu/run-tests.sh path/to.gba    # 测指定 ROM
#   ./tools/emu/run-tests.sh --quick        # 只跑启动 + 菜单（约 1 秒）
#   ./tools/emu/run-tests.sh --clean        # 只清掉测试输出，不跑测试
#
# 退出码 0 = 全过；非 0 = 有用例失败（会在最后列出）。
# 截图和日志保留在 tools/emu/.build/out/。
set -uo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
BUILD="$HERE/.build"
RUN="$BUILD/gbarun"
ROOT=$(cd "$HERE/../.." && pwd)

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
echo "== 1/6 开机与标题画面"
"$RUN" "$ROM" --quiet --frames 700 --stats 240 --stats 600 --shot 600 \
	--out "$OUT" >"$OUT/1-boot.log" 2>&1
assert_completed "$OUT/1-boot.log" "开机 700 帧无崩溃"
assert_visible "$OUT/1-boot.log" "标题画面有内容" 32
sed -n 's/^DONE.*secs=\([0-9.]*\) fps=\([0-9.]*\)/    速度: \2 fps/p' "$OUT/1-boot.log"

echo "== 2/6 标题 → 主菜单（按 START）"
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

echo "== 3/6 连按 A 进入章节地图（12000 帧）"
"$RUN" "$ROM" --quiet --frames 12000 --hold-every 720:12000:50:A:3 \
	--stats 2400 --stats 12000 --shot 12000 --out "$OUT" >"$OUT/3-chapter.log" 2>&1
assert_completed "$OUT/3-chapter.log" "推进到章节无崩溃"
assert_visible "$OUT/3-chapter.log" "章节地图有内容" 32

echo "== 4/6 存档写入 + 读回"
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

echo "== 5/6 随机输入压力测试（20000 帧，固定种子可复现）"
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

echo "== 6/6 banim 战斗动画路径（GDB 断点）"
if ./tools/emu/gdb-check.sh "$ROM" >"$OUT/6-banim.log" 2>&1; then
	sed 's/^/  /' "$OUT/6-banim.log"
	ok "banim 代码路径被覆盖（BattleAIS_ExecCommands / EfxAdvanceFrameLut）"
else
	sed 's/^/  /' "$OUT/6-banim.log"
	bad "banim 断点没有命中（见 $OUT/6-banim.log）"
fi

echo
if [ ${#FAILS[@]} -eq 0 ]; then
	printf '== \033[32m全部通过\033[0m（%d 项），截图在 %s\n' "$PASSES" "$OUT"
	exit 0
fi
printf '== \033[31m%d 项失败\033[0m（通过 %d 项）\n' "${#FAILS[@]}" "$PASSES"
for f in "${FAILS[@]}"; do echo "   - $f"; done
exit 1
