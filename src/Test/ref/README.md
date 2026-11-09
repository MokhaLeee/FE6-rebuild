# debug menu 代码（src/Test/ref）

`vanilla/debugmenu.c` 只有 `AgbMain()` 一个调用者，因此已整体迁到本目录；
debug 菜单的 5 张 `MenuInfo` / `MenuEntInfo` 表也从 `vanilla/menuinfo.c`、
`include/menuinfo.h` 摘出，和实现放在一起。

- `debugmenu.c`、`menuinfo_debug.c` 是**真实参与构建**的实现，由 `CONFIG_DEBUG_MENU`
  宏控制：宏为 1 时编译，否则是空翻译单元（不产生任何符号）。
- `include/debugmenu.h` 仍是唯一的公开接口头（`AgbMain()` 调用
  `StartDebugMenu_LoadGame()`），内容同样受 `CONFIG_DEBUG_MENU` 保护。
- 本目录其余文件（`debugtext.c/h`、字体资源、`notes/`）仍是参考副本，**不参与构建**。
  `debugtext` 因为还被 `talk.c` / `worldmapfx.c` 的调试 UI 使用，正本仍在
  `vanilla/debugtext.c`。

宏定义在 `include/configs/configs/config-debug.h`：

```c
#ifndef CONFIG_DEBUG_MENU
#define CONFIG_DEBUG_MENU CONFIG_USE_DEBUG
#endif
```

## 目录结构

```
src/Test/ref/
├── README.md                         # 本文件
├── debugmenu.c                       # debug 菜单全部逻辑（构建：CONFIG_DEBUG_MENU）
├── menuinfo_debug.c                  # 5 张 debug 菜单表（构建：CONFIG_DEBUG_MENU）
├── menuinfo_debug.h                  # 菜单表 extern 声明
├── debugtext.c                       # debug 字体 BG/OBJ 渲染（参考副本，不构建）
├── debugtext.h                       # 同上
├── debugtext_img.s                   # Img_DebugFont 资源标签（参考副本）
├── data/debug_text/
│   ├── Img_DebugFont.4bpp            # debug 字体图块（参考副本）
│   └── Img_DebugFont.png             # 预览图
└── notes/
    ├── inventory.md                  # 全量清单：相关文件、调用关系、死代码提示
    ├── entry-main.c.txt              # 当前开机入口（main.c 摘录 + 改造建议）
    ├── chapter-entry-optional.c.txt  # 可选：恢复「章開始」第 4 项
    ├── emu-debug-menu.md             # tools/emu/README.md 的入口说明摘录
    ├── manim-debug.c.txt             # 附录：已删除的地图动画调试 UI 源码
    ├── manim-debug.h.txt             # 附录：上面那套 UI 的枚举/结构体
    └── promo-test-design.md          # 上一版 testmenu/promo 测试设计全文
```

## 1. debug menu 由哪些部分组成

### 1.0 迁移时对源码做的最小调整

原 `vanilla/debugmenu.c` 由 agbcc 编译，搬到 `src/Test/ref` 后改用 devkitARM GCC，
为了让它在 `-Werror` 下通过并链接，做了三处等价修改：

1. `#if BUGFIX` 包着的 `return 0;` 改成无条件 `return 0;`
   （当前 `BUGFIX` 未定义，GCC 会报 `control reaches end of non-void function`）。
2. `DebugClearFileMenu_OnSelect_Confirm()` 里为 decomp match 保留的
   `u32 unused[4];` 加 `(void) unused;`，消除 unused-variable。
3. 天气菜单的 `weather % DEBUG_WEATHER_COUNT` 改成 `DebugWeatherIndex()` 减法取模，
   避免 GCC 生成 `__aeabi_idivmod`（本工程链接的库没有这个符号）。

这些修改不改变菜单逻辑；完整测试里 debug boot/菜单路径与基线表现一致。

### 1.1 菜单逻辑：`debugmenu.c`

整个文件包在 `#if CONFIG_DEBUG_MENU` 内。按功能分五块：

| 功能 | 函数 |
|---|---|
| 地图主菜单 | `StartDebugMainMenu`、`DebugMenu_Idle_Map`、`DebugMenu_OnSelect_Map` |
| 调试信息开关 | `DebugMenu_Display_DebugInfo`、`DebugMenu_Idle_DebugInfo`（读写 `ProcDebugMonitor.debug_info`） |
| 天气/索敌 | `DebugMenu_Display/Idle_Weather`、`DebugMenu_Display/Idle_Fog` |
| 周回数/清档 | `DebugMenu_Display/Idle_Playthroughs`、`DebugMenu_OnSelect_ClearFile`、`DebugClearFileMenu_OnSelect_Confirm` |
| load/save 入口 | `StartDebugMenu_LoadGame`、`DebugMenu_OnInit/OnEnd_LoadGame`、`DebugMenu_OnSelect_Suspend/CpControl/SaveMenu/Load*Suspend`、`DebugMenu_OnSelect_StartChapter` |

