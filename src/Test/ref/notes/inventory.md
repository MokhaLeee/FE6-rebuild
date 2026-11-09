# debug menu 相关内容清单

搜索基准：`HEAD 0413799`（`debug: boot into the debug load game menu`）。
搜索方式：`grep -rn "DebugMenu\|debugmenu\|DebugMain\|DebugInitBg\|DebugInitObj"`，
再按调用关系人工确认。

> **现状**：新 testmenu 已接管 debug 入口（`CONFIG_TEST_MENU=1`），
> `CONFIG_DEBUG_MENU=0`。本目录的 debugmenu 当前不参与 ROM 行为，只作参考/回退；
> 新测试见 `tools/emu/testmenu-tests.sh`。

## 1. 已迁入 / 复制到本目录的文件

| 原路径 | 本目录 | 状态 |
|---|---|---|
| `vanilla/debugmenu.c` | `debugmenu.c` | **已迁入**；`CONFIG_DEBUG_MENU=1` 时才产生符号，当前为 0 |
| `vanilla/menuinfo.c`（第 33–184、802–837 行） | `menuinfo_debug.c` | **已迁入**；5 张 `MenuEntInfo_*` 表 + 5 个 `MenuInfo_*` 定义，随宏构建 |
| `include/menuinfo.h`（debug 部分） | `menuinfo_debug.h` | **已迁入**；上述 `MenuInfo_*` 的 extern 声明 |
| `include/debugmenu.h` | （仍留在 `include/`） | 公开接口头，内容受 `CONFIG_DEBUG_MENU` 保护，当前为空 |
| `vanilla/debugtext.c` | `debugtext.c` | 参考副本；正本仍在 vanilla（`talk.c`/`worldmapfx.c` 也在用） |
| `include/debugtext.h` | `debugtext.h` | 参考副本 |
| `vanilla/debugtext_img.s` | `debugtext_img.s` | 参考副本 |
| `vanilla/data/debug_text/Img_DebugFont.4bpp` | `data/debug_text/Img_DebugFont.4bpp` | 参考副本 |
| `vanilla/data/debug_text/Img_DebugFont.png` | `data/debug_text/Img_DebugFont.png` | 参考副本 |
| `tools/emu/legacy/promo-test-design.md` | `notes/promo-test-design.md` | 历史文档副本 |

## 2. 相关但未复制的文件（按需查阅原路径）

| 路径 | 关系 |
|---|---|
| `src/Common/crt0/main.c:62-70` | 入口顺序：`CONFIG_TEST_MENU` → `StartGame_TestMenu()`；否则 `CONFIG_DEBUG_MENU` → `StartDebugMenu_LoadGame()`；否则 `StartGame()` |
| `src/Test/testmenu/testmenu.c` | **当前 testmenu 实现**：`Start Game` / `Dummy`、Roy/Lilina 两张脸 |
| `include/hacks/testmenu.h` | testmenu 的公开入口 `StartGame_TestMenu()` |
| `tools/emu/testmenu-tests.sh` | 新测试入口，当前覆盖 testmenu → Start Game → 章节 |
| `include/configs/configs/config-debug.h` | `CONFIG_TEST_MENU` / `CONFIG_DEBUG_MENU` / `CONFIG_DEBUG_LEVEL` 开关 |
| `include/menu.h` / `vanilla/menu.c` | 通用菜单引擎：`MenuInfo`、`MenuEntInfo`、`MenuProc`、`StartMenu`/`EndMenu` |
| `include/proc.h` | proc 框架（菜单条目本身也是 proc） |
| `include/ui.h` / `vanilla/ui.c` | `ClearUi`、`PutUiWindowFrame`、`TM_OFFSET` 等 |
| `include/text.h` / `vanilla/text.c` | `InitText`/`Text_InsertDrawString`/`PutText` |
| `include/statscreen.h` / `vanilla/statscreen.c` | `StartMuralBackground()`：菜单背景 mural |
| `include/save_core.h` / `vanilla/save_core.c` | `RestartGameAndChapter`、`RestartGameAndLoadSuspend`、`SoftReset` |
| `include/save_game.h` / `vanilla/save_game.c` | `WriteNewGameSave`、`WriteGameSave`、`Read*Save*` |
| `include/savemenu.h` / `vanilla/savemenu.c` | `StartSaveMenu()`（`DebugMenu_OnSelect_SaveMenu` 使用） |
| `include/face.h` / `vanilla/face.c` | `StartFace`/`EndFaceById`；testmenu 用 `FID_ROY` + `FID_LILINA` |
| `include/constants/faces.h` | `FID_ROY` / `FID_LILINA` 别名，以及 `FID_61/63/66/67` |
| `include/bm.h` | `struct PlaySt` 的 `debug_control_red:2` / `debug_control_green:2` 位域 |
| `vanilla/chapter.c:74-75` | 章节初始化时清零 `debug_control_red/green` |
| `include/constants/videoalloc_global.h` | `BGCHR_DEBUGTEXT_DEFAULT=0x2C0`、`OBCHR_DEBUGTEXT_DEFAULT=0x180`、`BGPAL_DEBUGTEXT=0` |
| `include/constants/chapters.h` | `CHAPTER_1`/`CHAPTER_COUNT` |
| `tools/emu/README.md` | 新 testmenu 测试入口；旧 debug menu 入口说明已标为过时 |
| `docs/upstream-sync.md` / `docs/upstream-sync-plan-7927a77.md` | 记录 #151 debugmenu/menuinfo 命名同步 |
| `src/Debugs/debug-event.c` | **不是菜单**：`CONFIG_USE_DEBUG` 下的调试章节事件/单位配置，可作 testmenu 场景夹具参考 |
| `include/hacks/debug.h` | **不是菜单**：`dprintf`/`LTRACEF` 调试日志宏 |

