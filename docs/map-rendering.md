# 章节地图：数据组织与渲染管线

本文讲清楚三件事：地图数据是怎么组织进 ROM 的、运行时怎么变成屏幕上的
一张图、以及想改地图时应该动哪一层。示例数值全部来自序章（Chapter 0），
其余章节只是尺寸不同。

> 阅读前提：GBA BG 的基本概念——8x8 像素的 tile、256 色的 4bpp 图块、
> BG 控制器（BGxCNT）决定字符基址、屏幕块和优先级。

## 0. 一句话总结

一张章节地图 = **一张 1024 个 16x16 metatile 的 8bpp 大图**，被拆成
*4bpp tile 图集*（32 KB）+ *TSA 定义*（8 KB）+ *地形 LUT*（1 KB）；
章节数据本身只存"每一格用 1024 个 metatile 里的哪一个"。
运行时把每一格展开成 2x2 个 8x8 tile 写进 BG3 的 tilemap，
VBlank 时整块拷进 VRAM。

## 1. 资源分层

### 1.1 完整图：ConfImg（源图）

`vanilla/data/mapassets/MapAsset01_ConfImg.png`

- 512x512 像素，8bpp（P 模式 256 色）。
- 按 32x32 格排列，每格 16x16 像素，**一格就是一个 metatile**，
  共 1024 个，正好对应 TSA 里的 1024 条定义。
- 像素索引不是直接的 4bpp 索引，而是 **`(调色板组 << 4) | 4bpp 索引`**。
  这样一张图里可以同时放下 16 组调色板的内容。
- 已逐像素验证：用 TSA + Img1 + Img2 按这个公式展开，与 ConfImg
  **262144 个像素零差异**。

这张图就是 map.md 说的"完整的地图图片"：8bpp 512x512 要 256 KB，
GBA 内存放不下，所以必须拆。

### 1.2 tile 图集：Img1 / Img2

`MapAsset01_Img1.png`、`MapAsset01_Img2.png`

- 各 256x128 像素 = 32x16 个 8x8 tile = 每张 **512 个 tile**，共 1024 个。
- 4bpp（每 tile 32 字节，一张 16 KB）。
- 运行时分别解压到 VRAM `0x8000` 和 `0xC000`：

  ```c
  Decompress(gpChapterAssets[info->asset_img_a],
             (void *) BG_VRAM + CHR_SIZE * BGCHR_TILESET_A);  /* 0x400 tile = 0x8000 */
  Decompress(gpChapterAssets[info->asset_img_b],
             (void *) BG_VRAM + CHR_SIZE * BGCHR_TILESET_B);  /* 0x600 tile = 0xC000 */
  ```

- TSA 里的 tile 号 0..1023 是**相对 tileset 起点**的编号：
  0..511 落在 Img1，512..1023 落在 Img2。
- 完整图有 4096 个 tile 位置，但只有 1024 个唯一 tile——其余靠
  **复用 + 水平/垂直翻转** 拼出来（TSA 里实测 597 个 hflip、512 个 vflip）。

### 1.3 metatile 定义：TsaConf（TSA + 地形 LUT）

`MapAsset01_TsaConf.tsa`，固定 9216 字节：

| 偏移 | 大小 | 内容 |
|---|---|---|
| 0x0000 | 8192 B | TSA：1024 个 metatile x 4 个 u16 tile 引用 |
| 0x2000 | 1024 B | 地形 LUT：每个 metatile 一个字节，值是 terrain id |

TSA 中每个 u16 的位域（GBA screen entry 格式）：

```
bit  0- 9   tile 号（相对 tileset 起点，0..1023）
bit 10     水平翻转
bit 11     垂直翻转
bit 12-15  调色板组（TSA 里基本是 0..4，运行时再加 BGPAL_TILESET）
```

一个 metatile 的 4 个引用按 **左上、右上、左下、右下** 排列。

C 侧布局（`src/Common/mapwork/map.c:44`）：

```c
static u16 EWRAM_DATA sTilesetInfo[TILESET_METATILES*4 + (TILESET_METATILES+1)/2];

u8 * CONST_DATA gMetatilesTerrainLut = (u8 *) &sTilesetInfo[TILESET_METATILES*4];
/* 即 sTilesetInfo 偏移 0x1000 个 u16 = 字节偏移 0x2000 */
```

### 1.4 地图数据：MapTsa

