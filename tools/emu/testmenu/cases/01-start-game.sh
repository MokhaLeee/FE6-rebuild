#!/usr/bin/env bash
# 1/4: boot -> testmenu -> Start Game -> chapter.

case_01_start_game() {
	local log="$OUT/1-start-game.log"
	local menu_colors magic menu state chapter0
	local game_colors game_menu game_state game_chapter
	local chapter_colors chapter

	echo "== 1/4 testmenu: 开机 → Start Game → 章节"

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
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "testmenu 流程无崩溃"

	menu_colors=$(colors_at "$log" 200)
	magic=$(probe_n_at "$log" 200 1)
	menu=$(probe_n_at "$log" 200 2)
	state=$(probe_n_at "$log" 200 3)
	chapter0=$(probe_n_at "$log" 200 4)

	if [ -n "$menu_colors" ] && [ "$menu_colors" -ge 40 ] && [ "$menu_colors" -le 80 ] &&
	   [ "$magic" = "$((0x54535450))" ] && [ "$menu" = "1" ] &&
	   [ "$state" = "1" ] && [ "$chapter0" = "0" ]; then
		ok "开机进入 test menu，探针 magic/menu/state 正确（colors=$menu_colors）"
	else
		bad "开机 probe 或画面不对（colors=${menu_colors:-?}, magic=${magic:-?}, menu=${menu:-?}, state=${state:-?}）"
	fi

	game_colors=$(colors_at "$log" 700)
	game_menu=$(probe_n_at "$log" 700 2)
	game_state=$(probe_n_at "$log" 700 3)
	game_chapter=$(probe_n_at "$log" 700 4)

	if [ -n "$game_colors" ] && [ "$game_colors" -ge 64 ] &&
	   [ "$game_menu" = "0" ] && [ "$game_state" = "0" ] &&
	   [ "$game_chapter" = "0" ]; then
		ok "选择 Start Game 后离开 test menu，探针已清零（colors=$game_colors）"
	else
		bad "选择 Start Game 后状态不对（colors=${game_colors:-?}, menu=${game_menu:-?}, state=${game_state:-?}）"
	fi

	chapter_colors=$(colors_at "$log" 1500)
	chapter=$(probe_n_at "$log" 1500 4)
	if [ -n "$chapter" ] && [ "$chapter" -ge 1 ]; then
		ok "进入章节（gPlaySt.chapter=$chapter, colors=${chapter_colors:-?}）"
	else
		bad "没有进入章节（gPlaySt.chapter=${chapter:-?}）"
	fi
}
