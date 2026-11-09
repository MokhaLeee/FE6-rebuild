#!/usr/bin/env bash
# 16/16: System -> Level Cap.

case_16_level_cap() {
	local log="$OUT/16-level-cap.log"
	local state flags v0 v1 v3

	echo "== 16 testmenu: 顶层 → Test → System → Level Cap"

	# 顶层：Start Game -> Test（DOWN, A）
	# TestRoot：Game -> System（DOWN x4, A）
	# System：Level Cap（A）
	# --probe 顺序：1 state, 2 flags, 3 value0(level), 4 value1(exp), 5 value3(save level)
	"$RUN" "$ROM" --quiet --frames 12000 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:DOWN:5 \
		--hold 600:DOWN:5 \
		--hold 700:DOWN:5 \
		--hold 800:DOWN:5 \
		--hold 900:A:5 \
		--hold 1100:A:5 \
		--probe "gTestMenuProbe+0x05:8" \
		--probe "gTestMenuProbe+0x0A:16" \
		--probe "gTestMenuProbe+0x0C:32" \
		--probe "gTestMenuProbe+0x10:32" \
		--probe "gTestMenuProbe+0x18:32" \
		--stats 5000 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "System → Level Cap 流程无崩溃"

	state=$(probe_n_at "$log" 5000 1)
	flags=$(probe_n_at "$log" 5000 2)
	v0=$(probe_n_at "$log" 5000 3)
	v1=$(probe_n_at "$log" 5000 4)
	v3=$(probe_n_at "$log" 5000 5)

	if [ "$state" = "3" ] && [ "$flags" = "255" ] &&
	   [ "$v0" = "99" ] && [ "$v1" = "255" ] && [ "$v3" = "99" ]; then
		ok "Level Cap 自检通过（state=$state, flags=$flags, level=$v0, exp=$v1, save_level=$v3）"
	else
		bad "Level Cap 自检失败（state=${state:-?}, flags=${flags:-?}, level=${v0:-?}, exp=${v1:-?}, save_level=${v3:-?}）"
	fi
}