另外还有三个通用小工具：

- `DebugApplyBonusLevelsToCursorUnit()`：给光标单位加 20 级（当前无调用者）。
- `PutDebugTextFrame()` / `DebugTextFrame_DoPut()`：在地图上画一个带边框的 debug 文本框。
- `ProcScr_DebugMonitor`：目前是 `PROC_END` 空壳；`DebugMenu_Display_DebugInfo` 等
  通过 `FindProc(ProcScr_DebugMonitor)` 取它的状态，所以复刻时要么自己 spawn，
  要么别照抄这个依赖。

### 1.2 菜单表：`menuinfo_debug.c`

`MenuInfo` 只描述“菜单长什么样、回调是谁”，真正的行为都在 `debugmenu.c`：

| `MenuInfo` | 条目数 | 用途 |
|---|---|---|
| `MenuInfo_DebugMain` | 8（含 1 个空行） | 地图上的 debug 主菜单：マップ/デブ情報/天気/索敵/周回数/クリアずみ/おやすみなさい |
| `MenuInfo_Debug_LoadGame` | 3 | 开机 debug load game：リリースエントリ/どこでも再開/手再開（第 4 项「章開始」已移除） |
| `MenuInfo_DebugSuspend` | 2 | 手中断/手再開 |
| `MenuInfo_DebugCpControl` | 2 | 红/绿军控制方式（ＣＰ/人間/不参加） |
| `MenuInfo_DebugClearFile` | 5 | 清档确认对话框 |

菜单表的结构（`include/menu.h`）：

```c
struct MenuEntInfo {
    char const * label;                 // 显示文本
    u8 text_color;
    fu8 (*available)(...);              // ENABLED / DISABLED / HIDDEN
    u32 (*display)(...);                // 自定义绘制
    fu8 (*on_select)(...);              // A 键，返回 MENU_ACTION_* 位掩码
    fu8 (*on_idle)(...);                // 每帧
    fu8 (*on_switch_in/out)(...);       // 进入/离开条目
};

struct MenuInfo {
    struct MenuRect rect;               // {x, y, w, h}，h=0 时自动撑开
    struct MenuEntInfo const * entries; // 以 {0} 结尾
    fu8 (*on_init)(...);
    fu8 (*on_end)(...);
    fu8 (*on_b_press)(...);
    ...
};
```

`on_select` 的返回值是位掩码，常用：

- `MENU_ACTION_NOCURSOR`：不显示光标（切子菜单/清屏时）
- `MENU_ACTION_END`：结束当前菜单
- `MENU_ACTION_CLEAR`：清 UI
- `MENU_ACTION_SE_6A` / `SE_6B`：播放确认/取消音
- `MENU_ACTION_DOOM`：强制结束

`available` 返回 `MENU_ENTRY_HIDDEN` 的条目不会被 spawn，`id` 仍是原表下标；
所以动态增删条目时不要用“第几个 proc”去反推表下标。

### 1.3 debug 字体：`debugtext.c`

debug menu 不使用游戏正文的文本系统，而是自带一套 8x8 ASCII 字体：

- `DebugInitBg(bg, vramOffset)`：把 `Img_DebugFont` 传到指定 BG 的 CHR 区，
  初始化调色板、清 tilemap，并记录 `sDebugTextSt.chr`。
- `DebugPutStr(tm, str)`：直接把 ASCII 映射成 tile 索引写入 tilemap。
  只支持 `' '`..'`' 和 `'a'`..`'z'` 附近的小写区间（`> '`'` 时减 0x60）。
- `DebugInitObj(offset, palid)` / `DebugPutObjStr()`：用 OBJ 画 debug 文本。
- `DebugScreenInit()` / `DebugPrintStr()` / `DebugPutScreen()` / `DebugUpdateScreen()`：
  20 行滚动控制台，`DebugUpdateScreen` 用 B 退出、UP/DOWN 翻页。

字体资源：`data/debug_text/Img_DebugFont.4bpp`，由 `debugtext_img.s` 的
`Img_DebugFont` 标签引用；`DebugInitBg` 会 `RegisterVramMove(Img_DebugFont, ...)`。

