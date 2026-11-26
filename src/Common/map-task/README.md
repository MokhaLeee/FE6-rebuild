# MapTask：贴在地图单位上的 OAM

`PutMapTaskOam()` 在单位 sprite 的 OAM pass 之前跑（`PutUnitSpritesOam()` 先调它），
负责所有沿着地图单位画的覆盖物：HP 条、状态图标、救出标记。

## 1. 文件职责

| 文件 | 职责 |
|---|---|
| `src/Common/map-task/map-task.c` | 单位遍历、可见性裁剪、逐类覆盖物绘制、图标美术数据 |
| `include/map-task.h` | 对外只有一个入口 `PutMapTaskOam()` |

内部符号全部 `static`（图标表、`Sprite_*` 帧、`sHpBarChr`），对外不暴露。

## 2. 绘制结构

一次单位遍历喂所有覆盖物，新增一类只加一行调用：

```c
for (i = 1; i < FACTION_PURPLE; ++i) {
	struct Unit *unit = GetUnit(i);

	if (!unit_oam_overlays_visible(unit, &x, &y))
		continue;

	put_unit_hp_bar_oam(unit, x, y);
	put_unit_status_icon_oam(unit, x, y, &frame);

	if (display_rescue_icon)
		put_unit_rescue_icon_oam(unit, x, y);
}
```

- `unit_oam_overlays_visible()` 统一做过滤（`pinfo`、`UNIT_FLAG_HIDDEN`、sprite 隐藏位）
  和视口裁剪（`-16 .. DISPLAY_WIDTH/HEIGHT`），并给出屏幕坐标；
- 图标帧号（毒/睡/狂暴/沉默）每帧只算一次，通过 `struct UnitStatusIconFrame` 传下去。

## 3. HP 条

- 16×8 OAM，画在 `(x, y + 9)`，即脚下；调色板 `OBPAL_SYSTEM_OBJECTS`（pal 0），layer 2；
- 满血不画（`hp == max` 直接返回），`hp > max` 夹到 `max`；
- 档位 `sHpBarChr[k_udiv(hp * 10, max)]`，0..10 共 11 档：

```c
static const u8 sHpBarChr[] = {
	0x74, 0x74,
	0x56, 0x54, 0x52,
	0x36, 0x34, 0x32,
	0x16, 0x14, 0x12,
};
```

美术来自 fe8u-cskillsys 的 `Data/MapTask/Gfx/WarningHpSheet.png`，已经贴进
`gamedata/ui/bmio/Img_SystemObjects.png` 的右侧 6 列（cols 18..23）。表和图的对应关系见下一节。

## 4. OBJ chr 布局

`ApplySystemObjectsGraphics()`（`src/Common/map/bm.c`）把整张 system objects 图搬进 OBJ：

```c
Copy2dChr(gBuf, OBJ_VRAM0 + CHR_SIZE * OBCHR_SYSTEM_OBJECTS, 24, 4);
```

`Copy2dChr()` 每行前进 **32 个 tile**（不是 24），所以 4 行不是连续排的：

| 行 | 该行 chr 段 | 内容 |
|---|---|---|
| 0 | `0x00`–`0x17` | system objects（FE6 原图），`0x12`–`0x17` 是血条三档 |
| 1 | `0x20`–`0x37` | 同上，`0x32`–`0x37` 是血条三档 |
| 2 | `0x40`–`0x57` | 状态图标 + 血条三档（`0x52`–`0x57`） |
| 3 | `0x60`–`0x77` | 状态图标 + 血条（`0x72`/`0x74`；`0x76` 是别的图标，不是血条） |

每行的**尾部** `0x1X`/`0x3X`/`0x5X`/`0x7X` 这一段（即图里的 cols 18..31）不属于上表，
是天气粒子的地盘，见下节。

## 5. 与天气粒子的 chr 冲突（已知问题，未解决）

天气粒子同样用 `Copy2dChr()` 写这一段，同样是每行 32 tile 的 stride：

| 天气 | 代码 | chr 段 |
|---|---|---|
| 云 | `Copy2dChr(img, OBJ_VRAM0 + CHR_SIZE*OBCHR_CLOUDS, 14, 4)` | `0x12`–`0x1F`（每行，14 宽） |
| 雪暴 | `Copy2dChr(gBuf, ...*OBCHR_SNOWSTORM_PARTICLE, 8, 4)` | `0x18`–`0x1F`（每行，8 宽） |
| 沙暴 | `Copy2dChr(gBuf, ...*OBCHR_SANDSTORM_PARTICLE, 4, 4)` | `0x1C`–`0x1F`（每行，4 宽） |
| 火焰 | 直接 `Decompress(Img_FlamesParticles, ... SNOWSTORM_PARTICLE)` | 复用雪暴起点 |

