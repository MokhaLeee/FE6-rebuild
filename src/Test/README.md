# src/Test —— testmenu 与测试项组织方案

> 状态：**Phase 1–4 已实施**，Phase 5 已开始：
> 已加 `Game` / `Save` / `Test Chapter` / `System` 分类。
> 当前顶层是 `Start Game` / `Test`；Test 第二层有 `Game` / `Save` / `Test Chapter` /
> `System` / `Back`；Game 第二层有 `Chapter 1` / `Chapter 2` / `Back`；
> Save 第二层有 `Write + Load` / `Write` / `Load` / `Corrupt Check` / `Back`；
> System 第二层有 `Level Cap` / `Back`。其余领域按需求继续。
>
> 路线图、测试收敛方案和 MSS 计划见
> [docs/testmenu-roadmap.md](../../docs/testmenu-roadmap.md)。

## 1. 目标

- 测试统一从 testmenu 进入，不再依赖标题画面或隐藏按键。
- 顶层只放两个入口：
  - `Start Game`：正常开始游戏。
  - `Test`：进入第二层测试菜单。
- 第二层先留占位；测试分类等确定后再加，避免现在拍脑袋。
- 测试状态通过**一个 EWRAM 结构体探针**暴露给 emu，不使用一堆分散的全局变量。
- 目录按领域分层，菜单按“类别 → 用例”分层，两者不要求完全同构。

## 2. 目录结构

```
src/Test/
├── README.md                     # 本文件
├── testmenu/                     # 菜单外壳
│   ├── testmenu.c                # 开机入口 + 顶层菜单
│   ├── testmenu_test.c           # Test 第二层菜单（分类入口）
│   └── testmenu_common.c         # 打开子菜单/返回顶层等公共逻辑
├── harness/                      # 测试基础设施
│   ├── test_probe.c              # EWRAM 探针定义
│   └── test_scene.c              # 开章节、写/读章节存档
├── fixtures/                     # test-only 章节事件/单位
│   └── test-chapter.c            # ChapterEventInfo_Test
├── cases/                        # 测试项，按领域分
│   ├── game/                     # 开始游戏、跳章、跳过事件
│   ├── battle/                   # 战斗、banim
│   ├── prep/                     # 准备画面、部署、物品
│   ├── save/                     # 存档、读档、中断
│   ├── ui/                       # statscreen、helpbox、菜单、字体
│   └── system/                   # 内存、随机数、性能
├── data/                         # 测试专用数据（单位表、章节 id 等）
└── ref/                          # debugmenu 参考，不参与构建

include/hacks/
├── testmenu.h                    # testmenu 公开入口
├── testmenu_common.h             # 菜单公共接口
├── test_probe.h                  # 探针结构体与 gTestMenuProbe
├── test_scene.h                  # 场景辅助接口
└── test_chapter.h                # test event / 单位 extern
```

原则：

- `testmenu/` 只放菜单外壳，不放具体测试逻辑。
- 每个领域一个 `cases/<domain>/`，里面放该领域的 `MenuEntInfo[]` 和 case 回调。
- 公共的“开章节/放单位/给道具/重置存档”放 `harness/`，不要复制到每个 case。
- `ref/` 继续只做参考，不参与构建。
- `src/Test/` 下的实现文件统一用 `#if CONFIG_TEST_MENU` 包住；关闭时编译为空目标文件。
- 跨目录共享的头文件放 `include/hacks/`；领域本地头文件可以跟源文件放在
  `cases/<domain>/` 里。

## 3. 菜单层级

### 3.1 顶层：`MenuInfo_TestTop`

顶层只有两项：

| 条目 | 行为 |
|---|---|
| `Start Game` | `StartGame()`，之后正常进标题 / 主菜单 / 章节 |
| `Test` | 打开第二层 `MenuInfo_TestRoot` |

结构示意：