相关常量（`include/constants/videoalloc_global.h`）：

```c
BGCHR_DEBUGTEXT_DEFAULT = 0x2C0,
OBCHR_DEBUGTEXT_DEFAULT = 0x180,
BGPAL_DEBUGTEXT = 0,
```

`BGCHR_DEBUGMENU_MURAL = 0x580` 在 `debugmenu.h` 里，用于 debug load game 的背景 mural。

### 1.4 入口：`src/Common/crt0/main.c`

当前入口是**无条件**的（只受 `CONFIG_DEBUG_MENU` 控制）：

```c
#if CONFIG_DEBUG_MENU
    StartDebugMenu_LoadGame();
#else
    StartGame();
#endif
```

`tools/emu/README.md` / `promo-test-design.md` 里写的“开机按住 `SELECT+START`”
是上一版方案，代码已经改成直接进入。详见 `notes/entry-main.c.txt`。

### 1.5 依赖

`debugmenu.c` 直接依赖的主要头文件：

```
random.h hardware.h debugtext.h text.h face.h gamecontroller.h bm.h unit.h
map.h bmfx.h bmio.h chapter.h chapterinfo.h menuinfo.h ui.h menu.h
statscreen.h save_core.h save_stats.h save_game.h savemenu.h save-hw.h
constants/videoalloc_global.h constants/chapters.h constants/faces.h
```

其中几个容易被忽略的：

- `StartMuralBackground()`（`statscreen.h`）：debug load game 的背景。
- `StartFace()` / `EndFaceById()`（`face.h`）：菜单两侧头像，`FID_61/63/66/67`。
- `RestartGameAndChapter()` / `RestartGameAndLoadSuspend()`（`save_core.h`）：
  会结束 `ProcScr_GameController`，菜单作为它的子 proc 也会被一起结束
  ——这是“必须在 game controller 启动前进入 debug menu”的根本原因。
- `gPlaySt.debug_control_red/green` 是 `struct PlaySt` 里的 2-bit 位域（`include/bm.h`），
  章节初始化时在 `vanilla/chapter.c` 清零。

## 2. 重做自己的 testmenu：建议路线

### 2.1 不要直接改 `MenuInfo_DebugMain`

最干净的做法是新建一套独立符号，避免和 `vanilla/` 重名：

```
src/Test/testmenu.c          # MenuInfo_TestMain + 回调 + 场景分发
src/Test/testmenu.h          # 自己的声明
```

`MenuInfo_TestMain` 可以照抄 `MenuInfo_DebugMain` 的写法，但：

- 条目表用 `MenuEntInfo_TestMain[]`；
- 回调用 `TestMenu_*` 前缀；
- 测试项按场景拆成独立函数，例如 `TestMenu_StartChapterSelect()`、
  `TestMenu_RunPromoCase(id)`；
- 用 `CONFIG_TEST_MENU` 包住整个文件（不要复用 `CONFIG_DEBUG_MENU`，否则测试菜单
  会和原版 debug menu 绑死），正常构建不编译。

### 2.2 入口

在 `AgbMain()` 的 `StartGame()` 之前插入，且要满足：

1. `InitProcs()` / `InitKeySt()` / `ReadGlobalSaveInfo()` 已完成；
2. 还没有 game controller（否则 `RestartGameAndChapter()` 会连带结束菜单）；
3. 入口用显式按键组合或独立 config，不要默认接管开机流程。

示例（详见 `notes/entry-main.c.txt`）：

```c
#if CONFIG_TEST_MENU
    RefreshKeySt(gKeySt);
    if ((gKeySt->held & (KEY_BUTTON_SELECT | KEY_BUTTON_START)) ==
        (KEY_BUTTON_SELECT | KEY_BUTTON_START))
        StartTestMenu();
    else
        StartGame();
#else
    StartGame();
#endif
```

### 2.3 菜单打开后

参考 `StartDebugMenu_LoadGame()`：

```c
void StartTestMenu(void)
{
    SetMainFunc(OnMain);
    SetOnVBlank(OnVBlank);

    InitBmDisplay();
    DebugInitBg(BG_2, 0);                 // 可选：复用 debug 字体

    StartMuralBackground(StartMenu(&MenuInfo_TestMain),
        (u8 *) BG_VRAM + CHR_SIZE * BGCHR_DEBUGMENU_MURAL, -1);
}
```

`StartMenu()` 会自己 `LockGame()`；如果从已有 proc 里打开，用
`StartLockingMenu(&MenuInfo_TestMain, parent)` 挂到父 proc 上，避免游戏逻辑继续跑。

