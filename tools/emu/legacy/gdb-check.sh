#!/usr/bin/env bash
# [归档] 用 mGBA 的 GDB stub 验证 banim（战斗动画）代码路径被真正走到。
#
#   ./tools/emu/legacy/gdb-check.sh [ROM]
#
# 第一章的 debug 事件（src/Debugs/debug-event.c）会在章节开场播放几场剧情战斗，
# 这里在 BattleAIS_ExecCommands / EfxAdvanceFrameLut 上打断点，确认战斗动画的主循环
# 和特效帧 LUT 都被执行过——普通的截图断言分不清"战斗画面"和"地图"，断点可以。
#
# 退出码 0 = 两个断点都命中。
set -uo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
BUILD="$HERE/../.build"
ROOT=$(cd "$HERE/../../.." && pwd)
RUN="$BUILD/gbarun"
ROM=${1:-$ROOT/fe6re.gba}
ELF=${ROM%.gba}.elf
RUNLOG="$BUILD/out/gdb-run.log"
GDBLOG="$BUILD/out/gdb-check.log"
PORT=2345

GDB=${GDB:-arm-none-eabi-gdb}
if command -v "$GDB" >/dev/null 2>&1; then
	GDB=$(command -v "$GDB")
else
	GDB=/opt/devkitpro/devkitARM/bin/arm-none-eabi-gdb
fi
[ -x "$GDB" ] || { echo "找不到 arm-none-eabi-gdb" >&2; exit 1; }
[ -x "$RUN" ] || { echo "先运行 ./tools/emu/build.sh" >&2; exit 1; }
[ -f "$ROM" ] || { echo "找不到 ROM: $ROM" >&2; exit 1; }
[ -f "$ELF" ] || { echo "找不到 ELF（GDB 需要符号）: $ELF" >&2; exit 1; }

mkdir -p "$BUILD/out"
rm -f "$RUNLOG" "$GDBLOG"

# 第 7000 帧再挂调试器：此时章节已经载入，接下来的开场事件会触发剧情战斗
"$RUN" "$ROM" --quiet --gdb-at 7000 --frames 30000 \
	--hold-every 720:11000:50:A:3 \
	--out "$BUILD/out" >"$RUNLOG" 2>&1 &
RUNPID=$!
trap 'kill "$RUNPID" 2>/dev/null' EXIT

for _ in $(seq 1 150); do
	grep -q "GDB stub listening" "$RUNLOG" 2>/dev/null && break
	sleep 0.1
done
if ! grep -q "GDB stub listening" "$RUNLOG" 2>/dev/null; then
	echo "  FAIL GDB stub 没有起来（$(tail -1 "$RUNLOG")）"
	exit 1
fi

timeout 90 "$GDB" -batch \
	-ex "set complaints 0" \
	-ex "target remote 127.0.0.1:$PORT" \
	-ex "break BattleAIS_ExecCommands" \
	-ex "continue" \
	-ex "bt 3" \
	-ex "delete 1" \
	-ex "break EfxAdvanceFrameLut" \
	-ex "continue" \
	-ex "bt 3" \
	"$ELF" >"$GDBLOG" 2>&1

kill "$RUNPID" 2>/dev/null
wait "$RUNPID" 2>/dev/null
trap - EXIT

fail=0
check() {
	if grep -q "$1" "$GDBLOG"; then
		echo "  PASS 命中 $1"
	else
		echo "  FAIL 没有命中 $1（见 $GDBLOG）"
		fail=1
	fi
}
check "BattleAIS_ExecCommands"
check "EfxAdvanceFrameLut"

[ $fail -eq 0 ] && echo "  PASS banim 代码路径已覆盖（$(grep -c '^Breakpoint [0-9]*, ' "$GDBLOG") 次断点命中）"
exit $fail
