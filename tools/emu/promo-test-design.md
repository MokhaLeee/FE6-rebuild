# PromoTest 设计草案（暂缓部署）

> 状态：本文记录 PromoTest 的设计思路、已验证的 debug menu 入口和经验。
> 相关 promo 测试夹具/脚本已从工作区退回；后续重新设计 debug menu 测试项时再按本文部署。
> 当前保留的 debug menu 功能：开机隐藏入口 `StartDebugMenu_LoadGame`、debug load game 菜单的
> `章開始` 项。

## 1. 目标

- 覆盖 promo UI 的所有改动：
  - 入场：调色板淡入、面板半透明、无单帧亮闪、入场图标同步；
  - 退场：UI 保留到黑场、stats alpha 不覆盖 darken、黑场后地图淡入、无亮闪；
  - 取消：不消耗道具、不转职；
  - 转职：class-change banim 正常播放；武器不匹配（Fire → Hero/General）走代表武器兜底；
  - 预览：15 项全部可走；无效 bid 走 -1 兜底不崩；
  - 输入锁：slide/spell 期间 A/B 被忽略；`ending` 后不再响应。
- 测试要**可人工复现**：入口走 debug menu，而不是隐藏按键组合。
- 测试项要**可配置**：场景、单位、目标职业、断言分开；以后新增场景不改框架。

## 2. debug menu 入口（已验证）

### 2.1 开机隐藏入口

`AgbMain()` 在 `StartGame()` 之前检查：

```c
#if CONFIG_USE_DEBUG
if ((gKeySt->held & (KEY_BUTTON_SELECT | KEY_BUTTON_START)) ==
    (KEY_BUTTON_SELECT | KEY_BUTTON_START))
    StartDebugMenu_LoadGame();
else
#endif
    StartGame();
```

- 开机时按住 `SELECT+START` → 原版隐藏的 `StartDebugMenu_LoadGame()`。
- 进入 debug load game 菜单：`リリースエントリ` / `どこでも再開` / `手再開` / `章開始`。
- `章開始`（原版被移除的入口，已恢复）：
  - LEFT/RIGHT 选章节；
  - A → `DebugMenu_OnSelect_StartChapter()` → `InitUnits()` → `WriteNewGameSave(SAVE_GAME0)` →
    `gPlaySt.chapter` → `RestartGameAndChapter()`；
  - 实测第 2 章正常进入世界地图开场，不是回到标题。
- 仅 debug 构建；`章開始` 会写 `SAVE_GAME0`，属于 debug 行为。

**为什么必须在 `StartGame()` 之前**：

- `StartDebugMenu_LoadGame()` 的菜单是当前 proc 的子进程；如果已经有 game controller 在跑，
  `RestartGameAndChapter()` 会 `Proc_EndEach(ProcScr_GameController)`，把菜单（controller 的子进程）一起带走。
- 从标题/主菜单进入时还叠加了标题的淡出/调色板黑场，菜单显示为黑屏。
- 开机入口没有 controller，`章開始` 自己 spawn 新的 game controller，所以正常。

### 2.2 地图上打开 debug menu（原型）

之前的原型是在 `BmVSync_Repeat()` 里检测 `SELECT+START`，调用
`PromoTest_OpenDebugMenu()`：`LockGame()` → `ClearUi()` → `StartMenu(&MenuInfo_DebugMain)` →
`DebugInitBg(BG_2, 0)`。

已验证的约束：

- 必须在地图（`BmVSync` 在跑）且**相机移动 proc 结束**后打开；`ProcScr_Menu` 会
  `PROC_WHILE_EXISTS(ProcScr_CamMove)`，在第二章开场事件/相机移动期间会等待。
- 菜单项 `UP` 一次可从第一项绕到最后一项（DOWN 会回绕，按 20 次不一定到最后）。
- `StartMenu` 切子菜单前要 `ClearUi()`；否则旧菜单的窗口 tile 会留在屏幕上。
- 菜单是 `StartMenu` 的当前 proc 子进程；如果从 game controller 里启动，之后
  `RestartGameAndChapter()` 结束 controller 会把菜单一起结束。测试项最好在稳定菜单上下文
  里启动，或沿用开机入口。

## 3. 测试项形态（待重新设计）

### 3.1 放置位置

候选：

