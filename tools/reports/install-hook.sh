#!/usr/bin/env bash
# 安装报告审查的 pre-commit 提醒钩子（warn-only，不阻断提交）。
#
#   ./tools/reports/install-hook.sh
#   ./tools/reports/install-hook.sh --uninstall
#
# 已存在 pre-commit 时不覆盖，先备份为 pre-commit.bak。
set -uo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/../.." && pwd)
HOOKS=$(git -C "$ROOT" rev-parse --git-path hooks)
TARGET="$HOOKS/pre-commit"
SRC="$HERE/hooks/pre-commit"

case "${1:-}" in
--uninstall | -u)
	if [ -f "$TARGET" ] && grep -q 'tools/reports/review.sh' "$TARGET" 2>/dev/null; then
		rm -f "$TARGET"
		echo "已卸载 $TARGET"
	else
		echo "未发现本仓库安装的报告审查钩子：$TARGET"
	fi
	exit 0
	;;
esac

[ -d "$HOOKS" ] || mkdir -p "$HOOKS"

if [ -e "$TARGET" ]; then
	if grep -q 'tools/reports/review.sh' "$TARGET" 2>/dev/null; then
		echo "钩子已安装：$TARGET"
		exit 0
	fi
	cp "$TARGET" "$TARGET.bak"
	echo "已有 pre-commit，备份到 $TARGET.bak"
fi

cp "$SRC" "$TARGET"
chmod +x "$TARGET"
echo "已安装 $TARGET（每个自然日第一次提交前提示一次，不阻断提交）"
echo "卸载：$0 --uninstall"
