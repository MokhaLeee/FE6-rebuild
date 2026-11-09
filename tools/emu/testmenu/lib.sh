#!/usr/bin/env bash
# Shared helpers for tools/emu/testmenu-tests.sh.
# This file is sourced, not executed directly.
#
# Requires: HERE (tools/emu), ROM, SYM set by the runner before testmenu_init().

BUILD="$HERE/.build"
RUN="$BUILD/gbarun"
OUT="$BUILD/out-testmenu"

PASSES=0
FAILS=()

ok() {
	PASSES=$((PASSES + 1))
	printf '  \033[32mPASS\033[0m %s\n' "$1"
}

bad() {
	FAILS+=("$1")
	printf '  \033[31mFAIL\033[0m %s\n' "$1"
}

testmenu_init() {
	local rom=$1
	local sym=$2

	[ -x "$RUN" ] || { echo "先运行 ./tools/emu/build.sh" >&2; exit 1; }
	[ -f "$rom" ] || { echo "找不到 ROM: $rom" >&2; exit 1; }
	[ -f "$sym" ] || { echo "找不到符号表: $sym" >&2; exit 1; }

	rm -rf "$OUT"
	mkdir -p "$OUT"
}

testmenu_summary() {
	echo
	echo "== 结果：$PASSES 通过，${#FAILS[@]} 失败"
	if [ ${#FAILS[@]} -ne 0 ]; then
		printf '  - %s\n' "${FAILS[@]}"
		exit 1
	fi
	exit 0
}

# 取某个 STATS 帧的颜色数
colors_at() {
	sed -n "s/^STATS frame=$2 .*colors=\([0-9]*\).*/\1/p" "$1" | head -1
}

# 取某个 PROBE 帧的第 n 个 probe 值（按命令行 --probe 顺序）
probe_n_at() {
	local log=$1
	local frame=$2
	local n=$3

	grep "^PROBE frame=$frame " "$log" |
		sed -n "s/.*value=\(-*[0-9]*\).*/\1/p" |
		sed -n "${n}p"
}

assert_completed() {
	local log=$1
	local what=$2

	if grep -q '^CRASH' "$log"; then
		bad "$what（$(grep -m1 '^CRASH' "$log")）"
	elif ! grep -q '^DONE' "$log"; then
		bad "$what（未跑完：$(tail -1 "$log")）"
	else
		ok "$what"
	fi
}