1. **地图 debug 主菜单的子菜单**（`MenuInfo_DebugMain` 的 `テスト` 项）：
   - 适合“已经在游戏里”的测试；
   - 需要 `BmVSync` 的 `SELECT+START` 入口和菜单上下文；
   - 之前原型就是这一种。
2. **debug load game 菜单里加 `テスト` 项**：
   - 开机隐藏入口直接进入，没有 game controller 干扰；
   - 测试项可以先 `章開始` 到目标章节，再进入地图 debug 主菜单；
   - 更接近“原版隐藏入口”的流程。
3. 单独的测试菜单（从两者之一进入），场景 id 独立，不污染原版 debug 菜单。

建议：**场景注册表 + 一个测试子菜单**；入口二选一，场景项只负责设置状态/打开 promo，
断言全部在测试脚本。

### 3.2 场景夹具

上一版夹具（已退回）的设计：

```c
/* 仅 debug */
struct Unit *gPromoTestUnit;
u32 gPromoTestJid, gPromoTestLevel, gPromoTestItem0, gPromoTestItem1;
u32 gPromoTestPromoted, gPromoTestIconsSynced, gPromoTestCanInput;
u32 gPromoTestLastBid, gPromoTestBadBid, gPromoTestMenuOpen;

PromoTest_SetupUnit(variant);
PromoTest_StartScenario(id);
```

- 单位：`GetUnit(1)` → `pinfo = Lugh`，`jinfo = Mage`，Lv10，`items = { Guiding Ring, Fire }`。
- 变体：
  - `Fire`：正常；
  - `no weapon`：只带 Guiding Ring；
  - `invalid bid`：`gPromoTestBadBid = 1`，`Promo_GetPreviewBid()` 返回 -1；
  - `item menu`：只设置单位，不打开 promo，留给真实道具菜单。
- 目标职业：由测试脚本在 promo UI 里选（Sage/Bishop/Druid/Hero/General）。

### 3.3 测试脚本入口

- 地图 debug menu：`SELECT+START` → `UP` → `テスト` → 场景；
- 或开机隐藏入口 → `章開始` → 章节 → 地图 → debug menu → `テスト`。

## 4. 测试框架（上一版有效结构）

### 4.1 结构

- `testlib.sh`：启动到 prep、debug menu 导航、校准、内存探针、stats/截图断言、相位扫描。
- `promo-tests.sh`：场景表 + 断言。
- 每个场景：
  1. 跑一次 **calibration**：同样启动/menu，但只在 24700..25300 抓
     `gPromoTestCanInput`，找到第一个 `1` 的帧（UI 可输入帧）；
  2. 正式跑：同一启动/menu，把场景按键放在 `UI_READY + 相对偏移`；
  3. 用 stats/probe **扫描**入场/淡出/banim 相位，不写死绝对帧。

### 4.2 关键探针

| 探针 | 用途 |
|---|---|
| `gPromoTestJid` / `Item0` / `Item1` | 转职前/后职业、道具（Guiding Ring 是否消耗） |
| `gPromoTestPromoted` | 是否走完转职 |
| `gPromoTestIconsSynced` | `PromoSel_Init` 是否调用了 `ForceSyncUnitSpriteSheet()` |
| `gPromoTestCanInput` | `PromoSel_Loop` 输入可用的第一帧（校准锚点） |
| `gPromoTestLastBid` | `Promo_GetPreviewBid()` 的返回值（0xFFFFFFFF = -1） |
| `gPromoTestBadBid` | 场景是否强制无效 bid |
| `gPromoTestMenuOpen` | debug menu 是否由测试打开（B 时解锁 game） |
| `gPal+0x20` / `0x04000050` | 调色板淡入 / `BLDCNTR` alpha vs darken |
| `0x04000054` | `BLDY`（darken/alpha 的 y/系数，注意 alpha 时是 0x0808） |

### 4.3 相位扫描

- 入场：从场景启动帧到 `CanInput` 帧，找全黑帧、首帧暗 UI、`gPal` 淡入、`BLDCNTR` alpha、
  无过亮闪帧；
- 退场：A/B 后逐帧找 UI 保留帧、黑帧、`gPal` 恢复、alpha → darken；
- 地图淡入：黑帧后 mean 单调上升、无亮闪；
- banim：扫描 `colors <= 20 && mean >= 230` 的白闪帧，随后 `colors >= 100 && mean 120..200`
  的数值界面，再 `colors >= 250`/mean 高的地图帧；
