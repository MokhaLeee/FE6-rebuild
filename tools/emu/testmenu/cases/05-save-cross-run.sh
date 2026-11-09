#!/usr/bin/env bash
# 5/5: cross-run save: write + export, then boot with --sav and load.

case_05_save_cross_run() {
	local log_write="$OUT/5-save-write.log"
	local log_load="$OUT/5-save-load.log"
	local save_file="$OUT/5-save.sav"
	local save_bytes
	local write_state write_case write_flags write_valid write_chapter write_turn
	local load_state load_case load_flags load_valid load_chapter_on_disk
	local load_turn_on_disk load_turn_loaded load_chapter

	echo "== 5/13 testmenu: Save 跨进程 Write → Load"

	# Run 1: top -> Test -> Save -> Write
	# --probe 顺序：1 state, 2 case_id, 3 flags, 4 value0(valid),
	#              5 value1(chapter), 6 value2(turn)
	"$RUN" "$ROM" --quiet --frames 1200 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:DOWN:5 \
		--hold 600:A:5 \
		--hold 700:DOWN:5 \
		--hold 800:A:5 \
		--probe "gTestMenuProbe+0x05:8" \
		--probe "gTestMenuProbe+0x07:8" \
		--probe "gTestMenuProbe+0x0A:16" \
		--probe "gTestMenuProbe+0x0C:32" \
		--probe "gTestMenuProbe+0x10:32" \
		--probe "gTestMenuProbe+0x14:32" \
		--stats 900 \
		--save-out "$save_file" \
		--out "$OUT" >"$log_write" 2>&1

	assert_completed "$log_write" "Save 跨进程 Write 无崩溃"

	write_state=$(probe_n_at "$log_write" 900 1)
	write_case=$(probe_n_at "$log_write" 900 2)
	write_flags=$(probe_n_at "$log_write" 900 3)
	write_valid=$(probe_n_at "$log_write" 900 4)
	write_chapter=$(probe_n_at "$log_write" 900 5)
	write_turn=$(probe_n_at "$log_write" 900 6)
	save_bytes=$(stat -c %s "$save_file" 2>/dev/null || echo 0)

	if [ "$write_state" = "3" ] && [ "$write_case" = "3" ] &&
	   [ "$write_flags" = "0" ] && [ "$write_valid" = "1" ] &&
	   [ "$write_chapter" = "1" ] && [ "$write_turn" = "7" ] &&
	   [ "$save_bytes" -gt 0 ]; then
		ok "跨进程 Write 成功（state=$write_state, case=$write_case, sram=$save_bytes）"
	else
		bad "跨进程 Write 状态不对（state=${write_state:-?}, case=${write_case:-?}, flags=${write_flags:-?}, valid=${write_valid:-?}, chapter=${write_chapter:-?}, turn=${write_turn:-?}, sram=${save_bytes:-?}）"
	fi

	# Run 2: boot with --sav -> top -> Test -> Save -> Load
	# --probe 顺序：1 state, 2 case_id, 3 flags, 4 value0(valid),
	#              5 value1(chapter), 6 value2(turn), 7 value3(loaded turn),
	#              8 chapter
	"$RUN" "$ROM" --quiet --frames 1400 \
		--sym "$SYM" \
		--sav "$save_file" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:DOWN:5 \
		--hold 600:A:5 \
		--hold 700:DOWN:5 \
		--hold 800:DOWN:5 \
		--hold 900:A:5 \
		--probe "gTestMenuProbe+0x05:8" \
		--probe "gTestMenuProbe+0x07:8" \
		--probe "gTestMenuProbe+0x0A:16" \
		--probe "gTestMenuProbe+0x0C:32" \
		--probe "gTestMenuProbe+0x10:32" \
		--probe "gTestMenuProbe+0x14:32" \
		--probe "gTestMenuProbe+0x18:32" \
		--probe "gPlaySt+0xE:8" \
		--stats 1100 \
		--out "$OUT" >"$log_load" 2>&1

	assert_completed "$log_load" "Save 跨进程 Load 无崩溃"

	load_state=$(probe_n_at "$log_load" 1100 1)
	load_case=$(probe_n_at "$log_load" 1100 2)
	load_flags=$(probe_n_at "$log_load" 1100 3)
	load_valid=$(probe_n_at "$log_load" 1100 4)
	load_chapter_on_disk=$(probe_n_at "$log_load" 1100 5)
	load_turn_on_disk=$(probe_n_at "$log_load" 1100 6)
	load_turn_loaded=$(probe_n_at "$log_load" 1100 7)
	load_chapter=$(probe_n_at "$log_load" 1100 8)

	if [ "$load_state" = "3" ] && [ "$load_case" = "4" ] &&
	   [ "$load_flags" = "7" ] && [ "$load_valid" = "1" ] &&
	   [ "$load_chapter_on_disk" = "1" ] && [ "$load_turn_on_disk" = "7" ] &&
	   [ "$load_turn_loaded" = "7" ] &&
	   [ -n "$load_chapter" ] && [ "$load_chapter" -ge 1 ]; then
		ok "跨进程 Load 正确（case=$load_case, flags=$load_flags, chapter=$load_chapter）"
	else
		bad "跨进程 Load 状态不对（state=${load_state:-?}, case=${load_case:-?}, flags=${load_flags:-?}, valid=${load_valid:-?}, disk=${load_chapter_on_disk:-?}/${load_turn_on_disk:-?}, loaded=${load_turn_loaded:-?}, chapter=${load_chapter:-?}）"
	fi
}
