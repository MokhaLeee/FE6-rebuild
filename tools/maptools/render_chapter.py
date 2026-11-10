#!/usr/bin/env python3
"""把一章的地图数据渲染成 PNG（离线预览，不依赖 ROM）。

用法:
    python3 tools/maptools/render_chapter.py \
        --map contents/maps/Chapter01/MapTsa_Ch1.dmp \
        --tileset contents/tileset/MapAsset01 \
        --out /tmp/ch1.png [--scale 2]

--tileset 目录需要包含（由 .c/.png 源生成）:
    TsaConf.dmp   metatile 定义 + 地形 LUT
    Img1.png      tile 图集前 512
    Img2.png      tile 图集后 512
    ConfImg.png   8bpp 调色板源 + metatile 展开参考
"""

import argparse
import struct

from PIL import Image


def render(map_path, tileset_dir, out_path, scale=1):
    raw = open(map_path, "rb").read()
    w, h = raw[0], raw[1]
    cells = struct.unpack("<%dH" % (w * h), raw[2:])

    tsa = open(tileset_dir + "/TsaConf.dmp", "rb").read()
    refs = struct.unpack("<4096H", tsa[:8192])

    conf = Image.open(tileset_dir + "/ConfImg.png").convert("P")
    pal = conf.getpalette()[: 256 * 3]
    im1 = Image.open(tileset_dir + "/Img1.png").convert("P")
    im2 = Image.open(tileset_dir + "/Img2.png").convert("P")
    p1, p2 = im1.load(), im2.load()

    canvas = Image.new("P", (w * 16, h * 16), 0)
    canvas.putpalette(pal)
    c = canvas.load()

    for y in range(h):
        for x in range(w):
            m = cells[y * w + x] >> 2
            for lane in range(4):
                v = refs[m * 4 + lane]
                tile = v & 0x3FF
                palid = (v >> 12) & 0xF
                hf = bool(v & 0x400)
                vf = bool(v & 0x800)
                src = p1 if tile < 512 else p2
                tt = tile if tile < 512 else tile - 512
                sx, sy = (tt % 32) * 8, (tt // 32) * 8
                ox = x * 16 + (lane % 2) * 8
                oy = y * 16 + (lane // 2) * 8
                for yy in range(8):
                    for xx in range(8):
                        ix = xx if not hf else 7 - xx
                        iy = yy if not vf else 7 - yy
                        c[ox + xx, oy + yy] = (palid << 4) | src[sx + ix, sy + iy]

    img = canvas.convert("RGB")
    if scale > 1:
        img = img.resize((img.width * scale, img.height * scale), Image.NEAREST)
    img.save(out_path)
    print("rendered %s: %dx%d -> %s (%dx%d)" % (map_path, w, h, out_path, img.width, img.height))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--map", required=True, help="MapTsa_*.dmp 路径")
    ap.add_argument("--tileset", required=True, help="tileset 目录（含 TsaConf.dmp / Img1.png / Img2.png / ConfImg.png）")
    ap.add_argument("--out", required=True, help="输出 PNG 路径")
    ap.add_argument("--scale", type=int, default=1)
    args = ap.parse_args()
    render(args.map, args.tileset, args.out, args.scale)


if __name__ == "__main__":
    main()