`MapTsa_Chapter0.tsa`（ROM 里是它的 LZ77 压缩版）：

```
偏移 0x00: u8 width
偏移 0x01: u8 height
偏移 0x02: u16 cells[width * height]   /* 每格 = metatile 号 * 4 */
```

- 序章 27x10 = 542 字节（2 + 270 * 2），实测与文件大小完全吻合。
- 值恒为 `metatile * 4`，低 2 位固定 0。`RefreshTerrainMap` 用
  `>> 2` 取 metatile 号。低 2 位在正作里没有 flip 语义，别自己发明。
- 地图格 16x16 像素，所以地图像素尺寸 = `width*16 x height*16`。

### 1.5 调色板

```c
ApplyPalettes(gpChapterAssets[info->asset_pal], BGPAL_TILESET, 10);
```

- 一次加载 **10 组 x 16 色**到 BG 调色板 6..15。
- 约定：组 0..4 是正常配色，组 5..9 是雾/夜配色；
  有雾时 `PutMapMetatile` 用 `BGPAL_TILESET + 5`（11），
  于是 metatile 里的组号 0..4 变成 11..15。
- 所以 TSA 里的调色板组号只能是 0..4，写 5 以上会越界。

### 1.6 章节表与资源复用

`struct ChapterInfo`（`include/unknown_types.h:63`）里和地图相关的字段：

| 字段 | 含义 |
|---|---|
| `asset_img_a` / `asset_img_b` | 两张 tile 图集 |
| `asset_pal` | 10 组调色板 |
| `asset_tileset` | TsaConf（TSA + 地形 LUT） |
| `asset_map` | 本章地图数据（MapTsa） |
| `asset_img_anims` / `asset_pal_anims` | tile / 调色板动画 |
| `asset_map_changes` | 地图变更表 |

都是 `gpChapterAssets[]` 的下标，真正的指针在
`gameinfo/chapterinfo/chapterinfo_assets.c`。

**注意复用**：tileset 是跨章节共用的。例如序章、第 1、2、4、5 章都用
`PLIST_MAPASSET1_*`；改 tileset 图形会同时影响这些章。只改
`asset_map` 才是"只动这一章"。

### 1.7 地图变更（MapChange）

`struct MapChangeInfo`（`include/unknown_types.h:116`）：

```c
struct MapChangeInfo {
    /* 00 */ i8 id;
    /* 01 */ u8 x, y, width, height;
    /* 05 */ // pad
    /* 08 */ u16 const * metatiles;
};
```

- 一张变更表 = 一串 `MapChangeInfo`，每条描述"把 (x,y) 起 w x h 的区域
  的 metatile 换成 metatiles[] 里的值"（值同样是 `metatile * 4`）。
- `ApplyEnabledMapChanges()` 在初始化时把已启用的变更写进 `gMapMetatiles`。
- 因为 `RefreshTerrainMap()` 在它之后调用，**变更后的地形会自动跟着变**。
- 城门打开、村庄被毁之类的地图变化都走这条路。

## 2. 内存布局

`src/Common/mapwork/map.c` 的 EWRAM/IWRAM 布局：

| 符号 | 大小 | 作用 |
|---|---|---|
| `gMapBuf` | `u16[1976]` | 解压后的原始地图（w,h + 格子） |
| `sTilesetInfo` | 9216 B | TSA + 地形 LUT |
| `sMapMetatiles` | `u16[1976]` | 地图每格的 metatile 号（可变） |
| `sMapTerrainData` | `u8[1976]` | 每格地形（由 LUT 生成） |
| `sMapMovementData` | `u8[1976]` | 移动消耗 |
| `sMapUnitData` | `u8[1976]` | 每格站了哪个单位 |
| `sMapFogData` / `sMapHiddenData` / `sMapRangeData` / `sMapOtherData` | 各 `u8[1976]` | 雾、隐藏、攻击范围等 |

### 2.1 为什么是 1976

`MapInit` 左右各留 1 格、上下各留 2 格边界，数组实际按 `(w+2) x (h+4)` 分配，
外加 `(h+4)` 个行指针：

```
(h+4) * 4  +  (w+2) * (h+4) <= 1976
```

游戏里最大的地图是第 24 章的 32x48：

```
(48+4)*4 + (32+2)*(48+4) = 208 + 1768 = 1976   /* 正好用满 */
```

