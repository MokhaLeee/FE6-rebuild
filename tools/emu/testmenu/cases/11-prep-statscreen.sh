#!/usr/bin/env bash
# 11/11: prep unit select -> R -> statscreen.

case_11_prep_statscreen() {
	local log="$OUT/11-prep-statscreen.log"
	local page unit_ptr count screen_colors

	echo "== 11 testmenu: Unit Select → R → Statscreen"

	# 准备菜单就绪后 A 进 Unit Select，再按 R 打开当前单位的 statscreen。
	# --probe 顺序：1 gStatScreenSt.page, 2 gStatScreenSt.unit, 3 gPrepMenuItemCnt
	"$RUN" "$ROM" --quiet --frames 15000 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:DOWN:5 \
		--hold 600:DOWN:5 \
		--hold 700:DOWN:5 \
		--hold 800:A:5 \
		--hold 900:A:5 \
		--press-when "gPlaySt+0xE:8:=46,gPrepMenuItemCnt:8:=0;A;3;30" \
		--hold 10000:A:5 \
		--hold 11000:R:5 \
		--probe "gStatScreenSt+0x00:8" \
		--probe "gStatScreenSt+0x0C:32" \
		--probe "gPrepMenuItemCnt:8" \
		--stats 11000 --stats 12000 --stats 13000 \
		--shot 12000 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "Statscreen 流程无崩溃"

	page=$(probe_n_at "$log" 12000 1)
	unit_ptr=$(probe_n_at "$log" 12000 2)
	count=$(probe_n_at "$log" 12000 3)
	screen_colors=$(colors_at "$log" 12000)

	if [ "$page" = "0" ] && [ -n "$unit_ptr" ] && [ "$unit_ptr" != "0" ] &&
	   [ "$count" = "10" ] && [ -n "$screen_colors" ] &&
	   [ "$screen_colors" -ge 80 ] && [ "$screen_colors" -le 200 ]; then
		ok "Statscreen 已打开（page=$page, unit=$unit_ptr, colors=$screen_colors）"
	else
		bad "Statscreen 状态不对（page=${page:-?}, unit=${unit_ptr:-?}, cnt=${count:-?}, colors=${screen_colors:-?}）"
	fi
}