## 3. 关键调用关系

```
AgbMain() [src/Common/crt0/main.c]
  ├─ CONFIG_TEST_MENU → StartGame_TestMenu() [src/Test/testmenu/testmenu.c]
  │    ├─ InitBmDisplay(); DebugInitBg(BG_2, 0);
  │    ├─ StartMuralBackground(StartMenu(&test_menu_info), ...)
  │    ├─ on_init: StartFace(FID_ROY) + StartFace(FID_LILINA)
  │    ├─ Start Game → StartGame()
  │    └─ Dummy     → 占位
  │
  └─ elif CONFIG_DEBUG_MENU → StartDebugMenu_LoadGame() [debugmenu.c]
       ├─ InitBmDisplay(); DebugInitBg(BG_2, 0);      // 清屏 + 载入 debug 字体
       ├─ StartMuralBackground(StartMenu(&MenuInfo_Debug_LoadGame), ...)
       │    └─ MenuInfo_Debug_LoadGame [menuinfo_debug.c]
       │         ├─ on_init  = DebugMenu_OnInit_LoadGame()
       │         ├─ on_end   = DebugMenu_OnEnd_LoadGame()
       │         └─ entries  = MenuEntInfo_Debug_LoadGame[]
       └─ DebugPutStr(gBg2Tm + ..., "DB INTERRUPT AVAILABLE")

MenuInfo_DebugMain [menuinfo_debug.c]
  └─ 由 StartDebugMainMenu() 打开（当前树中没有调用者）
       ├─ DebugMenu_OnSelect_Map           → gPlaySt.chapter / RestartGameAndChapter
       ├─ DebugMenu_Display/Idle_DebugInfo → ProcDebugMonitor.debug_info
       ├─ DebugMenu_Display/Idle_Weather   → SetWeather()
       ├─ DebugMenu_Display/Idle_Fog       → SetFogVision()
       ├─ DebugMenu_Display/Idle_Playthroughs → global save
       ├─ DebugMenu_OnSelect_ClearFile     → MenuInfo_DebugClearFile
       ├─ DebugMenu_OnSelect_Sleep         → func_fe6_0800285C(L|R)
       └─ MenuInfo_DebugSuspend / DebugCpControl
```

## 4. 当前树里的“死代码/半成品”提示

- `StartDebugMainMenu()`（原地图 debug 主菜单）在当前树中**没有调用者**。
  原版的地图内打开方式可能在被反编译的汇编/未命名函数里，或已随上游移除。
  自己的 testmenu 需要自己决定入口。
- `DebugApplyBonusLevelsToCursorUnit()` 也没有调用者（原地图菜单快捷加 20 级）。
- `ProcScr_DebugMonitor[]` 只有 `PROC_END`，是空壳；`FindProc(ProcScr_DebugMonitor)`
  在 debug 主菜单里被使用，如果没人 spawn 它，`proc` 为空。当前没有入口，
  所以不会触发；自己做 testmenu 时不要照抄这个空壳。
- `DebugMenu_OnInit_LoadGame()` 的 `menu->entries[3]->id = CHAPTER_1;`
  对应已被移除的第 4 项「章開始」，见 `notes/chapter-entry-optional.c.txt`。

## 5. 迁移后的编译适配

`vanilla/debugmenu.c` 原来由 agbcc 编译，搬到 `src/Test/ref` 后由 devkitARM GCC 编译，
做了三处等价修改（详见 `README.md` §1.0）：

- 14 处 `#if BUGFIX / return 0; / #endif` → 无条件 `return 0;`；
- `DebugClearFileMenu_OnSelect_Confirm()` 的 `u32 unused[4];` 加 `(void) unused;`；
- 天气菜单的 `% DEBUG_WEATHER_COUNT` → `DebugWeatherIndex()` 减法取模，
  避免 `__aeabi_idivmod` 未定义。

`CONFIG_DEBUG_MENU` 定义在 `include/configs/configs/config-debug.h`，默认等于
`CONFIG_USE_DEBUG`；两个 `.c` 的内容整体包在 `#if CONFIG_DEBUG_MENU` 内。
