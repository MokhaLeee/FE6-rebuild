#!/usr/bin/env bash
# 16/16: save negative test: corrupt one payload byte and expect invalid.

case_15_save_corrupt() {
	local log="$OUT/15-save-corrupt.log"
	local state case_id valid corrupt_valid

	echo "== 15 testmenu: Save Corrupt Check"

	# Save 菜单顺序：Write + Load / Write / Load / Corrupt Check / Back。
	# --probe 顺序：1 state, 2 case_id, 3 value0(valid), 4 value1(corrupt_valid)
	"$RUN" "$ROM" --quiet --frames 1400 \
		--sym "$SYM" \
		--hold 300:DOWN:5 \
		--hold 400:A:5 \
		--hold 500:DOWN:5 \
		--hold 600:A:5 \
		--hold 700:DOWN:5 \
		--hold 800:DOWN:5 \
		--hold 900:DOWN:5 \
		--hold 1000:A:5 \
		--probe "gTestMenuProbe+0x05:8" \
		--probe "gTestMenuProbe+0x07:8" \
		--probe "gTestMenuProbe+0x0C:32" \
		--probe "gTestMenuProbe+0x10:32" \
		--stats 1100 \
		--shot 1100 \
		--out "$OUT" >"$log" 2>&1

	assert_completed "$log" "Save Corrupt Check 无崩溃"

	state=$(probe_n_at "$log" 1100 1)
	case_id=$(probe_n_at "$log" 1100 2)
	valid=$(probe_n_at "$log" 1100 3)
	corrupt_valid=$(probe_n_at "$log" 1100 4)

	if [ "$state" = "3" ] && [ "$case_id" = "8" ] &&
	   [ "$valid" = "1" ] && [ "$corrupt_valid" = "0" ]; then
		ok "存档改坏一个字节后 IsSaveValid 失败（valid=$valid, corrupt=$corrupt_valid）"
	else
		bad "Save Corrupt Check 状态不对（state=${state:-?}, case=${case_id:-?}, valid=${valid:-?}, corrupt=${corrupt_valid:-?}）"
	fi
}