```c
static struct MenuEntInfo CONST_DATA test_top_entries[] = {
	{
		.label = " Start Game",
		.available = MenuEntryEnabled,
		.on_select = testmenu_on_select_start_game,
	},
	{
		.label = " Test",
		.available = MenuEntryEnabled,
		.on_select = testmenu_on_select_test,
	},
	{ 0 }, /* end */
};
```

`MenuInfo_TestTop` 继续保留 `on_init` / `on_end`，负责 Roy / Lilina 两张脸。

### 3.2 第二层：`MenuInfo_TestRoot`

第二层是测试入口列表，目前有 `Game` / `Back`：

```c
static struct MenuEntInfo CONST_DATA test_root_entries[] = {
	{
		.label = " Game",
		.available = MenuEntryEnabled,
		.on_select = testmenu_test_on_select_game,
	},
	{
		.label = " Back",
		.available = MenuEntryEnabled,
		.on_select = testmenu_test_on_back,
	},
	{ 0 }, /* end */
};
```

- `TestRoot` 的 `Back` / B 返回顶层；`Game` 的 `Back` / B 返回 TestRoot。
- 返回都通过延迟 reopen proc：等当前菜单 proc 结束后再 `StartMenu`，避免在回调里
  直接重入菜单。
- 分类确定后，把 `Back` 前后的位置换成 `Battle` / `Prep` / `Save` / `UI` 等类别入口。
- 每个子菜单控制在 8–10 项以内：`include/menu.h` 的 `MENU_MAX_ENTRIES = 11`，
  屏幕高度也放不下更多。

### 3.3 第三层：领域用例

当前已实现 `Game`、`Save`、`Test Chapter`、`System` 领域：

```
src/Test/cases/game/
├── game_cases.c      # MenuEntInfo_TestGame[] + Chapter 1 回调
└── game_cases.h

src/Test/cases/save/
├── save_cases.c      # MenuEntInfo_TestSave[] + Write/Load 回调
└── save_cases.h

src/Test/cases/battle/
├── battle_cases.c    # MenuEntInfo_TestBattle[] + Test Battle 回调
└── battle_cases.h

src/Test/cases/prep/
├── prep_cases.c      # MenuEntInfo_TestPrep[] + Test Prep 回调
└── prep_cases.h
```

`MenuInfo_TestGame` 目前有：

| 条目 | 行为 |
|---|---|
| `Chapter 1` | `test_probe_set_case(TEST_CATEGORY_GAME, TEST_CASE_GAME_CHAPTER_1)`，然后 `test_scene_start_chapter(CHAPTER_1)` |
| `Chapter 2` | `test_probe_set_case(TEST_CATEGORY_GAME, TEST_CASE_GAME_CHAPTER_2)`，然后 `test_scene_start_chapter(CHAPTER_2)` |
| `Back` | 返回 `MenuInfo_TestRoot` |

`MenuInfo_TestSave` 目前有：

| 条目 | 行为 |
|---|---|
| `Write + Load` | 写 `SAVE_GAME0`（chapter 1，turn=7，Roy level/exp/item 哨兵）；`IsSaveValid()` + `ReadGameSavePlaySt()` 校验；清 RAM 后 `ReadGameSave()` 确认 turn 和单位哨兵恢复；最后 `RestartGameAndChapter()` |
| `Write` | 写 `SAVE_GAME0` 并校验 checksum/playstate，留在 Save 菜单，供跨进程测试导出 `.sav` |
| `Load` | `ReadGameSave(SAVE_GAME0)`，校验 turn + 单位哨兵，然后重启章节；供第二次进程读回 |
| `Corrupt Check` | 写有效存档后改坏 payload 一个字节，`IsSaveValid()` 必须从 true 变 false |
| `Back` | 返回 `MenuInfo_TestRoot` |

`Test Chapter` 入口目前有：

