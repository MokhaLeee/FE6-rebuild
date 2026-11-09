#!/usr/bin/env bash
# 7/7: top -> Test -> Prep -> test prep screen, wait for the prep menu.

case_07_prep_screen() {
	local log="$OUT/7-prep-screen.log"
	local prep_menu prep_state prep_category prep_case_id
	local prep_count prep_flags prep_chapter prep_unit_count prep_red prep_colors

	echo "== 7/13 testmenu: 顶层 → Test → Prep → Test Prep 准备画面"

	# TestRoot 顺序：Game / Save / Battle / Prep / Back。
	# 选 Prep -> Test Prep 后，test-only ChapterInfo 打开 has_prep，
	# 测试事件只加载测试单位；按 A 推进准备画面的镜头，直到 prep 菜单就绪。
	# --probe 顺序：1 menu, 2 state, 3 category, 4 case_id,
	#              5 gPrepMenuItemCnt, 6 gPlaySt.flags, 7 gPlaySt.chapter,
	#              8 gPrepUnitCount, 9 first red unit pinfo
	"$RUN" "$ROM" --quiet --frames 20000 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:DOWN:5 \
		--hold 600:DOWN:5 \
		--hold 700:DOWN:5 \
		--hold 800:A:5 \
		--hold 900:A:5 \
		--press-when "gPlaySt+0xE:8:=1,gPrepMenuItemCnt:8:=0;A;3;30" \
		--probe "gTestMenuProbe+0x04:8" \
		--probe "gTestMenuProbe+0x05:8" \
		--probe "gTestMenuProbe+0x06:8" \
		--probe "gTestMenuProbe+0x07:8" \
		--probe "gPrepMenuItemCnt:8" \
		--probe "gPlaySt+0x14:8" \
		--probe "gPlaySt+0xE:8" \
		--probe "gPrepUnitCount:8" \
		--probe "gUnitArrayRed+0x48:32" \
		--stats 5000 --stats 10000 \
		--shot 10000 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "Prep 流程无崩溃"

	prep_menu=$(probe_n_at "$log" 10000 1)
	prep_state=$(probe_n_at "$log" 10000 2)
	prep_category=$(probe_n_at "$log" 10000 3)
	prep_case_id=$(probe_n_at "$log" 10000 4)
	prep_count=$(probe_n_at "$log" 10000 5)
	prep_flags=$(probe_n_at "$log" 10000 6)
	prep_chapter=$(probe_n_at "$log" 10000 7)
	prep_unit_count=$(probe_n_at "$log" 10000 8)
	prep_red=$(probe_n_at "$log" 10000 9)
	prep_colors=$(colors_at "$log" 10000)

	if [ "$prep_menu" = "4" ] && [ "$prep_state" = "2" ] &&
	   [ "$prep_category" = "4" ] && [ "$prep_case_id" = "6" ] &&
	   [ "$prep_count" = "10" ] && [ -n "$prep_flags" ] &&
	   [ "$((prep_flags & 16))" = "16" ] && [ "$prep_chapter" = "46" ] &&
	   [ "$prep_unit_count" = "9" ] && [ -n "$prep_red" ] && [ "$prep_red" != "0" ]; then
		ok "进入 Test Prep 准备画面（gPrepMenuItemCnt=$prep_count, blue=$prep_unit_count, red=yes, flags=$prep_flags, chapter=$prep_chapter, colors=${prep_colors:-?}）"
	else
		bad "Prep 状态不对（menu=${prep_menu:-?}, state=${prep_state:-?}, category=${prep_category:-?}, case=${prep_case_id:-?}, prep_cnt=${prep_count:-?}, blue=${prep_unit_count:-?}, red=${prep_red:-?}, flags=${prep_flags:-?}, chapter=${prep_chapter:-?}）"
	fi
}
