# 上游同步状态（fe6 @ 8df37fd）

记录本仓库与 `MokhaLeee/fe6` 主线的同步情况，便于下次跟进时知道做到哪、还剩什么、哪些是故意不跟的。

- 上游基线：`8df37fd`（2026-11-26，#176 合并）
- 本仓库在上游的最后一次整体快照：`6546afd`（#114，2026-10-30）
- 当前跟进目标：`8df37fd`。`7927a77` 那一轮的 17 个 PR 已清（批 1–4、批 6、#140，计划见
  `upstream-sync-plan-7927a77.md`）；#152–#160 这一轮已跟进，只整批跳过 #152（xmap）
  与 #156（opinfo_classdemo），原因见「有意未同步」；#161–#174 这一轮已跟进 7 个
  （#161 / #163 / #164 / #165 / #168 / #170 / #173），其余见「剩余待跟进」

## 已同步

| 上游 | 内容 | 本仓库 commit |
|---|---|---|
| #115（局部） | `thumb_function` 宏、`macro.inc` 并入 `asm_macros.inc`、`calcstats.py`/`dump_banim.py` | `97eebaf` |
| #117 | `include/gba/*` 摊平到 `include/` | `97eebaf` |
| #120 | `move.{h,c}` → `datamove.{h,c}` | `97eebaf` |
| #122 | lz 压缩对象声明改 `u32` | `97eebaf` |
| #126 | `ai_unk.h`/`ai_080326C4.c` → `ai_action.*` 及符号命名 | `97eebaf` |
| #132 | `PLAY_TALKSPEED_*`、`UNIT_TORCH/BARRIER_MAX`、`EVENT_MONEY_MAPCHANGE` 等常量 | `97eebaf` |
| #123 | ewram 符号命名（42 个） | `ae433c0` |
| #124 | statusscreen 函数/数据/字段命名 | `ae433c0` |
| #133（部分） | 删 `func_fe6_08076060` 的 NAKEDFUNC 块、PageSlide 系列改名 | `ae433c0` |
| #133（命名） | `UnitListScreenProc`/`SpritesProc` 字段、19 个 `UnitList_*` 函数、参数名 | `a4412ab` |
| #127 | eventfunctions 命名（137 个符号、事件脚本调用点） | `224aa3b` |
| #128 | manim 函数/结构体/数据标签命名 | `224aa3b` |
| 欠账补漏 | unitlistscreen 2 个 LUT、banin_ekrbattleintro 9 个函数、manim 死声明 | `3f93473` |
| 欠账补漏 | secretscreen 2 个结构体（`SecretScreenPasswordMeta`/`SecretScreenPlayRankStats`） | 本次提交 |
| #148/#149/#150（部分） | banim 去寄存器 pin、删 `#if !NONMATCHING` 残留（#141 的 `register` 一并清掉） | `6398971` |
| —（配套） | frame LUT 端到端改 `i16`，`EfxAdvanceFrameLut` 强类型签名 | `8852aee` |
| #151 | debugmenu / menuinfo 命名 | `25b50ae` |
| #147 | prep_menuscrollbar 命名（`Sprite_MenuScroll*`、`MENUSCROLL_*`） | `25b50ae` |
| #144 | `code_0802B814` → `commandflags`、新建头文件、`unknown_funcs.h` 清理 | `25b50ae` |
| #134 | augury 命名（函数/数据/枚举/字段 + rodata 标签） | `343e44b` |
| #135 | play rank 命名（等级枚举修正、`PlayRankSt` 字段、help info、refrank 索引） | `343e44b` |
| #136 | helpbox_2 命名（函数/Proc/数据/字段、`TALKBOX_CHR_*`、数据标签 `Img_HelpBox`/`Pal_HelpBox`） | `46027ae` |
| #137 | helpbox_2 fakematch 控制流改写成普通 C | `46027ae` |
| #138 | helpbox_2 拆成 `helpbox_display.c` / `helpbox_alt.c` / `helpdialogue.c` | `46027ae` |
| #141 | `prepscreenfx*.c` 合入 `prep_subitemscreen_disp.c`，PrepItem/PrepTrade/PrepSupply 等命名 | `2b0dc2d` |
| #142 | prepscreen_disp 命名（`ProcPrepUpperDisp` 字段、`Sprite_Prep*`、`String_PrepItem_*`） | `2b0dc2d` |
| #140 | titlescreen 命名（`ProcTitleDisp`、`Title*_Init/Loop`、`gTitle*`、`SpriteAnim_Title` 等） | `81a836b` |
| 工具 | `tools/emu` 接入 mGBA GDB stub（`--gdb`/`--gdb-at`）+ banim 断点用例 | `3dfb493` |
| 工具 | debug 章节开场接 `EvtNextChapter(CHAPTER_2)`，测试可进第二章准备画面 | `3814b4f` |
| 工具 | `gbarun` 状态驱动输入（`--sym`/`--press-when`/`--gdb-when`/`--probe`、AND 条件） | `a4146ba` `3e4388b` |
| 工具 | 用例 8：准备画面子菜单交互（部署 / 物品 / 存档 / 地图 / 出击） | `1a9021f` |
| 工具 | 用例 9：帮助框（prepscreen 主菜单按 R，覆盖 `helpbox.c`/`helpbox_display.c`；`helpbox_alt` 是 dead code，`helpdialogue` 走教程路径未覆盖） | `709bece` |
| 工具 | 用例 10：准备画面物品子菜单（交換/捨てる/輸送隊/リスト/武器屋，覆盖 #141 的 PrepItem/PrepTrade/PrepSupply 与 #142 的 PrepDisp） | `08a9e53` |
| #157 | `SleepUntilKeyCombo` 命名（原 `func_fe6_0800285C`，本仓库定义在 `src/Common/sys/sys.c`） | `1c79a7a` |
| #159 | debug 文本默认哨兵 `DEBUGTEXT_BG_VRAM_DEFAULT`/`DEBUGTEXT_OBJ_VRAM_DEFAULT` + `OBPAL_DEBUGTEXT` | `1c79a7a` |
| #160 | `OBJ_VRAM0` 替换 OBJ VRAM 字面量（本仓库 10 处，无 `sio_bm.c`） | `1c79a7a` |
| #155 | 文本控制字符 `TEXT_CHAR_*`（含本仓库 `src/Common/utf8/decoding.c` 的 `GetStringLineEnd`；未跟 `opanim.c`/`xmap.c`） | `1c79a7a` |
| #154 | chapter_title 命名（51 个枚举、`CHAPTER_TITLE_PAL_*`、44 个素材标签、`PutChapterTitlePalette` 等 6 个函数、`gChapterTitleData` 改 `u8 const *`） | `1c79a7a` |
| #153 | worldmap 命名（122 个符号、`WmArrowSt` 字段、`Pals_Wm_082*` → `WorldMapGfxTable`） | `1c79a7a` |
| #158 | 世界地图精灵表 `Img_WorldMapStuff` → `Img_WmSprites`、`OBCHR_WM_SPRITES`、`OBCHR_WM_ARROW_*` | `1c79a7a` |
| #173 | eventinfo 命名（16 个 `func_fe6_*` → `Chapter6_*` / `Chapter11B_*` / `Chapter21_*` / `EventInfo_*Stub*`、`BattleTalkEnt.unk_0C` → `final_chapter_msg`、`CheckAnyRedUnitArea`；含 `gameinfo/chapterinfo/events/ch{6,11b,21}.c` 调用点） | `11c3869` |
| #161 | `KEY_INTR_ENABLE` 由 `0x0400` 修正为 `0x4000`，`SleepUntilKeyCombo` 改用 `KEY_INTR_ENABLE \| KEY_AND_INTR`（本仓库该函数在 `src/Common/sys/sys.c`，不在 `hardware.c`）；与 `keys - 0x4000` 行为等价 | `ae1be20` |
| #163 | 世界地图 OBJ 调色板 / chr 槽常量（`OBCHR_WM_NATION_*`、`OBPAL_WM_{SPRITES,MAPTEXT,HIGHLIGHT,SYSTEM_OBJECTS}`、`worldmapfx.c` 的 `0x10`/`0x14`/`0x1B`/`0x19`/`0xA` 调色板号与 `0x4000`/`0x5100`/`0x4200`/`0x5300` VRAM 偏移） | `f9abdc8` |
| #164 | 存档菜单 / 联机章节标题槽常量（`OBCHR_SAVEMENU_CHAPTER_TITLE_BG/_TEXT`、`OBPAL_SAVEMENU_CHAPTER_TITLE_BG/_TEXT`、`OBJ_VRAM0_CHR`、`VRAM_OFFSET_MASK`；`savemenu.c` 的 `0x16800` 位运算换成常量算术）。sio 半边跳过，`savemenu_2.c` 的部分随 #168/#170 一起提交 | `d0ff877` |
| #165 | debug 字体映射改用字符字面量（`'@' - ' '`、`' ' + 'a' - 'A'`）+ `OBJ_VRAM0_OFFSET` | `d0ff877` |
| #168 | 裸 BG VRAM 地址 → `BG_SCREEN_ADDR()` / `BG_CHAR_ADDR()`（banim、ending、config、mapmenu、savemenu_2、sioerror、两套 statscreen） | `b09b8e2` |
| #170 | 字面 BG tile 索引 + manim tile / 调色板槽（`BGCHR_EKRPOPUP_*`、`BGCHR_EKREXPBAR*`、`EKREXPBAR_FILL_TILES`、`BGCHR_MANIM_*`、`OBCHR_MANIM_*`、`OBPAL_MANIM_*`、`BGCHR_SAVEMENU_TEXT`、`BGCHR_STATUSSCREEN_BG`；`SkillMapAnim.c`、`HealAnim.c` 跟着改名） | `b09b8e2` |