| 条目 | 行为 |
|---|---|
| `Test Chapter` | 启动统一测试章节 `CHAPTER_TEST`；默认进入准备画面；脚本按 出撃 进入地图 |
| `Back` | 返回 `MenuInfo_TestRoot` |

后续领域照这个模式加 `cases/<domain>/<domain>_cases.c/h`，并在
`MenuInfo_TestRoot` 里加类别入口。

### 3.4 test chapter 注册

Test Chapter 共用同一个正式 test chapter，注册方式和 `CHAPTER_TUTORIAL` 一样，
不靠 `GetChapterInfo()` 的全局 override：

- `include/constants/chapters.h`：
  ```c
  #if CONFIG_TEST_MENU
      CHAPTER_TEST = 0x2E,
      CHAPTER_COUNT = 0x2F,
  #else
      CHAPTER_COUNT = 0x2D,
  #endif
  ```
- `gameinfo/chapterinfo/chapterinfo_data.c` 的 `ChapterInfoTable`：
  - `[CHAPTER_TEST]`：复用第一章地图，`has_prep=true`
  - `asset_event_info` 指向统一的 test event
- `gameinfo/chapterinfo/chapterinfo_assets.c` 的 `ChapterAssets`：
  - `PLIST_TEST_EVENT -> &ChapterEventInfo_Test`
- `src/Test/fixtures/test-chapter.c`：一个 `ChapterEventInfo_Test`，包含 level 测试单位/事件和 prep 的 9 蓝单位
- `src/Test/harness/test_scene.c`：
  - `test_scene_start_chapter()` 设置 `gTestSkipPrep = true`，直接进地图
  - `test_scene_start_prep()` 设置 `gTestSkipPrep = false`，正常打开准备画面
- `vanilla/prepphase.c` 在 `CONFIG_TEST_MENU` 下检查 `gTestSkipPrep`，仅用于测试跳过
- testmenu 的 Test Chapter 启动 `CHAPTER_TEST`

因此：

- `src/Debugs/debug-event.c` 的第一章可以自由改，不影响 Battle/Prep 测试；
- test chapter 只在 `CONFIG_TEST_MENU` 下注册，正常游玩看不到；
- 新增测试场景时，按同样方式加 chapter id + `ChapterInfoTable` 条目 +
  `ChapterAssets` 事件即可，不需要往 `GetChapterInfo()` 插 hook。

### 3.5 mural 滚动 proc

`StartMuralBackground()` 会 `SpawnProc(ProcScr_BackgroundSlide, parent)`。
如果 parent 是顶层菜单 proc，打开 Test 子菜单时顶层菜单 `EndMenu` 会把这个
滚动 proc 一起结束，BG3 就停在最后的位置，看起来就是“子菜单里背景不动了”。

因此 testmenu 里必须：

- 用 `PROC_TREE_3` 作为 parent 启动 mural，让滚动 proc 独立于菜单 proc；
- 所有“离开 testmenu 进入游戏”的路径（`Start Game`、`Chapter 1`、
  `Test Chapter`、`Write + Load`）都先 `EndMuralBackground()`；
- `Game` / `Save` / `Test Chapter` 这类走 `RestartGameAndChapter()` 的路径统一调用
  `test_scene_restart_game_and_chapter()`，不要直接调 `RestartGameAndChapter()`；
- 子菜单切换不要结束/重启 mural；返回顶层时它仍在跑。

回归测试：`testmenu-tests.sh` case 2 在子菜单里读 `gDispIo+0x28`
（BG3 HOFS 的 shadow）并断言两帧之间在增加；case 4 在进入章节后断言
BG3 HOFS 在 900/1000 帧保持不变（滚动 proc 已停）。

## 4. 文件职责

