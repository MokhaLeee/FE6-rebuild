#!/usr/bin/env bash
# 13/13: prep save/map submenus smoke.

case_13_prep_save_map() {
	local log="$OUT/13-prep-save-map.log"
	local count flags chapter save_colors map_colors

	echo "== 13/15 testmenu: Prep → 記録する / マップを見る"

	# 准备菜单就绪后：
	# 10000/10200 DOWN 到 記録する，10400 A 打开存档界面，12000 B 返回
	# 12500 DOWN 到 マップを見る，12700 A 打开地图
	# --probe 顺序：1 gPrepMenuItemCnt, 2 gPlaySt.flags, 3 gPlaySt.chapter
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
		--hold 10400:A:5 \
		--hold 12000:B:5 \
		--hold 12500:DOWN:5 \
		--hold 12700:A:5 \
		--probe "gPrepMenuItemCnt:8" \
		--probe "gPlaySt+0x14:8" \
		--probe "gPlaySt+0xE:8" \
		--stats 11000 --stats 13500 \
		--shot 11000 --shot 13500 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "Prep 存档/地图子界面无崩溃"

	count=$(probe_n_at "$log" 13500 1)
	flags=$(probe_n_at "$log" 13500 2)
	chapter=$(probe_n_at "$log" 13500 3)
	save_colors=$(colors_at "$log" 11000)
	map_colors=$(colors_at "$log" 13500)

	if [ "$count" = "10" ] && [ -n "$flags" ] &&
	   [ "$((flags & 16))" = "16" ] && [ "$chapter" = "46" ] &&
	   [ -n "$save_colors" ] && [ "$save_colors" -ge 300 ] &&
	   [ -n "$map_colors" ] && [ "$map_colors" -ge 200 ]; then
		ok "記録する / マップを見る 正常（save=$save_colors, map=$map_colors）"
	else
		bad "Prep 存档/地图状态不对（cnt=${count:-?}, flags=${flags:-?}, chapter=${chapter:-?}, save=${save_colors:-?}, map=${map_colors:-?}）"
	fi
}
