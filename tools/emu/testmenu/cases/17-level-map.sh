#!/usr/bin/env bash
# 17: System -> Map Test: drive a real battle with input, then check level-up.

case_17_level_map() {
	local log="$OUT/17-level-map.log"
	local level exp case_id level_late flags promo_level arena_level

	echo "== 17 testmenu: 顶层 → Test → System → Map Test（真实按键战斗）"

	# 顶层：Start Game -> Test
	# TestRoot：Game -> System（DOWN x4, A）
	# System：Level Cap -> Map Test（DOWN, A），随后进入测试章节。
	# 进入章节后：A 选 Roy；A 打开行动菜单；A 选「攻撃」；
	# A 确认战斗预测；A 开战；之后每 60 帧 A 推进战斗/升级画面。
	# --probe 顺序：1 level, 2 exp, 3 case_id
	"$RUN" "$ROM" --quiet --frames 22000 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:DOWN:5 \
		--hold 600:DOWN:5 \
		--hold 700:DOWN:5 \
		--hold 800:DOWN:5 \
		--hold 900:A:5 \
		--hold 1000:DOWN:5 \
		--hold 1100:A:5 \
		--hold 12000:A:5 \
		--hold 12500:A:5 \
		--hold 13000:A:5 \
		--hold 13500:A:5 \
		--hold 14000:A:5 \
		--hold-every 14500:21000:60:A:4 \
		--probe "gUnitArrayBlue+0x08:8" \
		--probe "gUnitArrayBlue+0x09:8" \
		--probe "gTestMenuProbe+0x07:8" \
		--probe "gTestMenuProbe+0x0A:16" \
		--probe "gTestMenuProbe+0x14:32" \
		--probe "gTestMenuProbe+0x18:32" \
		--stats 16000 \
		--stats 20000 \
		--shot 16000 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "System → Map Test 流程无崩溃"

	level=$(probe_n_at "$log" 16000 1)
	exp=$(probe_n_at "$log" 16000 2)
	case_id=$(probe_n_at "$log" 16000 3)
	flags=$(probe_n_at "$log" 16000 4)
	promo_level=$(probe_n_at "$log" 16000 5)
	arena_level=$(probe_n_at "$log" 16000 6)
	level_late=$(probe_n_at "$log" 20000 1)

	if [ "$level" = "99" ] && [ "$exp" = "255" ] &&
	   [ "$case_id" = "10" ] && [ "$flags" = "3" ] &&
	   [ "$promo_level" = "20" ] && [ "$arena_level" = "99" ] &&
	   [ "$level_late" = "99" ]; then
		ok "真实按键战斗后升级：level=$level, exp=$exp；转职 level=$promo_level；竞技场 level=$arena_level"
	else
		bad "Map Test 未按预期（level=${level:-?}, exp=${exp:-?}, case=${case_id:-?}, flags=${flags:-?}, promo=${promo_level:-?}, arena=${arena_level:-?}, late=${level_late:-?}）"
	fi
}
