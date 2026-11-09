#!/usr/bin/env bash
# 14/14: Game -> Chapter 2.

case_14_game_chapter2() {
	local log="$OUT/14-game-chapter2.log"
	local category case_id chapter colors

	echo "== 14 testmenu: 顶层 → Test → Game → Chapter 2"

	# TestRoot 默认 Game，A 进 Game 菜单；DOWN 到 Chapter 2，A 启动。
	# --probe 顺序：1 category, 2 case_id, 3 gPlaySt.chapter
	"$RUN" "$ROM" --quiet --frames 20000 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:A:5 \
		--hold 600:DOWN:5 \
		--hold 700:A:5 \
		--hold-every 1000:18000:50:A:3 \
		--probe "gTestMenuProbe+0x06:8" \
		--probe "gTestMenuProbe+0x07:8" \
		--probe "gPlaySt+0x0E:8" \
		--stats 5000 --stats 20000 \
		--shot 20000 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "Game → Chapter 2 流程无崩溃"

	category=$(probe_n_at "$log" 5000 1)
	case_id=$(probe_n_at "$log" 5000 2)
	chapter=$(probe_n_at "$log" 5000 3)
	colors=$(colors_at "$log" 20000)

	if [ "$category" = "1" ] && [ "$case_id" = "2" ] &&
	   [ "$chapter" = "2" ] && [ -n "$colors" ] && [ "$colors" -ge 200 ]; then
		ok "Game → Chapter 2 正确（category=$category, case=$case_id, chapter=$chapter, colors=$colors）"
	else
		bad "Game → Chapter 2 状态不对（category=${category:-?}, case=${case_id:-?}, chapter=${chapter:-?}, colors=${colors:-?}）"
	fi
}