| 路径 | 职责 |
|---|---|
| `src/Test/testmenu/testmenu.c` | `StartGame_TestMenu()`、顶层菜单、Roy/Lilina 头像 |
| `src/Test/testmenu/testmenu_test.c` | `MenuInfo_TestRoot`、Game/Save/Battle 类别入口、返回逻辑 |
| `include/hacks/testmenu_common.h` | 菜单公共接口 |
| `src/Test/harness/test_probe.c` | EWRAM 探针定义 |
| `include/hacks/test_probe.h` | 探针结构体、`gTestMenuProbe`、接口声明 |
| `src/Test/harness/test_scene.c` | 场景辅助：开章节、写/读章节存档、启动 test chapter |
| `include/hacks/test_scene.h` | 场景辅助接口 |
| `src/Test/fixtures/test-chapter.c` | test-only `ChapterEventInfo_Test`、单位和事件脚本 |
| `include/hacks/test_chapter.h` | test event / 单位 extern 声明 |
| `include/constants/chapters.h` | test chapter id 与 `CHAPTER_COUNT` |
| `gameinfo/chapterinfo/chapterinfo_data.c` | `ChapterInfoTable` 里的 test chapter 条目 |
| `gameinfo/chapterinfo/chapterinfo_assets.c` | test event 的 `ChapterAssets` 条目 |
| `include/hacks/test_cases.h` | `TestCategoryId` / `TestCaseId` |
| `src/Test/cases/game/` | `MenuInfo_TestGame`、Chapter 1 case |
| `src/Test/cases/save/` | `MenuInfo_TestSave`、Write/Load case |
| `src/Test/cases/battle/` | `MenuInfo_TestBattle`、Test Battle case |
| `src/Test/cases/prep/` | `MenuInfo_TestPrep`、Test Prep case |
| `src/Test/cases/<domain>/` | 其它领域测试项，本地头文件也放这里 |
| `include/hacks/testmenu.h` | testmenu 公开入口 |

## 5. EWRAM 探针

### 5.1 设计原则

- **只有一个结构体**：`struct TestMenuProbe`，不拆成一堆 `gTestFoo` / `gTestBar`。
- 放在 EWRAM：`EWRAM_DATA`。
- 字段用固定宽度类型（`u8` / `u16` / `u32`），避免 `int` 宽度变化。
- 不用位域、不放指针，保证 emu 按固定偏移读取。
- 字段只追加到末尾；已有偏移不要改。布局真的需要变时更新 `magic`。

### 5.2 定义

```c
#define TEST_MENU_PROBE_MAGIC 0x54535450u /* "TSTP"；按 u32 比较，不看内存字节序 */

enum TestMenuId {
	TEST_MENU_ID_NONE,
	TEST_MENU_ID_TOP,
	TEST_MENU_ID_TEST_ROOT,
	TEST_MENU_ID_CATEGORY,
	TEST_MENU_ID_CASE,
};

enum TestMenuState {
	TEST_MENU_STATE_NONE,
	TEST_MENU_STATE_MENU,
	TEST_MENU_STATE_CASE_RUNNING,
	TEST_MENU_STATE_CASE_DONE,
	TEST_MENU_STATE_CASE_FAILED,
};

struct TestMenuProbe {
	/* 0x00 */ u32 magic;
	/* 0x04 */ u8 menu;      /* enum TestMenuId */
	/* 0x05 */ u8 state;     /* enum TestMenuState */
	/* 0x06 */ u8 category;  /* 领域 id，0 = 无 */
	/* 0x07 */ u8 case_id;   /* 领域内 case id，0 = 无 */
	/* 0x08 */ u16 step;     /* 多步 case 的步骤 */
	/* 0x0A */ u16 flags;    /* case 专用标志位 */
	/* 0x0C */ u32 value[4]; /* case 专用数值 */
	/* 0x1C */ u32 frame;    /* 最近一次状态变化的 GetGameTime() */
}; /* size = 0x20 */

STATIC_ASSERT(sizeof(struct TestMenuProbe) == 0x20);
```

定义和实例：

```c
/* src/Test/harness/test_probe.c */
struct TestMenuProbe EWRAM_DATA gTestMenuProbe = {};
```

