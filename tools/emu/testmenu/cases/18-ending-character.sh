#!/usr/bin/env bash
# 18: top -> Test -> Ending -> Character.

case_18_ending_character() {
	local log="$OUT/18-ending-character.log"
	local menu state category case_id started credits dyad colors

	echo "== 18 testmenu: 顶层 → Test → Ending → Character"

	# TestRoot 顺序：Game / Save / Test Chapter / System / Ending / Back。
	# Ending 菜单：Character / Back。选中后进 CHAPTER_TEST、等地图稳定，
	# 补齐单位和 ending 全局状态，再跑 StartGameEnding。
	# rank 阶段必须按 A 才继续；dyad 段跑完后 value[3] 停在 9。
	# --probe 顺序：1 menu, 2 state, 3 category, 4 case_id,
	#              5 value[0]（已启动）, 6 value[1]（credit step）,
	#              7 value[3]（结束时 gEndingUid1）
	"$RUN" "$ROM" --quiet --frames 75000 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:DOWN:5 \
		--hold 600:DOWN:5 \
		--hold 700:DOWN:5 \
		--hold 800:DOWN:5 \
		--hold 900:A:5 \
		--hold 1000:A:5 \
		--hold-every 30000:70000:60:A:3 \
		--probe "gTestMenuProbe+0x04:8" \
		--probe "gTestMenuProbe+0x05:8" \
		--probe "gTestMenuProbe+0x06:8" \
		--probe "gTestMenuProbe+0x07:8" \
		--probe "gTestMenuProbe+0x0C:32" \
		--probe "gTestMenuProbe+0x10:32" \
		--probe "gTestMenuProbe+0x18:32" \
		--stats 35000 --stats 74000 \
		--shot 15000 --shot 35000 --shot 74000 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "Character Ending 流程无崩溃"

	menu=$(probe_n_at "$log" 74000 1)
	state=$(probe_n_at "$log" 74000 2)
	category=$(probe_n_at "$log" 74000 3)
	case_id=$(probe_n_at "$log" 74000 4)
	started=$(probe_n_at "$log" 74000 5)
	credits=$(probe_n_at "$log" 74000 6)
	dyad=$(probe_n_at "$log" 74000 7)
	colors=$(colors_at "$log" 74000)

	if [ "$menu" = "4" ] && [ "$state" = "3" ] &&
	   [ "$category" = "6" ] && [ "$case_id" = "12" ] &&
	   [ "$started" = "1" ] && [ "$credits" = "50" ] &&
	   [ "$dyad" = "9" ] && [ -n "$colors" ]; then
		ok "Character Ending 跑完（state=$state, category=$category, case=$case_id, credit_step=$credits, dyad_uid=$dyad, colors=$colors）"
	else
		bad "Character Ending 状态不对（menu=${menu:-?}, state=${state:-?}, category=${category:-?}, case=${case_id:-?}, started=${started:-?}, step=${credits:-?}, dyad=${dyad:-?}）"
	fi
}
