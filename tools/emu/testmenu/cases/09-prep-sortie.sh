#!/usr/bin/env bash
# 9/9: prep sortie: Test Prep -> ゲームを始める -> map, prep flags cleared.

case_09_prep_sortie() {
	local log="$OUT/9-prep-sortie.log"
	local play_flags bm_flags chapter sortie_colors

	echo "== 9/13 testmenu: Test Prep → 出撃 → 地图"

	# 准备菜单在 10000 帧就绪；光标从「ユニット選択」DOWN 4 次到
	# 「ゲームを始める」，A 确认后进入地图。
	# --probe 顺序：1 gPlaySt.flags, 2 gBmSt.flags, 3 gPlaySt.chapter
	"$RUN" "$ROM" --quiet --frames 18000 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:DOWN:5 \
		--hold 600:DOWN:5 \
		--hold 700:DOWN:5 \
		--hold 800:A:5 \
		--hold 900:A:5 \
		--press-when "gPlaySt+0xE:8:=46,gPrepMenuItemCnt:8:=0;A;3;30" \
		--hold 10000:DOWN:5 \
		--hold 10200:DOWN:5 \
		--hold 10400:DOWN:5 \
		--hold 10600:DOWN:5 \
		--hold 10800:A:5 \
		--hold 12000:A:5 \
		--probe "gPlaySt+0x14:8" \
		--probe "gBmSt+0x4:8" \
		--probe "gPlaySt+0xE:8" \
		--stats 12000 --stats 14000 --stats 16000 \
		--shot 14000 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "Prep 出撃流程无崩溃"

	play_flags=$(probe_n_at "$log" 14000 1)
	bm_flags=$(probe_n_at "$log" 14000 2)
	chapter=$(probe_n_at "$log" 14000 3)
	sortie_colors=$(colors_at "$log" 14000)

	if [ "$play_flags" = "0" ] && [ -n "$bm_flags" ] &&
	   [ "$((bm_flags & 16))" = "0" ] && [ "$chapter" = "46" ] &&
	   [ -n "$sortie_colors" ] && [ "$sortie_colors" -ge 300 ]; then
		ok "离开准备画面进入地图（PLAY_FLAG_PREP=0, BM_FLAG_PREP=0, chapter=$chapter, colors=$sortie_colors）"
	else
		bad "Prep 出撃状态不对（play_flags=${play_flags:-?}, bm_flags=${bm_flags:-?}, chapter=${chapter:-?}, colors=${sortie_colors:-?}）"
	fi
}