对应常量：`OBCHR_CLOUDS = 0x12`、`OBCHR_SNOWSTORM_PARTICLE = 0x18`、
`OBCHR_SANDSTORM_PARTICLE = 0x1C`（`include/constants/videoalloc_global.h`）。

也就是说，血条的 11 个 chr（`0x12/0x14/0x16`、`0x32/0x34/0x36`、`0x52/0x54/0x56`、`0x74`）
**全部落在天气会覆盖的范围内**：云是 14 宽、覆盖整行尾部，任何放在 cols 18..31 的图都会被盖。

后果：有天气的章节里，血条会被云/雪/沙的图覆盖成花屏。没有天气的章节不受影响。

### FE8U 原版是怎么处理的

**没有处理，因为原版没有这个功能。** FE8 的地图上没有 HP 条（HP 条只出现在战斗动画
的 banim 里，和地图动画的 info window 里），所以 `0x12` 那一段在原版只有天气在用，
不存在冲突。FE8 的天气代码（`src/bmio.c`）和我们完全一致：

```c
Copy2dChr(gfx, OBJ_VRAM0 + (0x20 * 18), 14, 4);	/* 云，chr 0x12 */
Copy2dChr(gGenericBuffer, OBJ_VRAM0 + 0x18 * 0x20, 8, 4);	/* 雪暴 */
Copy2dChr(gGenericBuffer, OBJ_VRAM0 + 0x1C * 0x20, 4, 4);	/* 沙暴 */
```

### cskillsys 是怎么处理的

**同样没有处理**：他们的 HP 条 chr（`gHpBarChr`）就落在 `0x12`–`0x76`，直接压在云上。
他们只是把这 11 字节做成 FEBuilder patch（`Patches/PATCH_MapTaskHpBarChr.txt`，
ROM `0x987644`），让使用者自己 repoint —— 等于把冲突留给用户。

### 我们的现状与候选方案

现状：沿用 FE8 的布局，血条与天气共享槽位，**未做规避**。

| 方案 | 代价 |
|---|---|
| 搬天气粒子（云 14×4、雪 8×4、沙 4×4，三者互斥，可共用一块 56 tile 的连续空间） | 需要先找到不冲突的空闲段；改 `OBCHR_*PARTICLE` 与各自 `Copy2dChr` 的目标 |
| 搬血条（11 帧 × 2 tile = 22 tile） | 改 `sHpBarChr` 与 `Img_SystemObjects` 的摆放位置，表和图要同步 |
| 天气章节降级（不画血条，或只画单片） | 体验不一致，但改动最小 |

OBJ chr 已经排得很满（`0x00`–`0x77` 系统物件、`0x80`–`0x17F` 单位 sprite、
`0x180`–`0x1FF` manim/helpbox、`0x200`–`0x3FF` banim/脸图/列表界面、
`0x380`–`0x39F` Mu），动之前要先盘一遍占用。

## 6. 约束与陷阱

1. **`Copy2dChr()` 的 stride 是 32**：改 system objects 图的宽度时，行的 chr 起点
   （`0x00`/`0x20`/`0x40`/`0x60`）不变，只有每行用到的长度变。`Img_SystemObjects.png`
   是 24 列，`ApplySystemObjectsGraphics()` 就必须搬 24 列，两者要一致。
2. **`sHpBarChr` 里是绝对 tile 号**，不是相对偏移；改图的摆放就必须同步改这张表。
3. **血条调色板是 `OBPAL_SYSTEM_OBJECTS`（pal 0）**，依赖 `Pal_SystemObjects`
   的第一组 16 色与 `Img_SystemObjects` 的调色板一致（目前是从 FE8 的图直接拷的，
   16 色逐色相同）。
4. **天气覆盖是运行时行为**：云每 8 帧（`GetGameClock() % 8 == 7`）重写一次那段 chr，
   不是初始化一次，所以「画完血条再恢复」这条路走不通。
5. **不要往 `PutMapTaskOam()` 里塞阻塞性操作**：它每帧、每个单位都要跑，
   只做 OAM 写入和查表。