## 剩余待跟进（#166 / #172 / #174）

同一轮里还剩 3 个，都是纯命名 / 常量替换，按可移植度排序（hunk 通过数来自
`git apply --check --ignore-whitespace` 的实测）：

| 上游 | 内容 | 通过情况 | 备注 |
|---|---|---|---|
| #166 `eaa3138` | 结局独白滚动 BG 常量（`MONOLOGUE_BG_WIDTH`/`HEIGHT`/`SCROLL_WRAP`） | 5/7 | `prep_bgscroll.c` 1 处（本地是 `k_umod`，还留着 `VRAM + 0x7800` 待换成 `BG_SCREEN_ADDR(15)`）；`xmap.c` 本仓库没有。带一个行偏移修复，包在 `#if BUGFIX` 里，本仓库未定义 `BUGFIX` → 保持原行为 |
| #172 `3c82a79` | ending_monologue 命名 | 2/7 | 涉及 `ending_monologue_img.s` 数据标签、`iwram-data.c`、`eventinfo.h` 联动 |
| #174 `bda20ea` | savemenu_2 命名 | `savemenu_2.c` 31/33 | 本地已自行重命名过（如 `gSaveMenuObjHighlightPalette`），要逐块挑，别整批打；`savemenu.h` 的槽位枚举已被 #164 改过，需要重算 |