### 2.4 子菜单/场景切换

参考 `DebugMenu_OnSelect_ClearFile()`：

```c
fu8 TestMenu_OnSelect_SubMenu(struct MenuProc * menu, struct MenuEntProc * ent)
{
    ClearUi();
    StartMenu(&MenuInfo_TestSub);

    return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A;
}
```

要点：

- 切子菜单前 `ClearUi()`，否则旧窗口残留；
- 需要保留父菜单时不要返回 `MENU_ACTION_END`；
- 场景执行完用 `MENU_ACTION_CLEAR` 清屏；
- `on_idle` 里读 `gKeySt->pressed/repeated`，不要自己轮询按键。

### 2.5 测试场景的两种落点

参考上一版 `promo-test-design.md` 的经验：

- **开机入口直接跑**：不需要进入地图，适合纯 UI/资源测试；
- **章開始 → 地图 → testmenu**：适合需要单位/地图/战斗的测试。
  但 `章開始` 会覆盖 `SAVE_GAME0`，且当前 `MenuInfo_Debug_LoadGame` 只有 3 项，
  第 4 项已被移除（见 `notes/chapter-entry-optional.c.txt`）。

### 2.6 已知的坑（来自 `promo-test-design.md`）

- 菜单 proc 是 game controller 的子进程时，`RestartGameAndChapter()` 会把它一起结束。
- `ProcScr_Menu` 会等 `ProcScr_CamMove`；事件/相机移动期间打开会延迟。
- 子菜单切换前要 `ClearUi()`。
- 菜单 DOWN 到底部会回绕；自动化测试用 UP 从第一项绕到最后一项。
- 从标题/主菜单进入 debug menu 会因标题淡出/调色板黑场而黑屏；开机入口没有这个问题。
- `章開始` 会写 `SAVE_GAME0`，仅 debug 使用。

## 3. 附录：另一套已删除的调试 UI（地图动画）

`vanilla/manim.c` 历史上还有一套 `StartDebugManim()`：不是 `MenuInfo` 菜单，而是
一个 proc 驱动的参数编辑器，改 PID/X/Y/JID/IID/5 个 hit 类型后按 A 启动
`StartBattleManim()`。它在 `0bc616c`（remove unused iwram data）里被删除，
当前 `include/manim.h` 还留着注释和 `ProcScr_ManimDebug` extern。

我从 `0bc616c^` 把这段完整恢复到：

- `notes/manim-debug.c.txt`：原 `vanilla/manim.c` 第 1251–1738 行；
- `notes/manim-debug.h.txt`：配套的 `MAX_MANIM_DEBUG_*` / `ManimDebugSt` 等定义。

对做 testmenu 的参考点是：proc + 手绘 Bg0 参数页、用方向键改值、构造
`gBattleHits` 后直接起 battle manim。它不是主 debug menu 的一部分，按需取用。

## 4. 构建集成

`Makefile` 的 `find-src` 排除 `src/Test/ref/*`，避免把参考副本（`debugtext.c` 等）
打进构建；然后显式加入两个真实实现：

```make
C_SRCS += $(HACK_SRC)/Test/ref/debugmenu.c $(HACK_SRC)/Test/ref/menuinfo_debug.c
```

两个 `.c` 的内容整体包在 `#if CONFIG_DEBUG_MENU` 里：

- `CONFIG_DEBUG_MENU=1`（debug）：正常编译，符号和原来一致；
- `CONFIG_DEBUG_MENU=0`：编译成空目标文件，不产生任何符号，`AgbMain()` 走 `StartGame()`。

`PNG_FILES` / `TSA_FILES` 也排除了 `src/Test/ref/*`，避免 `make clean` 把参考用的
`Img_DebugFont.4bpp` 当成生成物删掉。

另外，`vanilla/debugmenu.c` 已删除，旧的 `vanilla/debugmenu.o` 只是构建残留，
不在 `C_OBJS` 里，不会被链接。

## 5. 验证

```bash
make all
./tools/emu/run-tests.sh --quick
```

应看到 `src/Test/ref/debugmenu.c`、`src/Test/ref/menuinfo_debug.c` 被编译，
链接无重复符号；debug 构建开机进入 debug load game 菜单，行为不变。

## 6. 来源

- `HEAD 0413799`：`debug: boot into the debug load game menu`
- `25b50ae`：debugmenu/menuinfo 命名同步（#151）
- `tools/emu/promo-test-design.md`：debug menu 入口/锁/场景的实测记录
- 更早历史：`bdd7ac6` 首次加入，`7a1daa8` 曾整体移除，后续重新同步

