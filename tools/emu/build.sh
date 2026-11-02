#!/usr/bin/env bash
# 构建无头 GBA 测试工具（一次性，产物在 tools/emu/.build/，已 gitignore）。
#
#   ./tools/emu/build.sh              # 缺什么补什么，已构建则只重编 gbarun
#   FORCE=1 ./tools/emu/build.sh      # 强制重建 mGBA
#   ./tools/emu/build.sh clean        # 删掉整个 .build（源码 + 库 + gbarun + 测试输出）
#
# 依赖：gcc、cmake、ninja、curl、zlib、libpng、libelf
#   需要 apt 的话：sudo apt install -y build-essential cmake ninja-build curl \
#       zlib1g-dev libpng-dev libelf-dev
set -euo pipefail

HERE=$(cd "$(dirname "$0")" && pwd)
BUILD="$HERE/.build"
MGBA_VER=${MGBA_VER:-0.10.5}
MGBA_SRC="$BUILD/mgba-$MGBA_VER"
LIB="$BUILD/libmgba-static.a"

# ./tools/emu/build.sh clean —— 删掉整个 .build（mGBA 源码、核心库、gbarun、测试输出）
if [ "${1:-}" = "clean" ]; then
	if [ -d "$BUILD" ]; then
		SIZE=$(du -sh "$BUILD" | cut -f1)
		rm -rf "$BUILD"
		echo "已删除 $BUILD（释放 $SIZE）"
	else
		echo "$BUILD 不存在，无需清理"
	fi
	exit 0
fi

mkdir -p "$BUILD"

need() {
	command -v "$1" >/dev/null 2>&1 || {
		echo "缺少 $1，请先安装（见脚本头部注释）" >&2
		exit 1
	}
}
for tool in gcc cmake ninja curl; do need "$tool"; done

if [ "${FORCE:-0}" = "1" ] || [ ! -f "$LIB" ]; then
	echo "== 拉取 mGBA $MGBA_VER 源码"
	rm -rf "$MGBA_SRC" "$LIB"
	curl -fsSL -o "$BUILD/mgba.tar.gz" \
		"https://codeload.github.com/mgba-emu/mgba/tar.gz/refs/tags/$MGBA_VER"
	tar xf "$BUILD/mgba.tar.gz" -C "$BUILD"
	rm -f "$BUILD/mgba.tar.gz"

	echo "== 冒烟测试只需要核心库，关掉所有前端"
	cmake -S "$MGBA_SRC" -B "$MGBA_SRC/build" -G Ninja \
		-DCMAKE_BUILD_TYPE=Release \
		-DBUILD_QT=OFF -DBUILD_SDL=OFF -DBUILD_LIBRETRO=OFF -DBUILD_SUITE=OFF \
		-DBUILD_STATIC=ON -DUSE_FFMPEG=OFF -DUSE_MINIZIP=OFF >/dev/null
	ninja -C "$MGBA_SRC/build" -j"$(nproc)" >/dev/null
	cp "$MGBA_SRC/build/libmgba-static.a" "$LIB"
	echo "== 核心库就绪：$LIB"
fi

echo "== 编译 gbarun"
gcc -O2 -o "$BUILD/gbarun" "$HERE/gbarun.c" \
	-I"$MGBA_SRC/include" -I"$MGBA_SRC/build/include" \
	"$LIB" -lz -lpng -lm -lpthread -lGL -lelf
echo "== 完成：$BUILD/gbarun"
