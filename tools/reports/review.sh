#!/usr/bin/env bash
# 报告对齐审查。
#
# 核对「基准日最后一个非报告提交」与日报 / 周报 / 月报里的 `覆盖提交` 锚点。
# 没有提交的日子不要求日报，没有提交的周 / 月不要求周报 / 月报。
#
#   ./tools/reports/review.sh                  # 审查昨天
#   ./tools/reports/review.sh --date 2026-11-16
#   ./tools/reports/review.sh --log            # 结论追加到 review-log.md
#   ./tools/reports/review.sh --quiet          # 只输出失败项（hook 用）
#   ./tools/reports/review.sh --no-backlog     # 不检查历史漏报
#
# 退出码：0 通过；1 有不一致；2 用法或环境错误。
set -uo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
REPORTS="$ROOT/docs/reports"
export TZ=Asia/Shanghai

DAY=""
DO_LOG=0
QUIET=0
BACKLOG=1

usage() { sed -n '2,13p' "$0" | sed 's/^# \{0,1\}//'; }

while [ $# -gt 0 ]; do
	case "$1" in
	--date) DAY=${2:-}; shift 2 ;;
	--log) DO_LOG=1; shift ;;
	--quiet | -q) QUIET=1; shift ;;
	--no-backlog) BACKLOG=0; shift ;;
	-h | --help) usage; exit 0 ;;
	*) echo "unknown option: $1" >&2; exit 2 ;;
	esac
done

cd "$ROOT" || exit 2
git rev-parse --git-dir >/dev/null 2>&1 || {
	echo "not a git repository: $ROOT" >&2
	exit 2
}

TODAY=$(date +%F)
[ -n "$DAY" ] || DAY=$(date -d yesterday +%F)
case "$DAY" in
[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]) ;;
*) echo "bad --date: $DAY (want YYYY-MM-DD)" >&2; exit 2 ;;
esac
date -d "$DAY" >/dev/null 2>&1 || {
	echo "bad --date: $DAY" >&2
	exit 2
}

EXCL=":(exclude)docs/reports"
EPOCH=$(grep -vE '^[[:space:]]*(#|$)' "$REPORTS/epoch.txt" 2>/dev/null | head -1 | tr -d '[:space:]')
[ -n "$EPOCH" ] || EPOCH=1970-01-01

DOW=$(date -d "$DAY" +%u)
WEEK_START=$(date -d "$DAY -$((DOW - 1)) days" +%F)
WEEK_END=$(date -d "$WEEK_START +6 days" +%F)
WEEK=$(date -d "$WEEK_START" +%G-W%V)
MONTH=$(date -d "$DAY" +%Y-%m)
MONTH_START=$(date -d "$MONTH-01" +%F)
MONTH_END=$(date -d "$MONTH_START +1 month -1 day" +%F)

FAILS=0
NOTES=()

note() { NOTES+=("$*"); }
fail() {
	FAILS=$((FAILS + 1))
	NOTES+=("$*")
}

last_in() {
	git log -1 --format=%H --since="$1 00:00:00" --until="$2 23:59:59" -- . "$EXCL" 2>/dev/null
}

count_in() {
	local n
	n=$(git rev-list --count --since="$1 00:00:00" --until="$2 23:59:59" -- . "$EXCL" 2>/dev/null)
	printf '%s' "${n:-0}"
}

anchor_of() {
	local f=$1 v
	[ -f "$f" ] || return 1
	v=$(grep -m1 -E '^覆盖提交[[:space:]]*[:：]' "$f" | sed -E 's/^[^:：]*[:：][[:space:]]*//')
	v=$(printf '%s' "$v" | sed -E 's/[`[:space:]]//g')
	[ -n "$v" ] || return 1
	v=$(git rev-parse --verify -q "$v^{commit}" 2>/dev/null) || return 1
	printf '%s' "$v"
}

