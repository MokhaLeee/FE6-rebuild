# testmenu / MSS 路线图

本文记录当前 testmenu 的状态、测试收敛计划和 MSS（modern statscreen）的后续工作。
原则：测试归测试，不为了测试往正常游戏代码里加 hook，也不按每个菜单项无限拆 case。

## 1. 当前状态

已完成：

- testmenu 顶层：`Start Game` / `Test`
- Test 子菜单：`Game` / `Save` / `Battle` / `Prep` / `Back`
- Game：`Chapter 1` / `Chapter 2`
- Save：`Write + Load` / `Write` / `Load` / `Corrupt Check`
- Battle：`Test Battle`，GDB 检查 `BattleAIS_ExecCommands` / `EfxAdvanceFrameLut`
- Prep：
  - `CHAPTER_TEST_PREP`（`has_prep=true`）
  - 9 个蓝方单位、8 个红方单位
  - Unit Select、Item Edit、Sortie、Helpbox、Statscreen、Save/Map
- MSS：能通过 Sortie → 地图 R 打开，case 先挂起
- `tools/emu`：legacy 套件归档，新 runner 按 case 分层

测试范围之外，仍然保持：

- 正常章节和 debug 第一章不依赖 test chapter
- test chapter 只在 `CONFIG_TEST_MENU` 下注册
- `CONFIG_TEST_MENU=0` 时 `CHAPTER_COUNT` 仍是 `0x2D`

## 2. 当前 case 清单

| # | case | 状态 |
|---|---|---|
| 1 | 开机 → Start Game → 章节 | 稳定 |
| 2 | 顶层 → Test → Back | 稳定 |
| 3 | Game → Chapter 1 | 稳定 |
| 4 | Save → Write + Load | 稳定 |
| 5 | Save 跨进程 Write → Load | 稳定 |
| 6 | Battle → banim GDB | 稳定 |
| 7 | Prep → 准备画面 | 稳定 |
| 8 | Prep → Unit Select / Item Edit | 稳定 |
| 9 | Prep → 出撃 → 地图 | 稳定 |
| 10 | Prep → helpbox | 稳定 |
| 11 | Unit Select → vanilla statscreen | 稳定 |
| 12 | Sortie → Map R → MSS | 挂起 |
| 13 | Prep → 記録する / マップを見る | 稳定 |
| 14 | Game → Chapter 2 | 稳定 |
| 15 | Save → Corrupt Check | 已实现，待提交 |

## 3. 测试收敛

现在 15 个 case 偏多，很多是同一个场景的不同按键步骤。建议收敛成 6 个核心 case：

| 核心 case | 合并内容 |
|---|---|
| menu | 1 + 2 |
| game | 3 + 14 |
| save | 4 + 5 + 15 |
| battle | 6 |
| prep | 7 + 8 + 9 + 10 + 11 + 13 |
| mss | 12（MSS 恢复后再启用） |

runner 保留：

```bash
./tools/emu/testmenu-tests.sh             # 核心集
./tools/emu/testmenu-tests.sh --quick     # menu + game + save smoke
./tools/emu/testmenu-tests.sh --case save # 单组
./tools/emu/testmenu-tests.sh --list
```

合并原则：

- 一个 case 可以有多组断言，不再一个菜单项一个脚本
- 截图/日志保留，但默认只跑核心集
- MSS、旧 prep 子界面等细节放到 `--full`，不占默认时间

## 4. MSS（modern statscreen）

### 4.1 先定范围

需要确认“适配 MSS”具体指哪一层：

1. 内容补齐：MSS 页面、帮助框、标题
2. 入口整理：加 `UI → MSS`，不再从 Prep 间接进
3. 验证：只保留一个 MSS smoke，不拆很多 case

### 4.2 入口

当前：

```
Test → Prep → Test Prep → Sortie → 地图 R → MSS
```

建议：

```
Test → UI → MSS
Test → UI → Vanilla Statscreen
Test → UI → Helpbox
```

UI 菜单项只负责启动对应场景，按键步骤放到测试脚本里。

### 4.3 内容待办

来自 `src/Core/Statscreen/modern-screen/README.md`：

- page 1：
  - 技能列表名称（图标 + 名字，最多 6 个）
  - B.Magic 列表
  - Cond / Affin / Con / Aid / Talk / 移动类型
- page 0：
  - 名字/职业、LV/HP、Con/Aid、技能列表
  - 角色描述文本（目前是占位符）
- 帮助框：MSS 内按 R
- 标题：整词艺术字、滑动、渐变继续打磨
- 面板装饰：图标、底栏提示、边框细节

### 4.4 验证

最终只保留一个 MSS 核心 case：

- `gMssSt.unit != NULL`
- vanilla `gStatScreenSt.unit == 0`
- 页面切换、帮助框至少各一条断言
- 不再为每个页面拆独立 case

## 5. 任务优先级

### P0

- [ ] 确认 MSS 适配范围（内容 / 入口 / 验证）
- [ ] 加 `UI` 分类和 MSS 入口
- [ ] 补 MSS page 1 / page 0 内容
- [ ] MSS 内帮助框

### P1

- [ ] 把 15 个 case 合并成 6 个
- [ ] 加 `--quick` / `--full`
- [ ] 处理 case 15 的提交或合并
- [ ] 更新 `src/Test/README.md` 的 case 清单

### P2

- [ ] Testmenu 分类定稿（Game / Save / Battle / Prep / UI / System）
- [ ] Game 章节按需扩展
- [ ] Battle 场景按需扩展
- [ ] 旧 debugmenu / legacy 文档收尾

## 6. 约定

- 不为了测试改正常游戏逻辑；需要测试数据就用 test chapter / fixture
- 不按每个菜单项无限增加 case
- 新 case 先问“能不能并进现有核心 case”
- 提交信息用英文
- 文档和代码路径保持可点击、可查