所以 **地图尺寸上限就是 32x48**（等价地，`(w+2)*(h+4) <= 1768`）。
`MapInit` 里 `width += 2` 后 `*rowsOut = sInitializingMap + 2`，让
`gMapTerrain[-2]` 之类的负下标也安全。

## 3. 初始化流程

入口 `InitMapForChapter(chapter)`（`src/Common/mapwork/map.c:49`），
由 `vanilla/chapter.c` 在进章时调用。

```
InitMapForChapter(chapter)
├── UnpackRawMap(gMapBuf, chapter)
│     ├── Decompress(GetChapterMap(chapter), gMapBuf)   /* LZ77 */
│     ├── gMapSize = (buf[0], buf[1])
│     ├── Decompress(asset_tileset, sTilesetInfo)       /* TSA + LUT */
│     └── gBmSt.camera_max = map_size*16 - 240/160
├── ApplyChapterMapGraphics(chapter)
│     ├── Decompress(asset_img_a -> VRAM 0x8000)
│     ├── Decompress(asset_img_b -> VRAM 0xC000)        /* 可空 */
│     └── ApplyPalettes(asset_pal, 6, 10)
├── MapInit(...) x7                                     /* 各层行指针 + 清空 */
├── InitMetatilesMap()
│     ├── 跳过 2 字节头
│     ├── 把 gMapBuf 的 270 个 u16 拷进 gMapMetatiles
│     └── 最后一行清零（y 先 ++ 再 -- 的怪写法）
├── ApplyEnabledMapChanges()
├── RefreshTerrainMap()
│     └── gMapTerrain[y][x] = gMetatilesTerrainLut[gMapMetatiles[y][x] >> 2]
└── if chapter == CHAPTER_14X: MapSpawnWaterTileChanges()
```

### 3.1 压缩格式

`Decompress` 按源数据首字节的高 4 位分派解压器
（`0x08013CA4` 反汇编可见查表逻辑）。地图资源都是 `0x10`，即 LZ77：

```
byte 0     0x10
byte 1-3   解压后大小（24 位小端）
byte 4...  flag 字节 + token 流
```

**flag 位序（容易记反）**：

- flag 的 1 个位对应 1 个 token，从 bit7 到 bit0。
- **bit = 0 → 字面量**，后跟 1 字节。
- **bit = 1 → 回引**，后跟 2 字节：`length = (b0>>4)+3`，
  `distance = ((b0&0xF)<<8 | b1) + 1`，从输出缓冲往前复制。

`tools/gbagfx/lz.c` 的 `LZDecompress` 和 `LZCompress` 就是这套格式，
构建规则 `%.lz: %` 直接调用它。

### 3.2 InitMetatilesMap 的两个坑

```c
gMapSize.y++;                 /* 先加一 */
tiles = gMapBuf; tiles++;     /* 跳过 2 字节头 */
it = (u16 *)(gMapMetatiles + gMapSize.y);  /* 行指针区之后才是格子数据 */
...
gMapSize.y--;                 /* 再加回来 */
```

- 第 0 行是"边界的边界"，写 tilemap 时会访问 `y-1`、`x-1` 这种负坐标。
- 最后把"多出来的那一行"清零，防止相机贴地图下边缘时读到脏数据。

## 4. 渲染

### 4.1 PutMapMetatile：核心只有 6 行

```c
void PutMapMetatile(u16 * tm, int x_tm, int y_tm, int x, int y)
{
    u16 *out = tm + y_tm * 0x40 + x_tm * 2;
    u16 *tiles = sTilesetInfo + gMapMetatiles[y][x];

    u16 tileref = TILEREF(0, gMapFog[y][x] ? BGPAL_TILESET : BGPAL_TILESET + 5);

    out[TM_OFFSET(0, 0)] = tileref + *tiles++;
    out[TM_OFFSET(1, 0)] = tileref + *tiles++;
    out[TM_OFFSET(0, 1)] = tileref + *tiles++;
    out[TM_OFFSET(1, 1)] = tileref + *tiles++;
}
```

拆开看：

- `tm` 是 32x32 的 tilemap（`gBg3Tm[0x400]`），`TM_OFFSET(x,y) = (y<<5)+x`。
- `y_tm*0x40 + x_tm*2`：一行 32 个 tile = 64 字节偏移；一个 metatile 宽 2 个
  tile。`x_tm/y_tm` 是 **tilemap 内的格子坐标**（0..15 / 0..9），
  与 `x/y`（地图格子坐标）不同——后者用来查 metatile。