short() { git rev-parse --short "$1" 2>/dev/null; }
is_anc() { git merge-base --is-ancestor "$1" "$2" 2>/dev/null; }
rel() { printf '%s' "${1#"$ROOT"/}"; }

# check_report <类别> <文件> <目标提交> <exact|cover> <required:1|0>
# required=0 表示周期尚未结束：所有结论降级为提示，不计失败。
check_report() {
	local kind=$1 file=$2 target=$3 mode=$4 required=$5
	local anchor r

	r=$(rel "$file")

	report() {
		if [ "$required" = 1 ]; then
			fail "[!!] $kind $r：$1"
		else
			note "[..] $kind $r：$1（周期未结束，暂不判错）"
		fi
	}

	if [ ! -f "$file" ]; then
		if [ "$required" = 1 ]; then
			fail "[!!] $kind $r：缺文件（周期已结束且该周期有提交）"
		else
			note "[..] $kind $r：尚未生成（周期未结束，暂不要求）"
		fi
		return
	fi

	if ! anchor=$(anchor_of "$file"); then
		report "没有可用的「覆盖提交」锚点"
		return
	fi

	if [ "$anchor" = "$target" ]; then
		note "[OK] $kind $r：锚点 $(short "$anchor") 与 $(short "$target") 一致"
		return
	fi

	if is_anc "$target" "$anchor"; then
		if [ "$mode" = exact ]; then
			report "锚点 $(short "$anchor") 晚于 $(short "$target")，收录了更晚的提交"
		else
			note "[OK] $kind $r：锚点 $(short "$anchor") 已覆盖 $(short "$target")"
		fi
		return
	fi

	if is_anc "$anchor" "$target"; then
		local n
		n=$(git rev-list --count "$anchor..$target" -- . "$EXCL" 2>/dev/null)
		report "锚点 $(short "$anchor") 落后 $(short "$target")，${n:-?} 个提交未收录"
		return
	fi

	report "锚点 $(short "$anchor") 与 $(short "$target") 不在同一历史线上"
}

emit() {
	local line
	for line in "${NOTES[@]}"; do
		if [ "$QUIET" = 1 ]; then
			case "$line" in "[!!]"*) printf '  %s\n' "$line" ;; esac
		else
			printf '  %s\n' "$line"
		fi
	done
}

echo "报告对齐审查 · 基准日 $DAY（Asia/Shanghai）"
echo

if [[ "$DAY" < "$EPOCH" ]]; then
	echo "基准日早于制度生效日 $EPOCH，跳过。"
	if [ "$DO_LOG" = 1 ]; then
		printf '\n## %s %s · 基准日 %s\n\n- 结论：跳过（基准日早于生效日 %s）\n' \
			"$(date +%F)" "$(date +%H:%M)" "$DAY" "$EPOCH" >>"$REPORTS/review-log.md"
	fi
	exit 0
fi

DAY_DONE=0
[ "$DAY" \< "$TODAY" ] && DAY_DONE=1

DAY_LAST=$(last_in "$DAY" "$DAY")
DAY_N=$(count_in "$DAY" "$DAY")
if [ -z "$DAY_LAST" ]; then
	note "[--] 日报 daily/$DAY.md：当天没有非报告提交，不需要日报"
else
	check_report "日报" "$REPORTS/daily/$DAY.md" "$DAY_LAST" exact "$DAY_DONE"
fi

WEEK_LAST=$(last_in "$WEEK_START" "$WEEK_END")
WEEK_N=$(count_in "$WEEK_START" "$WEEK_END")
WEEK_DONE=0
[ "$WEEK_END" \< "$TODAY" ] && WEEK_DONE=1
if [ -z "$WEEK_LAST" ]; then
	note "[--] 周报 weekly/$WEEK.md：该周（$WEEK_START ~ $WEEK_END）没有非报告提交，不需要周报"
else
	check_report "周报" "$REPORTS/weekly/$WEEK.md" "$WEEK_LAST" cover "$WEEK_DONE"
fi

