#!/usr/bin/env bash
# testmenu 测试：debug 开机进入 test menu，覆盖顶层菜单、Test 子菜单和 Start Game。
#
#   ./tools/emu/testmenu-tests.sh          # 测 fe6re.gba
#   ./tools/emu/testmenu-tests.sh path.gba # 测指定 ROM
#
# 退出码 0 = 全过；非 0 = 有用例失败。
# 截图和日志保留在 tools/emu/.build/out-testmenu/。
set -uo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
BUILD="$HERE/.build"
RUN="$BUILD/gbarun"
ROOT=$(cd "$HERE/../.." && pwd)

ROM=${1:-$ROOT/fe6re.gba}
SYM="${ROM%.gba}.sym"
OUT="$BUILD/out-testmenu"

[ -x "$RUN" ] || { echo "先运行 ./tools/emu/build.sh" >&2; exit 1; }
[ -f "$ROM" ] || { echo "找不到 ROM: $ROM" >&2; exit 1; }
[ -f "$SYM" ] || { echo "找不到符号表: $SYM" >&2; exit 1; }

rm -rf "$OUT"
mkdir -p "$OUT"

FAILS=()
PASSES=0

ok() { PASSES=$((PASSES + 1)); printf '  \033[32mPASS\033[0m %s\n' "$1"; }
bad() { FAILS+=("$1"); printf '  \033[31mFAIL\033[0m %s\n' "$1"; }

# 取某个 STATS 帧的颜色数
colors_at() {
	sed -n "s/^STATS frame=$2 .*colors=\([0-9]*\).*/\1/p" "$1" | head -1
}

# 取某个 PROBE 帧的第 n 个 probe 值（按命令行 --probe 顺序）
probe_n_at() {
	local log=$1 frame=$2 n=$3
	grep "^PROBE frame=$frame " "$log" |
		sed -n "s/.*value=\(-*[0-9]*\).*/\1/p" |
		sed -n "${n}p"
}

assert_completed() {
	local log=$1 what=$2
	if grep -q '^CRASH' "$log"; then
		bad "$what（$(grep -m1 '^CRASH' "$log")）"
	elif ! grep -q '^DONE' "$log"; then
		bad "$what（未跑完：$(tail -1 "$log")）"
	else
		ok "$what"
	fi
}

echo "== ROM: $ROM"
echo "== 1/2 testmenu: 开机 → Start Game → 章节"

# gPlaySt.chapter 在 struct PlaySt 的 +0x0E，1 字节有符号。
# --probe 顺序：1 magic, 2 menu, 3 state, 4 chapter
"$RUN" "$ROM" --quiet --frames 2400 \
	--sym "$SYM" \
	--hold 300:A:6 \
	--hold 600:START:6 \
	--hold-every 800:2400:50:A:3 \
	--probe "gTestMenuProbe+0x00:32" \
	--probe "gTestMenuProbe+0x04:8" \
	--probe "gTestMenuProbe+0x05:8" \
	--probe "gPlaySt+0xE:8" \
	--stats 200 --stats 700 --stats 1500 \
	--shot 200 --shot 1500 \
	--out "$OUT" >"$OUT/1-testmenu.log" 2>&1

assert_completed "$OUT/1-testmenu.log" "testmenu 流程无崩溃"

MENU_COLORS=$(colors_at "$OUT/1-testmenu.log" 200)
MAGIC=$(probe_n_at "$OUT/1-testmenu.log" 200 1)
MENU=$(probe_n_at "$OUT/1-testmenu.log" 200 2)
STATE=$(probe_n_at "$OUT/1-testmenu.log" 200 3)
CHAPTER0=$(probe_n_at "$OUT/1-testmenu.log" 200 4)

if [ -n "$MENU_COLORS" ] && [ "$MENU_COLORS" -ge 40 ] && [ "$MENU_COLORS" -le 80 ] &&
   [ "$MAGIC" = "$((0x54535450))" ] && [ "$MENU" = "1" ] && [ "$STATE" = "1" ] &&
   [ "$CHAPTER0" = "0" ]; then
	ok "开机进入 test menu，探针 magic/menu/state 正确（colors=$MENU_COLORS）"
