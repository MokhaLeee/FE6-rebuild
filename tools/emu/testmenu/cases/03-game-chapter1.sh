#!/usr/bin/env bash
# 3/4: top -> Test -> Game -> Chapter 1.

case_03_game_chapter1() {
	local log="$OUT/3-game-chapter1.log"
	local root_menu game_menu case_menu case_state
	local case_category case_id case_chapter

	echo "== 3/7 testmenu: 顶层 → Test → Game → Chapter 1"

	# --probe 顺序：1 magic, 2 menu, 3 state, 4 category, 5 case_id, 6 chapter
	"$RUN" "$ROM" --quiet --frames 1200 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 600:A:5 \
		--hold 700:A:5 \
		--probe "gTestMenuProbe+0x00:32" \
		--probe "gTestMenuProbe+0x04:8" \
		--probe "gTestMenuProbe+0x05:8" \
		--probe "gTestMenuProbe+0x06:8" \
		--probe "gTestMenuProbe+0x07:8" \
		--probe "gPlaySt+0xE:8" \
		--stats 200 --stats 500 --stats 650 --stats 900 \
		--shot 500 --shot 650 --shot 900 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "Game → Chapter 1 流程无崩溃"

	root_menu=$(probe_n_at "$log" 500 2)
	game_menu=$(probe_n_at "$log" 650 2)
	case_menu=$(probe_n_at "$log" 900 2)
	case_state=$(probe_n_at "$log" 900 3)
	case_category=$(probe_n_at "$log" 900 4)
	case_id=$(probe_n_at "$log" 900 5)
	case_chapter=$(probe_n_at "$log" 900 6)

	if [ "$root_menu" = "2" ] && [ "$game_menu" = "3" ] &&
	   [ "$case_menu" = "4" ] && [ "$case_state" = "2" ] &&
	   [ "$case_category" = "1" ] && [ "$case_id" = "1" ] &&
	   [ -n "$case_chapter" ] && [ "$case_chapter" -ge 1 ]; then
		ok "Game → Chapter 1 探针正确（menu $root_menu → $game_menu → $case_menu, category=$case_category, case=$case_id, chapter=$case_chapter）"
	else
		bad "Game → Chapter 1 状态不对（menu=${root_menu:-?}/${game_menu:-?}/${case_menu:-?}, state=${case_state:-?}, category=${case_category:-?}, case=${case_id:-?}, chapter=${case_chapter:-?}）"
	fi
}
