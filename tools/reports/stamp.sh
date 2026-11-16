#!/usr/bin/env bash
# 给报告写「覆盖提交」锚点。
#
#   ./tools/reports/stamp.sh daily 2026-11-16        # 用 HEAD 上最近的非报告提交
#   ./tools/reports/stamp.sh daily 2026-11-16 <hash>
#   ./tools/reports/stamp.sh weekly 2026-W47
#   ./tools/reports/stamp.sh monthly 2026-11
#   ./tools/reports/stamp.sh all                     # 三份都按今天/此刻写
#
# 周期省略时取今天；commit 省略时取 HEAD 上最近一个非 docs/reports/ 提交。
# 文件不存在时按 templates/ 下的模板生成骨架。
set -uo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
REPORTS="$ROOT/docs/reports"
export TZ=Asia/Shanghai

usage() { sed -n '2,11p' "$0" | sed 's/^# \{0,1\}//'; }

KIND=${1:-daily}
PERIOD=${2:-}
COMMIT=${3:-}

case "$KIND" in
daily | weekly | monthly | all) ;;
-h | --help) usage; exit 0 ;;
*) echo "bad kind: $KIND (daily|weekly|monthly|all)" >&2; exit 2 ;;
esac

cd "$ROOT" || exit 2

if [ -n "$COMMIT" ]; then
	FULL=$(git rev-parse --verify -q "$COMMIT^{commit}") || {
		echo "bad commit: $COMMIT" >&2
		exit 2
	}
else
	FULL=$(git log -1 --format=%H -- . ':(exclude)docs/reports' 2>/dev/null)
	[ -n "$FULL" ] || {
		echo "仓库里还没有非 docs/reports/ 的提交" >&2
		exit 2
	}
fi

def_period() {
	case "$1" in
	daily) date +%F ;;
	weekly) date +%G-W%V ;;
	monthly) date +%Y-%m ;;
	esac
}

report_path() {
	case "$1" in
	daily) printf '%s/daily/%s.md' "$REPORTS" "$2" ;;
	weekly) printf '%s/weekly/%s.md' "$REPORTS" "$2" ;;
	monthly) printf '%s/monthly/%s.md' "$REPORTS" "$2" ;;
	esac
}

# 报告的显示名与标题。weekly 额外算出 MM-DD ~ MM-DD。
title_of() {
	local kind=$1 period=$2 name
	case "$kind" in
	daily) name=日报 ;;
	weekly) name=周报 ;;
	monthly) name=月报 ;;
	esac
	if [ "$kind" = weekly ]; then
		local y w start end
		y=${period%%-W*}
		w=${period##*-W}
		while [ "${w#0}" != "$w" ] && [ ${#w} -gt 1 ]; do w=${w#0}; done
		start=$(date -d "$y-01-04 -$(($(date -d "$y-01-04" +%u) - 1)) days +$((7 * (w - 1))) days" +%m-%d 2>/dev/null)
		[ -n "$start" ] && end=$(date -d "$y-01-04 -$(($(date -d "$y-01-04" +%u) - 1)) days +$((7 * (w - 1) + 6)) days" +%m-%d 2>/dev/null)
		[ -n "$start" ] && [ -n "$end" ] && printf '%s %s（%s ~ %s）' "$name" "$period" "$start" "$end" && return
	fi
	printf '%s %s' "$name" "$period"
}

# 缺文件时按模板生成骨架（只替换第一行的标题占位）。
create_from_template() {
	local kind=$1 period=$2 file=$3 tpl title
	tpl="$REPORTS/templates/$kind.md"
	title=$(title_of "$kind" "$period")
	mkdir -p "$(dirname "$file")"
	if [ -f "$tpl" ]; then
		awk -v t="# $title" 'NR == 1 { print t; next } { print }' "$tpl" >"$file"
	else
		printf '# %s\n\n' "$title" >"$file"
	fi
}

# 写入或替换锚点两行。
set_anchor() {
	local file=$1 full=$2 now=$3 tmp
	tmp=$(mktemp) || return 1
	if grep -qE '^覆盖提交[[:space:]]*[:：]' "$file"; then
		awk -v full="$full" -v now="$now" '
			function stop(){}
			/^覆盖提交[[:space:]]*[:：]/ { print "覆盖提交: " full; next }
			/^记录时间[[:space:]]*[:：]/ { print "记录时间: " now; next }
			{ print }
		' "$file" >"$tmp"
		if ! grep -qE '^记录时间[[:space:]]*[:：]' "$tmp"; then
			awk -v now="$now" '
				/^覆盖提交[[:space:]]*[:：]/ { print; print "记录时间: " now; next }
				{ print }
			' "$tmp" >"$tmp.2" && mv "$tmp.2" "$tmp"
		fi
	else
		awk -v full="$full" -v now="$now" '
			NR == 1 && /^# / {
				print
				print ""
				print "覆盖提交: " full
				print "记录时间: " now
				done = 1
				next
			}
			NR == 1 && !done {
				print "覆盖提交: " full
				print "记录时间: " now
				print ""
				done = 1
			}
			{ print }
		' "$file" >"$tmp"
	fi
	mv "$tmp" "$file"
}

NOW=$(date '+%F %H:%M %z')
RC=0

stamp_one() {
	local kind=$1 period=$2 file
	period=${period:-$(def_period "$kind")}
	file=$(report_path "$kind" "$period")
	if [ ! -f "$file" ]; then
		create_from_template "$kind" "$period" "$file" || return 1
		echo "created $(printf '%s' "${file#"$ROOT"/}")"
	fi
	set_anchor "$file" "$FULL" "$NOW" || return 1
	echo "stamped $(printf '%s' "${file#"$ROOT"/}") 覆盖提交: $(git rev-parse --short "$FULL")"
}

if [ "$KIND" = all ]; then
	for k in daily weekly monthly; do
		stamp_one "$k" "" || RC=1
	done
else
	stamp_one "$KIND" "$PERIOD" || RC=1
fi

exit "$RC"
