#!/usr/bin/env bash
# 8/8: prep submenu smoke: Unit Select -> Item Edit -> back to prep menu.

case_08_prep_menu() {
	local log="$OUT/8-prep-menu.log"
	local units_11000 units_12000 units_14500
	local count_11000 count_12000 count_14500
	local colors_11000 colors_12000 colors_14500

	echo "== 8/15 testmenu: Prep 子菜单 smoke（Unit Select / Item Edit）"

	# 准备画面在 10000 帧前就绪；之后：
	# 10000 A -> Unit Select，11000 B -> 准备菜单
	# 11500 DOWN -> アイテム整理，11700 A -> Item Edit
	# 14000 B -> 准备菜单
	# --probe 顺序：1 gPrepMenuItemCnt, 2 gPrepUnitCount
	"$RUN" "$ROM" --quiet --frames 17000 \
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
		--hold 11000:B:5 \
		--hold 11500:DOWN:5 \
		--hold 11700:A:5 \
		--hold 14000:B:5 \
		--probe "gPrepMenuItemCnt:8" \
		--probe "gPrepUnitCount:8" \
		--stats 11000 --stats 12000 --stats 14500 \
		--shot 11000 --shot 12000 --shot 14500 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "Prep 子菜单流程无崩溃"

	count_11000=$(probe_n_at "$log" 11000 1)
	units_11000=$(probe_n_at "$log" 11000 2)
	count_12000=$(probe_n_at "$log" 12000 1)
	units_12000=$(probe_n_at "$log" 12000 2)
	count_14500=$(probe_n_at "$log" 14500 1)
	units_14500=$(probe_n_at "$log" 14500 2)
	colors_11000=$(colors_at "$log" 11000)
	colors_12000=$(colors_at "$log" 12000)
	colors_14500=$(colors_at "$log" 14500)

	if [ "$count_11000" = "10" ] && [ "$units_11000" = "9" ] &&
	   [ "$count_12000" = "10" ] && [ "$units_12000" = "9" ] &&
	   [ "$count_14500" = "10" ] && [ "$units_14500" = "9" ] &&
	   [ -n "$colors_11000" ] && [ "$colors_11000" -ge 100 ] &&
	   [ -n "$colors_12000" ] && [ "$colors_12000" -ge 100 ] &&
	   [ -n "$colors_14500" ] && [ "$colors_14500" -ge 100 ]; then
		ok "Unit Select / Item Edit / 返回准备菜单 正常（units=$units_11000, colors=$colors_11000/$colors_12000/$colors_14500）"
	else
		bad "Prep 子菜单状态不对（cnt=${count_11000:-?}/${count_12000:-?}/${count_14500:-?}, units=${units_11000:-?}/${units_12000:-?}/${units_14500:-?}, colors=${colors_11000:-?}/${colors_12000:-?}/${colors_14500:-?}）"
	fi
}
