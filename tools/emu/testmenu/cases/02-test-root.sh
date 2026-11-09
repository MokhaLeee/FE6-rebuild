#!/usr/bin/env bash
# 2/4: top -> Test submenu -> Back -> top; mural keeps scrolling.

case_02_test_root() {
	local log="$OUT/2-test-root.log"
	local top_colors root_colors back_colors
	local top_menu root_menu back_menu root_state scroll_a scroll_b

	echo "== 2/15 testmenu: 顶层 → Test 子菜单 → Back 返回"

	# --probe 顺序：1 magic, 2 menu, 3 state, 4 BG3 HOFS
	"$RUN" "$ROM" --quiet --frames 1200 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 700:B:5 \
		--probe "gTestMenuProbe+0x00:32" \
		--probe "gTestMenuProbe+0x04:8" \
		--probe "gTestMenuProbe+0x05:8" \
		--probe "gDispIo+0x28:16" \
		--stats 200 --stats 500 --stats 540 --stats 900 \
		--shot 200 --shot 500 --shot 900 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "Test 子菜单流程无崩溃"

	top_colors=$(colors_at "$log" 200)
	root_colors=$(colors_at "$log" 500)
	back_colors=$(colors_at "$log" 900)
	top_menu=$(probe_n_at "$log" 200 2)
	root_menu=$(probe_n_at "$log" 500 2)
	back_menu=$(probe_n_at "$log" 900 2)
	root_state=$(probe_n_at "$log" 500 3)
	scroll_a=$(probe_n_at "$log" 500 4)
	scroll_b=$(probe_n_at "$log" 540 4)

	if [ -n "$top_colors" ] && [ "$top_colors" -ge 40 ] &&
	   [ -n "$root_colors" ] && [ "$root_colors" -le 40 ] &&
	   [ -n "$back_colors" ] && [ "$back_colors" -ge 40 ] &&
	   [ "$top_menu" = "1" ] && [ "$root_menu" = "2" ] &&
	   [ "$back_menu" = "1" ] && [ "$root_state" = "1" ]; then
		ok "Test 子菜单进入/返回正确（menu $top_menu → $root_menu → $back_menu）"
	else
		bad "Test 子菜单状态不对（colors=${top_colors:-?}/${root_colors:-?}/${back_colors:-?}, menu=${top_menu:-?}/${root_menu:-?}/${back_menu:-?}）"
	fi

	if [ -n "$scroll_a" ] && [ -n "$scroll_b" ] && [ "$scroll_b" -gt "$scroll_a" ]; then
		ok "子菜单里 mural 继续滚动（BG3 HOFS $scroll_a → $scroll_b）"
	else
		bad "子菜单里 mural 停止滚动（BG3 HOFS ${scroll_a:-?} → ${scroll_b:-?}）"
	fi
}