- 取消：转职前/后 `jid`、`item0`、`promoted` 不变。

### 4.4 场景清单（上一版 46 项）

| 场景 | 子菜单 | UI 操作 | 断言 |
|---|---|---|---|
| entrance | Fire | 无 | 黑帧、暗首帧、`gPal` 淡入、alpha、无闪、图标同步 |
| cancel | Fire | B | UI 保留、调色板恢复、alpha→darken、地图淡入、状态不变 |
| sage | Fire | A | 转职、白闪、数值界面、回地图 |
| general | Fire | DOWN,RIGHT,A | Fire → General 兜底仍播 class-change |
| hero | Fire | DOWN,A | 同上 |
| noweapon | no weapon | DOWN,RIGHT,A | 不崩、仍完成转职 |
| badbid | invalid bid | RIGHT | last bid = -1、UI 保持 |
| walk | Fire | 多项移动 | 15 项 bid 有效、UI 正常 |

## 5. 已踩的坑

1. **proc 父子关系**：菜单/测试项从 game controller 启动时，`RestartGameAndChapter()`
   结束 controller 会连带结束菜单；必须用开机入口（无 controller）或让 controller 等待。
2. **相机等待**：`ProcScr_Menu` 会等 `ProcScr_CamMove`；在事件/相机移动期间打开会延迟。
3. **子菜单清屏**：`StartMenu` 切子菜单前要 `ClearUi()`，否则旧菜单窗口残留。
4. **DOWN 回绕**：菜单 DOWN 到底部会回绕到顶部；测试用 `UP` 一次从第一项绕到最后 `テスト`。
5. **标题淡出后黑屏**：从标题/主菜单启动 debug load game 会黑屏；开机入口没有这个问题。
6. **`StartChapter` 入口被移除**：原版 `MenuEntInfo_Debug_LoadGame` 只有 3 项；
   `DebugMenu_OnInit_LoadGame()` 里的 `menu->entries[3]->id = CHAPTER_1` 就是给被移除的
   `StartChapter` 项留的；恢复第 4 项后章节选择的 id 才正常。
7. **`章開始` 会写 `SAVE_GAME0`**：debug-only，测试前注意备份/接受覆盖。
8. **直接 promo 没有 mural**：在事件地图上直接 `StartBmDemoPromotion` 时，半透明面板会透出
   地图而不是 mural；视觉基线要和真实入口区分，或先到真正的战斗/prep 地图。
9. **prep 地图不能使用转职道具**：prep 的「アイテム整理」没有“使う”；真实道具菜单必须在
   战斗地图。端到端道具路径需要稳定的自由地图时机。
10. **性能/帧号**：启动流程长（约 24500 帧到 prep），固定帧很脆；用 `gPromoTestCanInput`
    校准 + 相位扫描。

## 6. 当前保留/退回

保留：

- `src/Common/crt0/main.c`：开机 `SELECT+START` → `StartDebugMenu_LoadGame()`；
- `vanilla/menuinfo.c`：debug load game 菜单的 `章開始` 项；
- `tools/emu/README.md`：debug menu 入口说明 + 本文链接。

已退回：

- `PromoTest.c` / `promo-test.h` 夹具；
- 地图 debug 主菜单的 `テスト` 子菜单和 `BmVSync` 打开钩子；
- `tools/emu/testlib.sh` / `promo-tests.sh`；
- `PromotionUI.c` 里的 `gPromoTest*` 探针、`gPromoTestCanInput`/`gPromoTestIconsSynced` 等。

## 7. 后续设计问题

- 测试项放地图 debug 主菜单、debug load game 菜单，还是独立测试菜单？
- 场景 id 和夹具是否放到单独文件/单独 config（如 `CONFIG_PROMO_TEST`），避免 debug 菜单膨胀？
- 测试入口如何在“隐藏入口 → 章開始 → 地图 → 测试菜单”之间最短、最稳定？
- 端到端道具菜单（真实 Guiding Ring 使用）如何稳定复现？
- 探针按场景保留，还是统一一个 `struct PromoTestState`？
- 测试脚本和 `run-tests.sh` 的关系（独立脚本 / `--with-promo`）。