- `gMapMetatiles[y][x]` 已经是 `metatile*4`，所以 `sTilesetInfo + 值`
  正好指向这个 metatile 的 4 个 tile 引用。
- `TILEREF(chr, pal) = chr + (pal<<12)`，`tileref` 只有调色板位，
  tile 号来自 TSA 条目本身。
- 加雾时调色板组 +5。

### 4.2 一个具体例子：序章 (0,0)

1. `MapTsa_Chapter0.tsa` 第一个格子 = `0x0098` = 152 = `38 * 4`。
2. 所以 `gMapMetatiles[0][0] = 152`，metatile 号 38。
3. `sTilesetInfo + 152` 读到 4 个 u16：`2C4F 284A 204A 204F`。

   | lane | 值 | tile | 调色板组 | hflip | vflip | 屏幕位置 |
   |---|---|---|---|---|---|---|
   | 0 | 0x2C4F | 0x04F=79 | 2 | 是 | 是 | 左上 |
   | 1 | 0x284A | 0x04A=74 | 2 | 否 | 是 | 右上 |
   | 2 | 0x204A | 0x04A=74 | 2 | 否 | 否 | 左下 |
   | 3 | 0x204F | 0x04F=79 | 2 | 否 | 否 | 右下 |

4. 无雾、调色板组 6：`tileref = 0x6000`。
   屏幕左上 8x8 的 tilemap 项 = `0x6000 + 0x2C4F = 0x8C4F`
   → tile 79、调色板 8、hflip+vflip。
5. 硬件去 VRAM `0x8000 + 79*32 = 0x89E0` 取 32 字节画出这个 8x8。

### 4.3 RenderMap 与相机

```c
gBmSt.map_render_anchor = camera >> 4;     /* 当前屏幕左上角对应的地图格 */
for (iy = 9; iy >= 0; --iy)
    for (ix = 14; ix >= 0; --ix)
        PutMapMetatile(gBg3Tm, ix, iy, anchor.x + ix, anchor.y + iy);
```

- 屏幕 240x160 = **15x10 个 metatile**（多出的 1 行/列是给滚动预留的）。
- `SetBgOffset(3, camera.x - anchor.x*16, ...)` 用 0..15 的亚像素偏移做平滑滚动。
- `camera_max = 地图像素尺寸 - 屏幕尺寸`，相机不会滚出地图。

### 4.4 增量渲染

`RenderMap` 只在换章/开局时整体刷一次。之后每帧 `UpdateRenderMap`：

- 相机 x 每跨过一个 16 像素边界，就补一列（`RenderMapColumn`）；
- 相机 y 同理补一行（`RenderMapLine`）；
- tilemap 坐标用 `& 0xF` 环绕，因为 32x32 的 tilemap 比屏幕大，
  滚动时是"环形缓冲"，不需要整屏重画。

### 4.5 从 EWRAM 到 VRAM

`PutMapMetatile` 写的是 **EWRAM 里的 `gBg3Tm` 副本**，不是 VRAM。
`RenderMap` 末尾 `EnableBgSync(BG3_SYNC_BIT)` 置位，VBlank 里
`SyncBgsAndPal` 用 `CpuFastCopy` 把 2 KB 整块拷到 VRAM
（`src/Common/sys/hardware.c:110`）。这样避免了在可见期间写 VRAM。

### 4.6 限界视图（LIMITVIEW）

`gBmSt.flags & BM_FLAG_LIMITVIEW` 时，地图画到 BG3、同时把"可移动范围"
画到 BG2（`PutLimitViewSquare`），地图会被遮暗。这就是玩家按 A 看
移动范围时的效果。

### 4.7 淡入淡出

`RenderMapForFade` 把同样的内容画到 BG2，并把 BG2 的字符基址临时指到
tileset A，用于章节开始的黑屏淡入。

## 5. 地形：图形之外的第二个维度

- `gMetatilesTerrainLut` 是 TSA 图集的一部分（后 1024 字节），
  **每个 metatile 对应一个 terrain id**。
- `RefreshTerrainMap` 把 metatile 号翻译成地形，游戏逻辑只看
  `gMapTerrain`：移动消耗、治疗、必杀回避、地形加成、AI 寻路都基于它。
- 地形常量见 `include/constants/terrains.h`（1=平原、12=森林、
  17=山地、34=城墙……）。
