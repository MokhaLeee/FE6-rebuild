#!/usr/bin/env bash
# 12/12: MSS (modern statscreen): sortie -> map -> R.

case_12_mss_statscreen() {
	local log="$OUT/12-mss-statscreen.log"
	local mss_unit vanilla_unit chapter mss_colors

	echo "== 12/13 testmenu: MSS Statscreen（地图 R）"

	# 先走 Prep 出撃到地图，再在地图上按 R 打开 modern statscreen。
	# --probe 顺序：1 gMssSt.unit, 2 gStatScreenSt.unit, 3 gPlaySt.chapter
	"$RUN" "$ROM" --quiet --frames 20000 \
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
		--hold 14000:R:5 \
		--probe "gMssSt+0x00:32" \
		--probe "gStatScreenSt+0x0C:32" \
		--probe "gPlaySt+0x0E:8" \
		--stats 14000 --stats 15000 --stats 16000 \
		--shot 15000 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "MSS Statscreen 无崩溃"

	mss_unit=$(probe_n_at "$log" 15000 1)
	vanilla_unit=$(probe_n_at "$log" 15000 2)
	chapter=$(probe_n_at "$log" 15000 3)
	mss_colors=$(colors_at "$log" 15000)

	if [ -n "$mss_unit" ] && [ "$mss_unit" != "0" ] &&
	   [ "$vanilla_unit" = "0" ] && [ "$chapter" = "46" ] &&
	   [ -n "$mss_colors" ] && [ "$mss_colors" -ge 300 ] &&
	   [ "$mss_colors" -le 700 ]; then
		ok "MSS 已打开（gMssSt.unit=$mss_unit, vanilla=0, colors=$mss_colors）"
	else
		bad "MSS 状态不对（mss=${mss_unit:-?}, vanilla=${vanilla_unit:-?}, chapter=${chapter:-?}, colors=${mss_colors:-?}）"
	fi
}
