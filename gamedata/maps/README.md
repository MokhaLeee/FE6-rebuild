# contents/maps + gamedata/maps

地图相关的可编辑数据源，以及对应的 incbin 打包流程。

## 文件分工

| 路径 | 内容 |
|---|---|
| `contents/maps/MapTsa_Ch1.c` | 第 1 章地图布局（15x21 个格子） |
| `contents/maps/MapAsset01_TsaConf.c` | MapAsset01 的 1024 个 metatile 定义 + 地形 LUT |
| `contents/maps/MapTsa_Ch1.dmp` / `.dmp.lz` | 构建产物（632 / 592 字节） |
| `contents/maps/MapAsset01_TsaConf.dmp` / `.dmp.lz` | 构建产物（9216 / 5652 字节） |
| `gamedata/maps/maps.S` | 两个数据符号 + incbin |
| `gamedata/maps/MapTsa_Ch1.png` | 用 MapAsset01 离线渲染的参考图 |

`contents/maps/*.dmp` 在 `.gitignore` 里；`.o`、`.lz` 由现有规则忽略。

## MapTsa_Ch1.c：地图布局

```c
struct MapTsa_Ch1_map {
	u8 width;        /* 15 */
	u8 height;       /* 21 */
	u16 cells[315];  /* 每格 = metatile 号 * 4 */
};
```

每个数组行对应地图的一行，行尾注释是该行各格的 metatile 号。

## MapAsset01_TsaConf.c：metatile 定义

```c
struct MapAsset01_TsaConf {
	u16 tiles[1024][4];  /* 每个 metatile 的 4 个 tile 引用 */
	u8 terrain[1024];    /* 每个 metatile 的 terrain id */
};
```

`tiles` 里每一项用 `include/hardware.h` 的宏写成：

```c
/* 0 */ { TILEREF(479, 0), TILEREF(479, 0) | TILE_HFLIP,
          TILEREF(511, 0), TILEREF(511, 0) | TILE_HFLIP },
```

- `TILEREF(tile, pal)`：tile 号 0..1023、调色板组 0..4；
- `| TILE_HFLIP` / `| TILE_VFLIP`：水平 / 垂直翻转；
- 4 个引用依次是左上、右上、左下、右下。

`terrain` 是 1024 个 terrain id（见 `include/constants/terrains.h`），
决定移动消耗、地形加成等，和图形无关。

## gamedata/maps/maps.S

```asm
.section .content_data.map

.align 2, 0
.global MapTsa_Ch1
MapTsa_Ch1:
	.incbin "contents/maps/MapTsa_Ch1.dmp.lz"

.align 2, 0
.global MapAsset01_TsaConf
MapAsset01_TsaConf:
	.incbin "contents/maps/MapAsset01_TsaConf.dmp.lz"
```

## 构建

```
contents/maps/*.c
  → [CC ]  %.o: %.c
  → [OCP]  %.dmp: %.o        (objcopy -S -O binary)
  → [LZ ]  %.lz: %           (gbagfx)
  → [AS ]  gamedata/maps/maps.S (.incbin)
  → [LD ]  fe6re.gba
```

`vanilla/data/rodata_chapterinfo1.s` 里原来对 `MapTsa_Ch1` 和
`MapAsset01_TsaConf` 的 incbin 定义已移除，符号改由 `maps.S` 提供。
不需要改 Makefile。

## 来源

- `MapTsa_Ch1`：从 `fe6-base.gba` 的 `0x2474C8` 解压（LZ77，632 字节）。
- `MapAsset01_TsaConf`：`vanilla/data/mapassets/MapAsset01_TsaConf.tsa`
  的 9216 字节（8192 TSA + 1024 地形 LUT）。

两者都与原数据逐字节核对过。

## 注意

- `cells` 的值必须是 4 的倍数；低 2 位非 0 会读到错误的 metatile。
- `MapAsset01_TsaConf` 被序章、第 1/2/4/5 章等共用，改它会影响所有这些章节。
- 地形不需要单独改：由 metatile 在 LUT 里的值决定。
- 完整机制见 `docs/map-rendering.md`。