else
	bad "开机 probe 或画面不对（colors=${MENU_COLORS:-?}, magic=${MAGIC:-?}, menu=${MENU:-?}, state=${STATE:-?}）"
fi

GAME_COLORS=$(colors_at "$OUT/1-testmenu.log" 700)
GAME_MENU=$(probe_n_at "$OUT/1-testmenu.log" 700 2)
GAME_STATE=$(probe_n_at "$OUT/1-testmenu.log" 700 3)
GAME_CHAPTER=$(probe_n_at "$OUT/1-testmenu.log" 700 4)

if [ -n "$GAME_COLORS" ] && [ "$GAME_COLORS" -ge 64 ] &&
   [ "$GAME_MENU" = "0" ] && [ "$GAME_STATE" = "0" ] && [ "$GAME_CHAPTER" = "0" ]; then
	ok "选择 Start Game 后离开 test menu，探针已清零（colors=$GAME_COLORS）"
else
	bad "选择 Start Game 后状态不对（colors=${GAME_COLORS:-?}, menu=${GAME_MENU:-?}, state=${GAME_STATE:-?}）"
fi

CHAPTER_COLORS=$(colors_at "$OUT/1-testmenu.log" 1500)
CHAPTER=$(probe_n_at "$OUT/1-testmenu.log" 1500 4)
if [ -n "$CHAPTER" ] && [ "$CHAPTER" -ge 1 ]; then
	ok "进入章节（gPlaySt.chapter=$CHAPTER, colors=${CHAPTER_COLORS:-?}）"
else
	bad "没有进入章节（gPlaySt.chapter=${CHAPTER:-?}）"
fi

echo "== 2/2 testmenu: 顶层 → Test 子菜单 → Back 返回"

# --probe 顺序：1 magic, 2 menu, 3 state
"$RUN" "$ROM" --quiet --frames 1200 \
	--sym "$SYM" \
	--hold 300:DOWN:5 \
	--hold 400:A:5 \
	--hold 700:B:5 \
	--probe "gTestMenuProbe+0x00:32" \
	--probe "gTestMenuProbe+0x04:8" \
	--probe "gTestMenuProbe+0x05:8" \
	--stats 200 --stats 500 --stats 900 \
	--shot 200 --shot 500 --shot 900 \
	--out "$OUT" >"$OUT/2-test-root.log" 2>&1

assert_completed "$OUT/2-test-root.log" "Test 子菜单流程无崩溃"

TOP_COLORS=$(colors_at "$OUT/2-test-root.log" 200)
ROOT_COLORS=$(colors_at "$OUT/2-test-root.log" 500)
BACK_COLORS=$(colors_at "$OUT/2-test-root.log" 900)
TOP_MENU=$(probe_n_at "$OUT/2-test-root.log" 200 2)
ROOT_MENU=$(probe_n_at "$OUT/2-test-root.log" 500 2)
BACK_MENU=$(probe_n_at "$OUT/2-test-root.log" 900 2)
ROOT_STATE=$(probe_n_at "$OUT/2-test-root.log" 500 3)

if [ -n "$TOP_COLORS" ] && [ "$TOP_COLORS" -ge 40 ] &&
   [ -n "$ROOT_COLORS" ] && [ "$ROOT_COLORS" -le 40 ] &&
   [ -n "$BACK_COLORS" ] && [ "$BACK_COLORS" -ge 40 ] &&
   [ "$TOP_MENU" = "1" ] && [ "$ROOT_MENU" = "2" ] &&
   [ "$BACK_MENU" = "1" ] && [ "$ROOT_STATE" = "1" ]; then
	ok "Test 子菜单进入/返回正确（menu $TOP_MENU → $ROOT_MENU → $BACK_MENU）"
else
	bad "Test 子菜单状态不对（colors=${TOP_COLORS:-?}/${ROOT_COLORS:-?}/${BACK_COLORS:-?}, menu=${TOP_MENU:-?}/${ROOT_MENU:-?}/${BACK_MENU:-?}）"
fi

echo
echo "== 结果：$PASSES 通过，${#FAILS[@]} 失败"
if [ ${#FAILS[@]} -ne 0 ]; then
	printf '  - %s\n' "${FAILS[@]}"
	exit 1
fi
exit 0