- **关键约束**：地形不是地图数据里显式存的，而是由 metatile 决定的。
  所以只要复用已有 metatile，地形自动正确；如果新做 metatile，必须同时
  在 LUT 里给它一个正确的地形值，否则会出现"看着是草地、走起来是水"。

序章 270 格的地形分布（实测）：

| terrain | 名称 | 格数 |
|---|---|---|
| 1 | 平原 | 178 |
| 3 | 村庄 | 1 |
| 11 | 城门 | 1 |
| 12 | 森林 | 7 |
| 17 | 山地 | 14 |
| 18 | 山顶 | 28 |
| 21 | 海 | 9 |
| 38 | 悬崖 | 16 |
| 44 | 平地(2C) | 8 |
| 46 | 平地(2E) | 8 |

## 6. 动画：为什么 tile 不能随便挪

`ChapterInfo.asset_img_anims` 指向 `TsImgAnim[]`
（`include/bmio.h:6`）：

```c
struct TsImgAnim {
    u16 time;            /* 每帧持续多少 VBlank */
    u16 size;            /* 数据大小 */
    void const * data;   /* tile 图形数据 */
};
```

`struct BmSt` 里保存 `imgAnimStart/imgAnimCurrent/imgAnimClock`，
VBlank 中按 `time` 轮流把 `data` 写进 **tileset 里固定的 tile 位置**。
调色板动画 `TsPalAnim` 同理，按 `colorStart/colorCount` 改调色板。

对重绘的含义：

- 被动画覆盖的 tile（水面波纹、火炬、旗帜等）**位置是写死的**。
  重画 tileset 时如果把这些 tile 挪到别处或覆盖掉，动画就会花屏。
- 如果只是替换这些 tile 的像素、保持 tile 号不变，动画仍然正常。
- 序章的动画表是 `MapAsset01_Anims`，实测每项 `time=28, size=16`，
  `data` 指向 ROM 里一段段 32 字节的 tile 图形。

## 7. 想改地图，动哪一层

### 7.1 三条路线

| 目标 | 改什么 | 影响范围 | 难度 |
|---|---|---|---|
| A. 只改某一章的布局 | `MapTsa_ChN.tsa` | 单章 | 低 |
| B. 换某一套 tileset 的外观 | `MapAssetNN_Img1/Img2.png` | 共用该 tileset 的所有章 | 中 |
| C. 新增/重画 metatile | `ConfImg` + `Img1/Img2` + `TsaConf` | 共用该 tileset 的所有章 | 高（要写工具） |

**建议从 A 开始**：序章地图只有 27x10，数据 542 字节，改完直接看效果，
不影响任何其它章节。

### 7.2 构建规则

```
%.4bpp: %.png        -> tools/gbagfx          （PNG -> 4bpp）
%.lz:   %            -> tools/gbagfx          （LZ77 压缩）
```

`rodata_chapterinfo1.s` 里已经改成引用解包后的资源：

```asm
MapTsa_Chapter0:
    .incbin "vanilla/data/mapassets/MapTsa_Chapter0.tsa.lz"

MapAsset01_Img1:
    .incbin "vanilla/data/mapassets/MapAsset01_Img1.4bpp.lz"

MapAsset01_Img2:
    .incbin "vanilla/data/mapassets/MapAsset01_Img2.4bpp.lz"
```

其余章节的地图仍然 `.incbin "fe6-base.gba", <offset>, <len>`，
也就是只有压缩数据、没有源文件。

### 7.3 改地图布局的最小流程

1. 用脚本/工具从 `MapTsa_Chapter0.tsa` 导出 `w x h` 的 metatile 号矩阵。
2. 以 `MapAsset01_ConfImg.png` 为参考（每格 16x16，`metatile = y*32+x`）
   在矩阵里改格子，每格只能填 0..1023 且必须是已存在且有地形定义的
   metatile。
3. 写回 .tsa（每格 `metatile * 4`，低 2 位保持 0）。
4. `make all` 会自动生成 `.tsa.lz` 并链接。
5. `./tools/emu/testmenu-tests.sh` 走 testmenu -> Start Game -> 章节，
   截图或对比确认。

### 7.4 坑清单

1. **尺寸上限 32x48**（`MAP_POOL_SIZE`）。改大尺寸要同步改
   `MAP_POOL_SIZE`、`ChapterInfo.coord_x/y`、相机上限和事件坐标。
