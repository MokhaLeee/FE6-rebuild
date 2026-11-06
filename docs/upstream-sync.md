# 上游同步状态（fe6 @ 977cbd5）

记录本仓库与 `MokhaLeee/fe6` 主线的同步情况，便于下次跟进时知道做到哪、还剩什么、哪些是故意不跟的。

- 上游基线：`977cbd5`（2026-10-31，#133 合并）
- 本仓库在上游的最后一次整体快照：`6546afd`（#114，2026-10-30）
- 当前跟进目标：`7927a77`（45 commits / 17 PR），分批计划见 `upstream-sync-plan-7927a77.md`；
  已完成批 1（#144/#147/#151）、批 2（#134/#135）与批 6（#148–#150 + LUT 强类型）

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
| 工具 | `tools/emu` 接入 mGBA GDB stub（`--gdb`/`--gdb-at`）+ banim 断点用例 | `3dfb493` |
| 工具 | debug 章节开场接 `EvtNextChapter(CHAPTER_2)`，测试可进第二章准备画面 | `3814b4f` |
| 工具 | `gbarun` 状态驱动输入（`--sym`/`--press-when`/`--gdb-when`/`--probe`、AND 条件） | `a4146ba` `3e4388b` |
| 工具 | 用例 8：准备画面子菜单交互（部署 / 物品 / 存档 / 地图 / 出击） | `1a9021f` |

## 有意未同步

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
- **57 个大差异文件**：以本仓库的本地功能改动为主（`sio.c`、`savemenu*.c`、`statscreen.c`、`battle.c`、`unit.c` 等），不是上游遗留。

## 下次同步流程

1. 以「上游改动涉及的符号」为单位提取 `old -> new` 映射（`git diff --word-diff` + 逐行配对）。
2. 事件脚本/数据文件可以直接用 `patch -l` 打上游补丁；**打完后必须把新增行的 4 空格缩进归一化成 tab**（上游用空格、本仓库用 tab，`patch -l` 只忽略匹配不忽略写入）。
3. 函数/数据符号用映射表全局替换，注意同名 `unk_XX` 字段要按所属结构体区分（可先改头文件，再靠编译错误定位）。
4. 验证：`make clean && make all` 无 warning；用改前/改后的 `.sym` 对比「同名符号地址是否全部不变」来确认是纯改名；`.gba` 只允许 `__DATE__`/`__TIME__` 那几字节不同。
