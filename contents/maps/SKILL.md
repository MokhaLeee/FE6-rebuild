---
name: fe6-chapter-map-workflow
description: FE6 章节地图设计与实现的四阶段工作流（设计稿 → 人工评审 → 实现 → 测试）。当要设计/修改/评审某一章的地图布局、敌人部署、增援、村庄宝箱、行军路线时使用。
---

# FE6 章节地图工作流

把“地图设计”从代码里剥离出来：先出设计稿和标注图，人工评审通过后再改代码，最后统一测试。
适用于新关卡设计，也适用于改现有章节。

## 目录约定

| 内容 | 路径 |
|---|---|
| 地图源（可编辑） | `contents/maps/ChapterNN/MapTsa_ChN.c` |
| 地图构建产物 | 同目录 `.dmp` / `.dmp.lz`（忽略提交） |
| 共享 tileset 源 | `contents/tileset/MapAssetNN/`（TsaConf.c、Img1/Img2.png、ConfImg.png） |
| incbin 流程 | `gamedata/maps/ChapterNN.S`、`gamedata/tileset/MapAssetNN.S` |
| 章节表 | `gameinfo/chapterinfo/chapterinfo_data.c` |
| 事件（强符号） | `gameinfo/chapterinfo/events/chN.c` |
| 事件（weak 旧版） | `gameinfo/chapterinfo/event_scripts/chapterN.c` |
| 地图变更 | `gamedata/maps/ChapterNN_MapChange.c` |
| 设计稿 | `docs/game-design/chN-map.md` |
| 标注图 | `docs/game-design/chN-map-annotated.png` |

## 阶段 1：设计稿（只动文档和图片）

### 1.1 构建并渲染地图

```bash
# 让 .dmp 是最新的（需要 DEVKITPRO/DEVKITARM 已导出）
make all

python3 tools/maptools/render_chapter.py \
    --map contents/maps/Chapter01/MapTsa_Ch1.dmp \
    --tileset contents/tileset/MapAsset01 \
    --out /tmp/ch1.png --scale 2
```

`render_chapter.py` 只依赖 `.dmp` + tileset 目录，不跑模拟器，方便快速迭代。

### 1.2 生成标注图

在渲染图上画：

- 我方：蓝色圆 + 首字母（R/M/A/B/W/L…）；
- 敌方：红色圆 + 编号（1..N），Boss/盗贼在图例里注明；
- 村庄：黄框；房屋：橙框；制压点：绿框；
- 我方行军路线：青色箭头折线。

参考实现见 `docs/game-design/ch1-map-annotated.png` 和当时的生成脚本（从
`MapTsa_Ch1.c` 的 metatile 矩阵 + 事件坐标读取单位位置，用 PIL 画圆/框/折线）。
新增章节时复制一份脚本、改坐标表即可。

### 1.3 写设计文档

用 `docs/game-design/ch1-map.md` 作模板，至少包含：

1. 地图概览（尺寸、tileset、天气、胜利/失败条件、双方人数）；
2. 地形分区（城堡、湖、平原、山脊、村庄）；
3. 我方部署表（标记、单位、职业、坐标、装备）；
4. 敌方部署表（编号、单位、等级、坐标、武器、AI、分波）；
5. 目标与事件（村庄、宝箱、制压、地图变更）；
6. 玩法节奏（每回合的压力来源、教学点、资源取舍）；
7. 本稿相对当前版本的改动（坐标 + 目的）；
8. 待定项（给评审的编号清单）。

## 阶段 2：人工评审

把文档末尾的“待定项”表变成编号清单，让评审者逐条回复结论，例如：

```
1 保留
2 换到 (8,7)
3 不动
4 第 3/5 回合增援
```

按结论更新设计稿，直到定稿。**定稿前不改任何 `.c` 文件。**

## 阶段 3：实现（改代码）

### 3.1 改地图布局

只改 `contents/maps/ChapterNN/MapTsa_ChN.c` 的 `cells`：

- 每格 = `metatile 号 * 4`，必须是 4 的倍数；
- 每行 15 个值（对应地图一行），行尾注释是 metatile 号；
- 改之前先用 `render_chapter.py` 确认目标 metatile 的外观和地形
  （地形 LUT 在 `TsaConf.c` 的 `terrain[1024]`）。

### 3.2 改敌人/增援/事件

- 单位数组、回合事件、村庄事件在 `gameinfo/chapterinfo/events/chN.c`；
- `units_red` / `units_blue` 只放初始单位，其余用 `EvtLoadUnits` 加载；
- 增援用 `EvtListTurn(turn, script, ...)` 挂回合；
- 坐标是 `UnitInfo` 的 `x_move/y_move`（实际站位），`x_load/y_load` 是登场位置。

### 3.3 改地图变更

`gamedata/maps/ChapterNN_MapChange.c`：每条描述“把 (x,y) 起 w x h 换成
metatiles[]”，末尾 `{ .id = -1 }`。变更会覆盖 `gMapMetatiles`，地形随之刷新。

### 3.4 构建

```bash
make all
```

产物：`fe6re.gba` / `.elf` / `.sym`。

## 阶段 4：测试

### 4.1 全量自动测试

```bash
./tools/emu/testmenu-tests.sh
```

要求：`0 失败`。重点看 `game-chapter1` / `game-chapter2` 和存档相关 case。

### 4.2 游戏内截图

```bash
./tools/emu/.build/gbarun fe6re.gba --quiet --frames 3400 --sym fe6re.sym \
    --hold 300:DOWN:5 --hold 400:A:5 --hold 600:A:5 --hold 700:A:5 \
    --hold 1500:START:5 --hold 1800:START:5 \
    --shot 3200 --out tools/emu/.build/out-check
```

确认：地图渲染无花屏、单位站位正确、村庄/制压点没被遮挡。

### 4.3 数据校验（改过布局/事件时）

- 地图：`MapTsa_ChN` 解压后与 `.c` 生成的 `.dmp` 一致；
- 若改了 tileset：`MapAssetNN_*` 各符号与源数据逐字节一致；
- 与改动前做快照对比，确认“只有预期改动”。

## 检查表

- [ ] 设计稿 + 标注图评审通过，待定项全部有结论
- [ ] `cells` 值都是 4 的倍数，尺寸不变或同步改 `ChapterInfo`
- [ ] 我方出生点、村庄、制压点、地图变更坐标的地形可通行且合理
- [ ] 敌人没有站在不可通行地形上，AI 能正常行动
- [ ] `make all` 通过，`./tools/emu/testmenu-tests.sh` 0 失败
- [ ] 游戏内截图无花屏

## 常见坑

1. **`x_load` / `x_move` 别搞反**：实际站位是 `x_move/y_move`。
2. **村庄/制压点与事件坐标绑定**：移动村庄必须同步改
   `EventListScr_*_Tile` 的坐标、`MapChange_*` 的区域和周围地块。
3. **metatile 有地形语义**：换外观 = 换地形，会影响移动消耗、地形加成和 AI 路径。
4. **tileset 共享**：`MapAsset01` 被多章共用，改 tileset 影响所有共用章节；
   只改 `MapTsa_ChN` 才只影响本章。
5. **`.S` 会过 CPP**：注释里不要出现 `/*` 序列，否则预处理报错。
6. **生成物不入库**：`.dmp` / `.4bpp` / `.gbapal` / `.lz` / `.o` 都在 `.gitignore`。