MONTH_LAST=$(last_in "$MONTH_START" "$MONTH_END")
MONTH_N=$(count_in "$MONTH_START" "$MONTH_END")
MONTH_DONE=0
[ "$MONTH_END" \< "$TODAY" ] && MONTH_DONE=1
if [ -z "$MONTH_LAST" ]; then
	note "[--] 月报 monthly/$MONTH.md：该月没有非报告提交，不需要月报"
else
	check_report "月报" "$REPORTS/monthly/$MONTH.md" "$MONTH_LAST" cover "$MONTH_DONE"
fi

# 历史漏报：已结束、有提交、但缺报告的周期。
if [ "$BACKLOG" = 1 ]; then
	DAYS=$(git log --format=%cs --since="$EPOCH 00:00:00" --until="$DAY 23:59:59" -- . "$EXCL" 2>/dev/null |
		sort -u)

	MISS_DAYS=()
	for d in $DAYS; do
		[ "$d" = "$DAY" ] && continue
		[ -f "$REPORTS/daily/$d.md" ] || MISS_DAYS+=("$d")
	done
	if [ ${#MISS_DAYS[@]} -gt 0 ]; then
		shown=$(printf '%s\n' "${MISS_DAYS[@]:0:10}" | tr '\n' ' ')
		extra=$((${#MISS_DAYS[@]} - 10))
		[ "$extra" -lt 0 ] && extra=0
		line="[!!] 日报缺失 ${#MISS_DAYS[@]} 天：$shown"
		[ "$extra" -gt 0 ] && line="$line…等 $extra 天"
		fail "$line"
	fi

	MISS_WEEKS=()
	for d in $DAYS; do
		dow=$(date -d "$d" +%u)
		ws=$(date -d "$d -$((dow - 1)) days" +%F)
		we=$(date -d "$ws +6 days" +%F)
		[[ "$we" < "$TODAY" ]] || continue
		w=$(date -d "$ws" +%G-W%V)
		case " ${MISS_WEEKS[*]-} " in *" $w "*) continue ;; esac
		[ -f "$REPORTS/weekly/$w.md" ] || MISS_WEEKS+=("$w")
	done
	[ ${#MISS_WEEKS[@]} -gt 0 ] &&
		fail "[!!] 周报缺失 ${#MISS_WEEKS[@]} 周：${MISS_WEEKS[*]}"

	MISS_MONTHS=()
	for d in $DAYS; do
		m=${d%-*}
		me=$(date -d "$m-01 +1 month -1 day" +%F 2>/dev/null)
		[[ "$me" < "$TODAY" ]] || continue
		case " ${MISS_MONTHS[*]-} " in *" $m "*) continue ;; esac
		[ -f "$REPORTS/monthly/$m.md" ] || MISS_MONTHS+=("$m")
	done
	[ ${#MISS_MONTHS[@]} -gt 0 ] &&
		fail "[!!] 月报缺失 ${#MISS_MONTHS[@]} 个月：${MISS_MONTHS[*]}"
fi

emit
echo

if [ "$FAILS" -gt 0 ]; then
	echo "结论：不一致（$FAILS 项），需要补齐报告或更新锚点。"
	echo "      写锚点：./tools/reports/stamp.sh <daily|weekly|monthly|all> [周期]"
	RC=1
else
	echo "结论：通过，报告与提交一致。"
	RC=0
fi

if [ "$DO_LOG" = 1 ]; then
	{
		printf '\n## %s %s · 基准日 %s\n\n' "$(date +%F)" "$(date +%H:%M)" "$DAY"
		printf -- '- 当日提交 %s 个，最后 %s\n' "$DAY_N" "${DAY_LAST:-无}"
		printf -- '- 结论：%s\n' "$([ "$RC" = 0 ] && echo 通过 || echo "不一致（$FAILS 项）")"
		for line in "${NOTES[@]}"; do printf -- '- %s\n' "$line"; done
	} >>"$REPORTS/review-log.md"
fi

exit "$RC"
