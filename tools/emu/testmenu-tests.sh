#!/usr/bin/env bash
# testmenu 测试 runner。
#
#   ./tools/emu/testmenu-tests.sh                 # 跑全部 case
#   ./tools/emu/testmenu-tests.sh --list          # 列出 case
#   ./tools/emu/testmenu-tests.sh --case 4        # 只跑 case 4
#   ./tools/emu/testmenu-tests.sh --clean         # 清掉输出
#   ./tools/emu/testmenu-tests.sh other.gba       # 测指定 ROM
#
# 用例实现：tools/emu/testmenu/cases/*.sh
# 公共断言：tools/emu/testmenu/lib.sh
set -uo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)

. "$HERE/testmenu/lib.sh"

. "$HERE/testmenu/cases/01-start-game.sh"
. "$HERE/testmenu/cases/02-test-root.sh"
. "$HERE/testmenu/cases/03-game-chapter1.sh"
. "$HERE/testmenu/cases/04-save-write-load.sh"

CASE_KEYS=(1 2 3 4)
CASE_FUNCS=(
	case_01_start_game
	case_02_test_root
	case_03_game_chapter1
	case_04_save_write_load
)
CASE_TITLES=(
	"start-game         开机 → Start Game → 章节"
	"test-root          顶层 → Test → Back → 顶层"
	"game-chapter1      顶层 → Test → Game → Chapter 1"
	"save-write-load    顶层 → Test → Save → Write + Load"
)

usage() {
	cat <<EOF
用法: $0 [--list] [--case N] [--clean] [ROM]

  --list       列出 case
  --case N     只跑第 N 个 case（1-4）
  --clean      只清掉 $OUT
  ROM          默认 fe6re.gba
EOF
}

CLEAN=0
LIST=0
ONLY=""
ROM=""

while [ $# -gt 0 ]; do
	case "$1" in
	--clean)
		CLEAN=1
		shift
		;;
	--list)
		LIST=1
		shift
		;;
	--case)
		[ $# -ge 2 ] || { usage >&2; exit 2; }
		ONLY=$2
		shift 2
		;;
	-h|--help)
		usage
		exit 0
		;;
	-*)
		usage >&2
		exit 2
		;;
	*)
		ROM=$1
		shift
		;;
	esac
done

ONLY=${ONLY#0}

if [ "$CLEAN" = "1" ]; then
	rm -rf "$OUT"
	echo "已清理测试输出：$OUT"
	exit 0
fi

if [ "$LIST" = "1" ]; then
	for i in "${!CASE_KEYS[@]}"; do
		printf '%s  %s\n' "${CASE_KEYS[$i]}" "${CASE_TITLES[$i]}"
	done
	exit 0
fi

ROM=${ROM:-$ROOT/fe6re.gba}
SYM="${ROM%.gba}.sym"

testmenu_init "$ROM" "$SYM"

echo "== ROM: $ROM"

MATCHED=0
for i in "${!CASE_KEYS[@]}"; do
	if [ -z "$ONLY" ] || [ "$ONLY" = "${CASE_KEYS[$i]}" ]; then
		"${CASE_FUNCS[$i]}"
		MATCHED=1
	fi
done

if [ "$MATCHED" = "0" ]; then
	echo "未知 case: $ONLY" >&2
	exit 2
fi

testmenu_summary