2. **metatile 值必须是 4 的倍数**。`RefreshTerrainMap` 用 `>>2`，
   `PutMapMetatile` 直接拿值当 u16 索引；低 2 位非 0 会读错 TSA 条目。
3. **调色板组只能 0..4**。写 5 以上，雾天加 11 会溢出到别的调色板。
   （TSA 里个别未用到的 metatile 残留了 6，属于脏数据，不要照抄。）
4. **地形 LUT 必须和图形一致**。换了 metatile 的图形却没换 LUT，
   就会出现"看着是路、走过去消耗 5 点移动力"。
5. **tileset 是共用的**。改 `MapAsset01_*` 前先确认哪些章节在用。
6. **动画 tile 位置写死**。不要把动画用的 tile 挪走。
7. **地图变更表**里的 metatile 也要一起改，否则事件触发后地形又变了。
8. **压缩位序**：自写压缩器时 flag bit=0 是字面量、bit=1 是回引，
   和 gbagfx `tools/gbagfx/lz.c` 保持一致，否则游戏解压会花屏。

## 附录 A：章节地图尺寸（从 ROM 实测）

| 章节 | 尺寸 | 格子数 |
|---|---|---|
| Chapter 0 | 27x10 | 270 |
| Ch1 | 15x21 | 315 |
| Ch2 | 19x19 | 361 |
| Ch3 | 25x22 | 550 |
| Ch4 | 30x17 | 510 |
| Ch5 | 20x22 | 440 |
| Ch6 | 26x24 | 624 |
| Ch7 | 21x28 | 588 |
| Ch8 | 30x24 | 720 |
| Ch9 | 24x26 | 624 |
| Ch10a | 21x32 | 672 |
| Ch11a | 30x26 | 780 |
| Ch12 | 32x32 | 1024 |
| Ch13 | 46x25 | 1150 |
| Ch14 | 32x22 | 704 |
| Ch15 | 28x26 | 728 |
| Ch16 | 32x32 | 1024 |
| Ch17c | 32x24 | 768 |
| Ch18c | 23x32 | 736 |
| Ch19c | 32x22 | 704 |
| Ch20c | 32x26 | 832 |
| Ch21 | 32x36 | 1152 |
| Ch22 | 32x32 | 1024 |
| Ch23 | 24x32 | 768 |
| Ch24 | 32x48 | 1536 |
| Ch25 | 17x18 | 306 |

## 附录 B：相关符号与文件

| 符号 / 文件 | 位置 |
|---|---|
| `InitMapForChapter` | `src/Common/mapwork/map.c:49` |
| `UnpackRawMap` | `src/Common/mapwork/map.c:201` |
| `ApplyChapterMapGraphics` | `src/Common/mapwork/map.c:215` |
| `InitMetatilesMap` | `src/Common/mapwork/map.c:240` |
| `RefreshTerrainMap` | `src/Common/mapwork/map.c:283` |
| `PutMapMetatile` | `src/Common/mapwork/map.c:289` |
| `RenderMap` / `RenderMapColumn` / `RenderMapLine` | `src/Common/mapwork/map.c:341` 起 |
| `UpdateRenderMap` | `src/Common/mapwork/map.c:379` |
| `PutLimitViewSquare` | `src/Common/mapwork/map.c:305` |
| `SyncBgsAndPal` / `SetBgChrOffset` | `src/Common/sys/hardware.c:110` / `:82` |
| `gBg3Tm` | `src/Common/sys/hardware.c:7` |
| `struct ChapterInfo` | `include/unknown_types.h:63` |
| `struct MapChangeInfo` | `include/unknown_types.h:116` |
| `struct TsImgAnim` / `TsPalAnim` | `include/bmio.h:6` / `:12` |
| `map.h` 常量 | `include/map.h:6`（`MAP_POOL_SIZE`）、`:7`（`TILESET_METATILES`） |
| BG/调色板分配 | `include/constants/videoalloc_global.h` |
| 地形常量 | `include/constants/terrains.h` |
| 章节资源表 | `gameinfo/chapterinfo/chapterinfo_assets.c` |
| 章节参数表 | `gameinfo/chapterinfo/chapterinfo_data.c` |
| 地图资源 incbin | `vanilla/data/rodata_chapterinfo1.s` |
| LZ77 实现 | `tools/gbagfx/lz.c` |
| 原版笔记 | `~/fe6/docs/map.md` |
