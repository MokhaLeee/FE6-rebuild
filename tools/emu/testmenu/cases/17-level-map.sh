#!/usr/bin/env bash
# 17: Test Chapter -> sortie -> Map Test: drive a real battle with input, then check level-up.

case_17_level_map() {
	local log="$OUT/17-level-map.log"
	local level exp case_id level_late flags promo_level

	echo "== 17 testmenu: Test Chapter → 出撃 → Map Test（真实按键战斗）"

	# 顶层：Start Game -> Test
	# TestRoot：Game -> Save -> Test Chapter（DOWN x2, A）
	# 准备画面：DOWN x4 到「ゲームを始める」，A 出撃，A 进地图。
	# 进入地图后：A 选 Roy；A 打开行动菜单；A 选「攻撃」；
	# A 确认战斗预测；A 开战；之后每 60 帧 A 推进战斗/升级画面。
	# --probe 顺序：1 level, 2 exp, 3 case_id, 4 flags, 5 promo_level
	"$RUN" "$ROM" --quiet --frames 30000 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:DOWN:5 \
		--hold 600:DOWN:5 \
		--hold 700:A:5 \
		--hold 10000:DOWN:5 \
		--hold 10200:DOWN:5 \
		--hold 10400:DOWN:5 \
		--hold 10600:DOWN:5 \
		--hold 10800:A:5 \
		--hold 12000:A:5 \
		--hold 16000:A:5 \
		--hold 16500:A:5 \
		--hold 17000:A:5 \
		--hold 17500:A:5 \
		--hold 18000:A:5 \
		--hold-every 18500:28000:60:A:4 \
		--probe "gUnitArrayBlue+0x08:8" \
		--probe "gUnitArrayBlue+0x09:8" \
		--probe "gTestMenuProbe+0x07:8" \
		--probe "gTestMenuProbe+0x0A:16" \
		--probe "gTestMenuProbe+0x14:32" \
		--stats 20000 \
		--stats 22000 \
		--shot 20000 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "Test Chapter → 出撃 → Map Test 流程无崩溃"

	level=$(probe_n_at "$log" 20000 1)
	exp=$(probe_n_at "$log" 20000 2)
	case_id=$(probe_n_at "$log" 20000 3)
	flags=$(probe_n_at "$log" 20000 4)
	promo_level=$(probe_n_at "$log" 20000 5)
	level_late=$(probe_n_at "$log" 22000 1)

	if [ "$level" = "99" ] && [ "$exp" = "255" ] &&
	   [ "$case_id" = "11" ] && [ "$flags" = "1" ] &&
	   [ "$promo_level" = "20" ] &&
	   [ "$level_late" = "99" ]; then
		ok "真实按键战斗后升级：level=$level, exp=$exp；转职 level=$promo_level"
	else
		bad "Map Test 未按预期（level=${level:-?}, exp=${exp:-?}, case=${case_id:-?}, flags=${flags:-?}, promo=${promo_level:-?}, late=${level_late:-?}）"
	fi
}