```c
/* include/hacks/test_probe.h */
extern struct TestMenuProbe EWRAM_DATA gTestMenuProbe;
```

### 5.3 偏移表

| 偏移 | 类型 | 字段 | 用途 |
|---|---|---|---|
| `0x00` | `u32` | `magic` | 固定 `0x54535450`，确认探针已初始化 |
| `0x04` | `u8` | `menu` | 当前菜单：TOP / TEST_ROOT / CATEGORY / CASE |
| `0x05` | `u8` | `state` | 菜单或 case 状态 |
| `0x06` | `u8` | `category` | 领域 id |
| `0x07` | `u8` | `case_id` | 领域内 case id |
| `0x08` | `u16` | `step` | 多步 case 的步骤 |
| `0x0A` | `u16` | `flags` | case 专用标志 |
| `0x0C` | `u32[4]` | `value` | case 专用数值 |
| `0x1C` | `u32` | `frame` | 最近状态变化的游戏帧 |

### 5.4 生命周期

- `StartGame_TestMenu()` 开头调用 `test_probe_reset()`：
  - 清零整个结构体；
  - 写入 `magic`；
  - `frame = GetGameTime()`。
- 每个菜单的 `on_init` 更新 `menu` / `state` / `frame`。
- `Start Game` 离开 testmenu 时把 `menu` / `state` 置回 `NONE`。
- 执行 case 时写 `category` / `case_id` / `state = CASE_RUNNING`；结束时写
  `CASE_DONE` 或 `CASE_FAILED`。
- case 需要给 emu 看的中间值，通过 `step` / `flags` / `value[]` 表达，不另开全局变量。

当前的公共接口：

```c
void test_probe_reset(void);
void test_probe_set_menu(u8 menu, u8 state);
void test_probe_set_case(u8 category, u8 case_id);
void test_probe_set_state(u8 state);
void test_probe_set_value(int index, u32 value);
void test_probe_finish(bool pass);
```

### 5.5 emu 读取

`gbarun` 的 `--probe` 支持 `符号+偏移:宽度`：

```bash
./tools/emu/.build/gbarun fe6re.gba --sym fe6re.sym \
	--stats 200 \
	--probe "gTestMenuProbe+0x00:32" \
	--probe "gTestMenuProbe+0x04:8" \
	--probe "gTestMenuProbe+0x05:8" \
	--probe "gTestMenuProbe+0x06:8" \
	--probe "gTestMenuProbe+0x07:8"
```

输出示例：

```
PROBE frame=200 addr=... width=32 value=<TEST_MENU_PROBE_MAGIC>
PROBE frame=200 addr=... width=8  value=<TEST_MENU_ID_TOP>
PROBE frame=200 addr=... width=8  value=<TEST_MENU_STATE_MENU>
```

测试脚本里可以直接断言：

- 开机后 `magic == 0x54535450`；
- `menu == TEST_MENU_ID_TOP`；
- 进入 `Test` 后 `menu == TEST_MENU_ID_TEST_ROOT`；
- 进入 case 后 `category` / `case_id` / `state` 符合预期。

## 6. 测试脚本

当前入口是 `tools/emu/testmenu-tests.sh`，已经覆盖十五个 case：

```
case 1: 开机 → 顶层 testmenu（Roy/Lilina）→ Start Game → 章节
case 2: 开机 → 顶层 → Test 子菜单 → Back → 顶层
case 3: 开机 → 顶层 → Test → Game → Chapter 1
case 4: 开机 → 顶层 → Test → Save → Write + Load
case 5: 跨进程：Write + --save-out → 重启 --sav → Load
case 6: 顶层 → Test → Test Chapter（出撃后战斗），GDB 检查 banim
case 7: 顶层 → Test → Test Chapter 准备画面（CHAPTER_TEST）
case 8: Test Chapter → Unit Select → Item Edit → 返回准备菜单
case 9: Test Chapter → ゲームを始める → 地图
case 10: 准备菜单按 R → 帮助框
case 11: Unit Select → R → Statscreen
case 12: Sortie → Map R → MSS
case 13: Test Chapter → 記録する / マップを見る
case 14: Game → Chapter 2
case 15: Save → Corrupt Check
```