三个都可以独立进行，没有前后依赖。

## 有意未同步

- **#152（xmap 命名）**：本仓库没有 `src/xmap.c`，`include/xmap.h` 是 85 行的本地裁剪版且无人
  `#include`；该 PR 在 `savemenu.c` 的改动只是把本地 `extern StartXmap` 换成 `#include "xmap.h"`，
  搬进来没有消费者。等补 xmap 模块时再整批复刻。
- **#156（opinfo_classdemo 命名）**：本仓库没有 `src/opinfo.c` / `opinfo_classdemo.c` /
  `opinfo_img.s` / `data/opinfo.s`，`include/opinfo.h` 是本地裁剪版（与上游差 67 行）。等同
  #139 soundroom，整批跳过。

- **#118（trim-includes）**：尝试过机械应用（按 basename 把上游 `src/*.c` 映射到本仓库的 `vanilla/`、`gameinfo/`、`src/Common/`），但本仓库的文件依赖与上游不同（`opanim.c`、`worldmap.c`、`iwram-data.c` 删掉 include 就缺声明），10 轮"编译-恢复-重编"不收敛，且映射会误改 `gameinfo/chapterinfo/*` 和 `src/Core/*`。全部回退，不做这批：收益只是少 1048 行 include，不值得逐个手工验证 249 个文件。

