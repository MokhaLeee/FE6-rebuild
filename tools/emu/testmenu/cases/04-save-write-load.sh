#!/usr/bin/env bash
# 4/4: top -> Test -> Save -> Write + Load; checksum + playstate + RAM round-trip.

case_04_save_write_load() {
	local log="$OUT/4-save.log"
	local save_file="$OUT/4-save.sav"
	local root_menu save_menu case_menu save_state
	local save_category save_case_id save_valid
	local disk_chapter disk_turn loaded_turn chapter
	local bg3_900 bg3_1000 save_bytes

	echo "== 4/4 testmenu: 顶层 → Test → Save → Write + Load"

	# --probe 顺序：1 magic, 2 menu, 3 state, 4 category, 5 case_id,
	#              6 value0(valid), 7 value1(saved chapter), 8 value2(saved turn),
	#              9 value3(loaded turn), 10 chapter, 11 BG3 HOFS
	"$RUN" "$ROM" --quiet --frames 1200 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:DOWN:5 \
		--hold 600:A:5 \
		--hold 700:A:5 \
		--probe "gTestMenuProbe+0x00:32" \
		--probe "gTestMenuProbe+0x04:8" \
		--probe "gTestMenuProbe+0x05:8" \
		--probe "gTestMenuProbe+0x06:8" \
		--probe "gTestMenuProbe+0x07:8" \
		--probe "gTestMenuProbe+0x0C:32" \
		--probe "gTestMenuProbe+0x10:32" \
		--probe "gTestMenuProbe+0x14:32" \
		--probe "gTestMenuProbe+0x18:32" \
		--probe "gPlaySt+0xE:8" \
		--probe "gDispIo+0x28:16" \
		--stats 200 --stats 500 --stats 650 --stats 900 --stats 1000 \
		--shot 650 --shot 900 \
		--save-out "$save_file" \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "Save 写读流程无崩溃"

	root_menu=$(probe_n_at "$log" 500 2)
	save_menu=$(probe_n_at "$log" 650 2)
	case_menu=$(probe_n_at "$log" 900 2)
	save_state=$(probe_n_at "$log" 900 3)
	save_category=$(probe_n_at "$log" 900 4)
	save_case_id=$(probe_n_at "$log" 900 5)
	save_valid=$(probe_n_at "$log" 900 6)
	disk_chapter=$(probe_n_at "$log" 900 7)
	disk_turn=$(probe_n_at "$log" 900 8)
	loaded_turn=$(probe_n_at "$log" 900 9)
	chapter=$(probe_n_at "$log" 900 10)
	bg3_900=$(probe_n_at "$log" 900 11)
	bg3_1000=$(probe_n_at "$log" 1000 11)
	save_bytes=$(stat -c %s "$save_file" 2>/dev/null || echo 0)

	if [ "$root_menu" = "2" ] && [ "$save_menu" = "3" ] &&
	   [ "$case_menu" = "4" ] && [ "$save_state" = "3" ] &&
	   [ "$save_category" = "2" ] && [ "$save_case_id" = "2" ] &&
	   [ "$save_valid" = "1" ] && [ "$disk_chapter" = "1" ] &&
	   [ "$disk_turn" = "7" ] && [ "$loaded_turn" = "7" ] &&
	   [ -n "$chapter" ] && [ "$chapter" -ge 1 ] &&
	   [ "$save_bytes" -gt 0 ] && [ -n "$bg3_900" ] && [ "$bg3_900" = "$bg3_1000" ]; then
		ok "Save 写读正确（checksum=ok, disk chapter=$disk_chapter turn=$disk_turn, loaded turn=$loaded_turn, sram=$save_bytes, BG3 已停 $bg3_900）"
	else
		bad "Save 写读状态不对（menu=${root_menu:-?}/${save_menu:-?}/${case_menu:-?}, state=${save_state:-?}, category=${save_category:-?}, case=${save_case_id:-?}, valid=${save_valid:-?}, disk=${disk_chapter:-?}/${disk_turn:-?}, loaded=${loaded_turn:-?}, chapter=${chapter:-?}, sram=${save_bytes:-?}, BG3=${bg3_900:-?}/${bg3_1000:-?}）"
	fi
}