case 1 会断言：

```
gTestMenuProbe.magic == TEST_MENU_PROBE_MAGIC
gTestMenuProbe.menu  == TEST_MENU_ID_TOP
gTestMenuProbe.state == TEST_MENU_STATE_MENU
选择 Start Game 后 menu/state 回到 NONE
gPlaySt.chapter >= 1
```

case 2 会断言 `menu` 按 `TOP → TEST_ROOT → TOP` 变化，并检查两张脸在
Test 子菜单里消失、返回顶层后恢复，以及子菜单里 BG3 mural 继续滚动。

case 3 会断言：

```
menu:     TEST_ROOT → CATEGORY → CASE
state:    CASE_RUNNING
category: TEST_CATEGORY_GAME
case_id:  TEST_CASE_GAME_CHAPTER_1
chapter:  >= 1
```

case 4 会断言：

```
state:    CASE_DONE
value[0]: IsSaveValid() = 1（magic + checksum 通过）
value[1]: 盘上 chapter = 1
value[2]: 盘上 turn = 7
value[3]: 清 RAM 后重新加载的 turn = 7
flags:    7（Roy level/exp/item 三项哨兵都恢复）
chapter:  1
sram:     32768 bytes
BG3 HOFS: 900/1000 帧相同（mural 滚动已停）
```

case 5 会断言：

```
run 1: Write + --save-out
run 2: --sav 启动 → Load
flags:  7（单位哨兵）
chapter: 1
```

case 6 会断言：

```
GDB 命中 BattleAIS_ExecCommands
GDB 命中 EfxAdvanceFrameLut
```

case 7 会断言：

```
gPrepMenuItemCnt == 10
gPrepUnitCount == 9        # 蓝方 9 人（红方另有 8 人）
gUnitArrayRed 红单位存在
gPlaySt.flags & PLAY_FLAG_PREP
gPlaySt.chapter == 46 (CHAPTER_TEST_PREP)
```

case 8 会断言：

```
gPrepMenuItemCnt == 10（进入/退出子菜单后仍是 10）
gPrepUnitCount   == 9
Unit Select / Item Edit / 返回准备菜单 三个画面都有内容
```

case 9 会断言：

```
gPlaySt.flags & PLAY_FLAG_PREP == 0
gBmSt.flags & BM_FLAG_PREP == 0
gPlaySt.chapter == 46
地图画面有内容
```

case 10 会断言：

```
gPrepMenuItemCnt == 10
帮助框画面颜色数在 160–200
```

case 11 会断言：

```
gStatScreenSt.page == 0
gStatScreenSt.unit != NULL
gPrepMenuItemCnt == 10
Statscreen 画面有内容
```

case 12 会断言：

```
gMssSt.unit != NULL
gStatScreenSt.unit == 0
MSS 画面有内容
```

case 13 会断言：

```
gPrepMenuItemCnt == 10
gPlaySt.flags & PLAY_FLAG_PREP
記録する / マップを見る 两个子界面有内容
```

case 14 会断言：

```
category == TEST_CATEGORY_GAME
case_id  == TEST_CASE_GAME_CHAPTER_2
gPlaySt.chapter == 2
Chapter 2 画面有内容
```

case 15 会断言：

```
value[0] == 1   # 原始存档 IsSaveValid
value[1] == 0   # 改坏一个字节后 IsSaveValid
state    == CASE_DONE
```

脚本已经分层：

