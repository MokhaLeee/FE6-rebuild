#!/usr/bin/env bash
# testmenu 测试：debug 开机进入 test menu → Start Game → 进入章节。
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

# 取某个 PROBE 帧的值
probe_at() {
	sed -n "s/^PROBE frame=$2 .*value=\(-*[0-9]*\).*/\1/p" "$1" | head -1
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
echo "== 1 testmenu: 开机 → test menu → Start Game → 章节"

# gPlaySt.chapter 在 struct PlaySt 的 +0x0E，1 字节有符号。
"$RUN" "$ROM" --quiet --frames 2400 \
	--sym "$SYM" \
	--hold 300:A:6 \
	--hold 600:START:6 \
	--hold-every 800:2400:50:A:3 \
	--probe "gPlaySt+0xE:8" \
	--stats 200 --stats 700 --stats 1500 \
	--shot 200 --shot 1500 \
	--out "$OUT" >"$OUT/1-testmenu.log" 2>&1

assert_completed "$OUT/1-testmenu.log" "testmenu 流程无崩溃"

MENU_COLORS=$(colors_at "$OUT/1-testmenu.log" 200)
MENU_CHAPTER=$(probe_at "$OUT/1-testmenu.log" 200)
# 带 Roy/Lilina 两张脸时约 58 色；只有菜单没有脸时约 32 色。
if [ -n "$MENU_COLORS" ] && [ "$MENU_COLORS" -ge 40 ] && [ "$MENU_COLORS" -le 80 ] &&
   [ "$MENU_CHAPTER" = "0" ]; then
	ok "开机进入 test menu，Roy/Lilina 已显示（colors=$MENU_COLORS, chapter=$MENU_CHAPTER）"
else
	bad "开机没有进入 test menu 或脸没有显示（colors=${MENU_COLORS:-?}, chapter=${MENU_CHAPTER:-?}）"
fi

GAME_COLORS=$(colors_at "$OUT/1-testmenu.log" 700)
GAME_CHAPTER=$(probe_at "$OUT/1-testmenu.log" 700)
if [ -n "$GAME_COLORS" ] && [ "$GAME_COLORS" -ge 64 ] && [ "$GAME_CHAPTER" = "0" ]; then
	ok "选择 Start Game 后离开 test menu（colors=$GAME_COLORS, chapter=$GAME_CHAPTER）"
else
	bad "选择 Start Game 后没有进入游戏流程（colors=${GAME_COLORS:-?}, chapter=${GAME_CHAPTER:-?}）"
fi

CHAPTER_COLORS=$(colors_at "$OUT/1-testmenu.log" 1500)
CHAPTER=$(probe_at "$OUT/1-testmenu.log" 1500)
if [ -n "$CHAPTER" ] && [ "$CHAPTER" -ge 1 ]; then
	ok "进入章节（gPlaySt.chapter=$CHAPTER, colors=${CHAPTER_COLORS:-?}）"
else
	bad "没有进入章节（gPlaySt.chapter=${CHAPTER:-?}）"
fi

echo
echo "== 结果：$PASSES 通过，${#FAILS[@]} 失败"
if [ ${#FAILS[@]} -ne 0 ]; then
	printf '  - %s\n' "${FAILS[@]}"
	exit 1
fi
exit 0
