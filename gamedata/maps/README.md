# 地图数据组织

按“共享 tileset”和“单章数据”分开。

## 目录

```
contents/
├── tileset/MapAsset01/       # 共享 tileset 的源数据
│   ├── TsaConf.c             # 1024 metatile 定义 + 地形 LUT
│   ├── Img1.png / Img2.png   # tile 图集（各 512 个 8x8）
│   ├── ConfImg.png           # metatile 展开图 / 调色板源
│   └── Pal2_ConfImg.png      # 夜间调色板版本
└── maps/Chapter01/           # 第 1 章专属
    ├── MapTsa_Ch1.c          # 15x21 地图布局
    └── MapTsa_Ch1.png        # 参考渲染图

gamedata/
├── tileset/MapAsset01.S      # 共享 tileset 的 5 个符号 + incbin
├── tileset/MapAsset01_Anims.c # tile 动画数组（需链接）
├── maps/Chapter01.S          # MapTsa_Ch1 符号 + incbin
└── maps/Chapter01_MapChange.c # 地图变更（需链接）
```

## 共享 tileset：MapAsset01

被序章、第 1/2/4/5 章等共用。

| 符号 | 来源 | 说明 |
|---|---|---|
| `MapAsset01_TsaConf` | `tileset/MapAsset01/TsaConf.c` | metatile 4 个 tile 引用 + 地形 LUT |
| `MapAsset01_Img1` | `Img1.png` | tile 0..511 |
| `MapAsset01_Img2` | `Img2.png` | tile 512..1023 |
| `MapAsset01_Pal` | `ConfImg.png` 的调色板 | 10 组，取前 0x140 字节 |
| `MapAsset01_NightPal` | `Pal2_ConfImg.png` 的调色板 | 夜间版 |
| `MapAsset01_Anims` | `MapAsset01_Anims.c` | `TsImgAnim` 数组 |

改这里会影响所有使用 MapAsset01 的章节。

## 单章：Chapter01

| 符号 | 来源 | 说明 |
|---|---|---|
| `MapTsa_Ch1` | `maps/Chapter01/MapTsa_Ch1.c` | 15x21，每格 metatile 号 * 4 |
| `MapChange_Ch1` | `maps/Chapter01_MapChange.c` | 4 条变更（村庄关闭、建筑变废墟） |

加新章节时，复制一套 `contents/maps/ChapterNN/` + `gamedata/maps/ChapterNN.S`
即可；如果该章用别的 tileset，再建一套 `contents/tileset/MapAssetNN/`。

## 构建链

```
.c   -> .o -> .dmp（objcopy）-> .dmp.lz（gbagfx）
.png -> .4bpp / .gbapal（gbagfx）-> .lz
.S   -> incbin 上述产物 -> 链接
```

`vanilla/data/rodata_chapterinfo1.s` 里原来的相关符号定义都已移除，
`MapAsset01_Anims` 从 `vanilla/data/tileset/anims.h` 抽出，
`MapChange_Ch1` 从 `gameinfo/chapterinfo/map_changes.c` 抽出。
Makefile 不需要改。

## 注意

- `cells` 的值必须是 4 的倍数。
- 地形由 metatile 在 LUT 里的值决定，不需要单独改。
- 完整渲染机制见 `docs/map-rendering.md`。
