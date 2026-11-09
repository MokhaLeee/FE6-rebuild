# src/Test —— testmenu 与测试项组织方案

> 状态：**Phase 1–4 已实施**，Phase 5 已开始：
> 已加 `Game` / `Save` 分类，以及 `Chapter 1`、`Write + Load` case。
> 当前顶层是 `Start Game` / `Test`；Test 第二层有 `Game` / `Save` / `Back`；
> Game 第二层有 `Chapter 1` / `Back`；Save 第二层有 `Write + Load` / `Back`。
> 其余领域按需求继续。

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
│   └── test_scene.c              # 以后：开章节、放单位、给道具
├── cases/                        # 测试项（以后按领域分）
│   ├── game/                     # 开始游戏、跳章、跳过事件
│   ├── battle/                   # 战斗、banim、技能、必杀
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
└── test_scene.h                  # 场景辅助接口
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

当前已实现 `Game` 和 `Save` 领域：

```
src/Test/cases/game/
├── game_cases.c      # MenuEntInfo_TestGame[] + Chapter 1 回调
└── game_cases.h

src/Test/cases/save/
├── save_cases.c      # MenuEntInfo_TestSave[] + Write + Load 回调
└── save_cases.h
```

`MenuInfo_TestGame` 目前有：

| 条目 | 行为 |
|---|---|
| `Chapter 1` | `test_probe_set_case(TEST_CATEGORY_GAME, TEST_CASE_GAME_CHAPTER_1)`，然后 `test_scene_start_chapter(CHAPTER_1)` |
| `Back` | 返回 `MenuInfo_TestRoot` |

`MenuInfo_TestSave` 目前有：

| 条目 | 行为 |
|---|---|
| `Write + Load` | 写 `SAVE_GAME0`（chapter 1，turn=7）；`IsSaveValid()` + `ReadGameSavePlaySt()` 校验；清 RAM 后 `ReadGameSave()` 确认 turn 哨兵恢复；最后 `RestartGameAndChapter()` |
| `Back` | 返回 `MenuInfo_TestRoot` |

后续领域照这个模式加 `cases/<domain>/<domain>_cases.c/h`，并在
`MenuInfo_TestRoot` 里加类别入口。

### 3.4 mural 滚动 proc

`StartMuralBackground()` 会 `SpawnProc(ProcScr_BackgroundSlide, parent)`。
如果 parent 是顶层菜单 proc，打开 Test 子菜单时顶层菜单 `EndMenu` 会把这个
滚动 proc 一起结束，BG3 就停在最后的位置，看起来就是“子菜单里背景不动了”。

因此 testmenu 里必须：

- 用 `PROC_TREE_3` 作为 parent 启动 mural，让滚动 proc 独立于菜单 proc；
- 所有“离开 testmenu 进入游戏”的路径（`Start Game`、`Chapter 1`、
  `Write + Load`）都先 `EndMuralBackground()`；
- `Game` / `Save` 这类走 `RestartGameAndChapter()` 的路径统一调用
  `test_scene_restart_game_and_chapter()`，不要直接调 `RestartGameAndChapter()`；
- 子菜单切换不要结束/重启 mural；返回顶层时它仍在跑。

回归测试：`testmenu-tests.sh` case 2 在子菜单里读 `gDispIo+0x28`
（BG3 HOFS 的 shadow）并断言两帧之间在增加；case 4 在进入章节后断言
BG3 HOFS 在 900/1000 帧保持不变（滚动 proc 已停）。

## 4. 文件职责

| 路径 | 职责 |
|---|---|
| `src/Test/testmenu/testmenu.c` | `StartGame_TestMenu()`、顶层菜单、Roy/Lilina 头像 |
| `src/Test/testmenu/testmenu_test.c` | `MenuInfo_TestRoot`、Game/Save 类别入口、返回逻辑 |
| `include/hacks/testmenu_common.h` | 菜单公共接口 |
| `src/Test/harness/test_probe.c` | EWRAM 探针定义 |
| `include/hacks/test_probe.h` | 探针结构体、`gTestMenuProbe`、接口声明 |
| `src/Test/harness/test_scene.c` | 场景辅助：开章节、写/读章节存档 |
| `include/hacks/test_scene.h` | 场景辅助接口 |
| `include/hacks/test_cases.h` | `TestCategoryId` / `TestCaseId` |
| `src/Test/cases/game/` | `MenuInfo_TestGame`、Chapter 1 case |
| `src/Test/cases/save/` | `MenuInfo_TestSave`、Write + Load case |
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

当前入口是 `tools/emu/testmenu-tests.sh`，已经覆盖四个 case：

```
case 1: 开机 → 顶层 testmenu（Roy/Lilina）→ Start Game → 章节
case 2: 开机 → 顶层 → Test 子菜单 → Back → 顶层
case 3: 开机 → 顶层 → Test → Game → Chapter 1
case 4: 开机 → 顶层 → Test → Save → Write + Load
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
chapter:  1
sram:     32768 bytes
BG3 HOFS: 900/1000 帧相同（mural 滚动已停）
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
│       └── 04-save-write-load.sh
└── legacy/                    # 旧 run-tests.sh / gdb-check.sh / 文档
```

```bash
./tools/emu/testmenu-tests.sh             # 全部
./tools/emu/testmenu-tests.sh --list      # 列出 case
./tools/emu/testmenu-tests.sh --case 4    # 只跑 case 4
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
8. ⏳ 继续加其他领域（battle / prep / ui / system）。
9. ⏳ 按需求把旧 `run-tests.sh` 的用例迁进 `testmenu-tests.sh`。

## 9. 待定

- 分类的最终命名和顺序。
- `value[4]` / `flags` 的跨 case 约定，是否按领域再细分。
- case 是否需要统一的 `struct TestCase` 描述符，还是直接写 `MenuEntInfo`。
