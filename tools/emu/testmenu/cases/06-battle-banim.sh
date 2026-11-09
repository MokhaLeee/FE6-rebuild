#!/usr/bin/env bash
# 6/6: GDB banim check: testmenu -> Battle -> Chapter 1, then breakpoints.

case_06_battle_banim() {
	local runlog="$OUT/6-banim-run.log"
	local gdblog="$OUT/6-banim-gdb.log"
	local elf="${ROM%.gba}.elf"
	local gdb
	local runpid
	local gdbrc=0

	echo "== 6 testmenu: Battle → Test Battle → banim GDB 断点"

	if command -v "${GDB:-arm-none-eabi-gdb}" >/dev/null 2>&1; then
		gdb=$(command -v "${GDB:-arm-none-eabi-gdb}")
	else
		gdb=/opt/devkitpro/devkitARM/bin/arm-none-eabi-gdb
	fi
	if [ ! -x "$gdb" ]; then
		bad "找不到 arm-none-eabi-gdb"
		return
	fi
	if [ ! -f "$elf" ]; then
		bad "找不到 ELF（GDB 需要符号）: $elf"
		return
	fi

	# 第 1200 帧挂起：此时 testmenu 已经选完 Battle -> Test Battle。
	# 后续用真实按键选 Roy/攻击，触发战斗后命中 banim 断点。
	"$RUN" "$ROM" --quiet --gdb-at 1200 --frames 30000 \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:DOWN:5 \
		--hold 600:DOWN:5 \
		--hold 700:A:5 \
		--hold 800:A:5 \
		--hold 12000:A:5 \
		--hold 12500:A:5 \
		--hold 13000:A:5 \
		--hold 13500:A:5 \
		--hold 14000:A:5 \
		--hold-every 14500:25000:60:A:4 \
		--out "$OUT" >"$runlog" 2>&1 &
	runpid=$!
	trap 'kill "$runpid" 2>/dev/null' EXIT

	for _ in $(seq 1 150); do
		grep -q "GDB stub listening" "$runlog" 2>/dev/null && break
		sleep 0.1
	done
	if ! grep -q "GDB stub listening" "$runlog" 2>/dev/null; then
		bad "GDB stub 没有起来（$(tail -1 "$runlog")）"
		kill "$runpid" 2>/dev/null
		wait "$runpid" 2>/dev/null
		trap - EXIT
		return
	fi

	timeout 120 "$gdb" -batch \
		-ex "set complaints 0" \
		-ex "target remote 127.0.0.1:2345" \
		-ex "break BattleAIS_ExecCommands" \
		-ex "continue" \
		-ex "bt 3" \
		-ex "delete 1" \
		-ex "break EfxAdvanceFrameLut" \
		-ex "continue" \
		-ex "bt 3" \
		"$elf" >"$gdblog" 2>&1
	gdbrc=$?

	kill "$runpid" 2>/dev/null
	wait "$runpid" 2>/dev/null
	trap - EXIT

	if grep -q '^CRASH' "$runlog"; then
		bad "banim 流程崩溃（$(grep -m1 '^CRASH' "$runlog")）"
		return
	fi

	if grep -q "BattleAIS_ExecCommands" "$gdblog"; then
		ok "命中 BattleAIS_ExecCommands"
	else
		bad "没有命中 BattleAIS_ExecCommands（gdb rc=$gdbrc，见 $gdblog）"
	fi

	if grep -q "EfxAdvanceFrameLut" "$gdblog"; then
		ok "命中 EfxAdvanceFrameLut"
	else
		bad "没有命中 EfxAdvanceFrameLut（gdb rc=$gdbrc，见 $gdblog）"
	fi
}