```
tools/emu/
├── testmenu-tests.sh          # runner
├── testmenu/
│   ├── lib.sh                 # ok/bad、colors_at、probe_n_at
│   ├── README.md              # 加 case 指南
│   └── cases/
│       ├── 01-start-game.sh
│       ├── 02-test-root.sh
│       ├── 03-game-chapter1.sh
│       ├── 04-save-write-load.sh
│       ├── 05-save-cross-run.sh
│       ├── 06-battle-banim.sh
│       ├── 07-prep-screen.sh
│       ├── 08-prep-menu.sh
│       ├── 09-prep-sortie.sh
│       ├── 10-prep-helpbox.sh
│       ├── 11-prep-statscreen.sh
│       ├── 12-mss-statscreen.sh
│       ├── 13-prep-save-map.sh
│       ├── 14-game-chapter2.sh
│       └── 15-save-corrupt.sh
└── legacy/                    # 旧 run-tests.sh / gdb-check.sh / 文档
```

```bash
./tools/emu/testmenu-tests.sh             # 全部
./tools/emu/testmenu-tests.sh --list      # 列出 case
./tools/emu/testmenu-tests.sh --case 15   # 只跑 case 15
./tools/emu/testmenu-tests.sh --clean     # 清输出
```

## 7. 命名约定

- 顶层菜单：`MenuInfo_TestTop` / `MenuEntInfo_TestTop`
- 第二层：`MenuInfo_TestRoot` / `MenuEntInfo_TestRoot`
- 领域菜单：`MenuInfo_Test<Domain>` / `MenuEntInfo_Test<Domain>`
- 回调：`testmenu_*`（菜单外壳）、`test_<domain>_<case>`（用例）
- 场景辅助：`test_scene_*`
- 夹具：`test_fixture_*`
- 探针：`TestMenuProbe`、`gTestMenuProbe`、`test_probe_*`

## 8. 实施进度

1. ✅ 加 `src/Test/harness/test_probe.c/h`，定义结构体、`gTestMenuProbe` 和 reset。
2. ✅ 顶层菜单把 `Dummy` 改成 `Test`；新增 `MenuInfo_TestRoot`。
3. ✅ `StartGame_TestMenu()` 调 `test_probe_reset()`；各菜单 `on_init` 更新探针。
4. ✅ 更新 `testmenu-tests.sh`，加入探针断言和 Test 子菜单 case。
5. ✅ 加 `src/Test/cases/README.md`，说明如何按领域加 case。
6. ✅ 加 `Game` 分类、`Chapter 1` case 和 `test_scene_start_chapter()`。
7. ✅ 加 `Save` 分类和 `Write + Load` case（`test_scene_write/load_chapter_save()`）。
8. ✅ Save 增加单位哨兵（level/exp/item）和跨进程 `Write` / `Load` case。
9. ✅ 加 `Battle` 分类和 `Test Battle` case，GDB 检查 banim 断点。
10. ✅ 加 `Prep` 分类和 `Test Prep` case，验证准备画面初始化（正式 test chapter，不依赖 Chapter 2）。
11. ✅ 加 Prep 子菜单 smoke（Unit Select / Item Edit）。
12. ✅ 加 Prep 出撃 case，验证离开准备画面后 prep 状态清理。
13. ✅ 加 Prep helpbox case（R）。
14. ✅ 加 Prep statscreen case（Unit Select → R）。
15. ⏳ MSS statscreen case 已加，按用户要求先挂起。
16. ✅ 加 Prep 存档/地图子界面 case。
17. ✅ 加 Game Chapter 2 case。
18. ✅ 加 Save 负向 checksum 测试（Corrupt Check）。
19. ⏳ 继续加其他领域（ui / system）。
11. ⏳ 按需求把旧 `run-tests.sh` 的用例迁进 `testmenu-tests.sh`。

## 9. 待定

- 分类的最终命名和顺序。
- `value[4]` / `flags` 的跨 case 约定，是否按领域再细分。
- case 是否需要统一的 `struct TestCase` 描述符，还是直接写 `MenuEntInfo`。