- **#119 / #133 的 matching 实现**：`FAKEMATCH`/`NAKEDFUNC`/寄存器重排等技巧只服务于「与原 ROM 字节一致」，本仓库不追求该目标，跟了只会降低可读性。
- **#115 主体**：`asm/arm.s` → `src/armfunc.s`、`crt0`/`gbasyscall` 迁移属于上游的 asm 布局调整，本仓库的 asm 组织（`src/Common/crt0`、`*.iwram.c`）不同。

## 剩余差异（去空白后对比 HEAD）

上游 `src/`+`include/`+`data/` 下 440 个 `.c/.h` 文件：

| 状态 | 数量 |
|---|---|
| 与上游完全一致 | 224 |
| 差 1–19 行 | 97 |
| 差 20–99 行 | 42 |
| 差 100+ 行 | 57 |
| 本仓库缺失 | 20 |

- **命名欠账**：已清。58 个「上游已改名、本仓库仍用旧名」的符号中，12 个已补（`3f93473`），2 个 secretscreen 结构体已补，其余 44 个属于本仓库没有实现的模块（`secretscreen`/`xmap`/`opanim`）。
- **缺失模块（20）**：`sio`、`sio_core`、`sio_bm`、`soundroom`、`opinfo`、`opinfo_classdemo`、`xmap`、`secretscreen`、`save_multiarena`、`banim_ekrsetup`、`ramfunc`、`armfunc.arm`，以及 `data/gamedata/{iinfo,jinfo,pinfo}.h`、`helpboxinfo_data.h`、`systemlabels_data.h`。这些要么在 `gamedata/`、`gameinfo/` 里有替代实现，要么被有意裁剪。
- **`opanim`**：本仓库只有 113 行的精简版，上游 2034 行（完整开场动画），属于有意裁剪，不是欠账。
- **GDB 断点在 vanilla（agbcc）函数上不生效**：mGBA stub 接受 `break/hbreak *addr`（如 `0x08022A4C`）但从不报告命中，`BattleAIS_ExecCommands`（src/ 的 Thumb）却能命中；prep/helpbox 的覆盖因此依赖截图断言。
- **PC 采样断点也试过，不可靠**：在 gbarun 里用 `core->step` + 读 `gprs[15]` 做 `--bp/--bp-at`，ARM 的 `_start` 能命中，但 Thumb 的 `AgbMain`/`PrepUpperDisp_Loop`/`PrepMenu_Init` 全部漏采样（2 帧窗口只走了 6581 步，而一帧约 7 万指令，`frameCounter` 与 step 节奏对不上），已回退。函数级覆盖若要做，只能在 `.build/mgba-0.10.5` 的 `ARMRun` 里加 PC hook 并重编，不进仓库。
- **57 个大差异文件**：以本仓库的本地功能改动为主（`sio.c`、`savemenu*.c`、`statscreen.c`、`battle.c`、`unit.c` 等），不是上游遗留。

## 下次同步流程

1. 以「上游改动涉及的符号」为单位提取 `old -> new` 映射（`git diff --word-diff` + 逐行配对）。
2. 事件脚本/数据文件可以直接用 `patch -l` 打上游补丁；**打完后必须把新增行的 4 空格缩进归一化成 tab**（上游用空格、本仓库用 tab，`patch -l` 只忽略匹配不忽略写入）。
3. 函数/数据符号用映射表全局替换，注意同名 `unk_XX` 字段要按所属结构体区分（可先改头文件，再靠编译错误定位）。
4. 验证：`make clean && make all` 无 warning；用改前/改后的 `.sym` 对比「同名符号地址是否全部不变」来确认是纯改名；`.gba` 只允许 `__DATE__`/`__TIME__` 那几字节不同。
