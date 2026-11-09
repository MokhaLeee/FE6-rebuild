#!/usr/bin/env bash
# 10/10: prep helpbox: press R on the prep menu and check the help panel.

case_10_prep_helpbox() {
	local log="$OUT/10-prep-helpbox.log"
	local count flags chapter help_colors

	echo "== 10/13 testmenu: Prep helpbox（R）"

	# 准备菜单在 10000 帧就绪，按 R 打开菜单项帮助框。
	# --probe 顺序：1 gPrepMenuItemCnt, 2 gPlaySt.flags, 3 gPlaySt.chapter
	"$RUN" "$ROM" --quiet --frames 14000 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:DOWN:5 \
		--hold 600:DOWN:5 \
		--hold 700:DOWN:5 \
		--hold 800:A:5 \
		--hold 900:A:5 \
		--press-when "gPlaySt+0xE:8:=46,gPrepMenuItemCnt:8:=0;A;3;30" \
		--hold 10000:R:5 \
		--probe "gPrepMenuItemCnt:8" \
		--probe "gPlaySt+0x14:8" \
		--probe "gPlaySt+0xE:8" \
		--stats 10500 --stats 11000 \
		--shot 11000 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "Prep helpbox 无崩溃"

	count=$(probe_n_at "$log" 11000 1)
	flags=$(probe_n_at "$log" 11000 2)
	chapter=$(probe_n_at "$log" 11000 3)
	help_colors=$(colors_at "$log" 11000)

	if [ "$count" = "10" ] && [ -n "$flags" ] &&
	   [ "$((flags & 16))" = "16" ] && [ "$chapter" = "46" ] &&
	   [ -n "$help_colors" ] && [ "$help_colors" -ge 160 ] &&
	   [ "$help_colors" -le 200 ]; then
		ok "Prep helpbox 正常（colors=$help_colors, flags=$flags, chapter=$chapter）"
	else
		bad "Prep helpbox 状态不对（cnt=${count:-?}, flags=${flags:-?}, chapter=${chapter:-?}, colors=${help_colors:-?}）"
	fi
}
