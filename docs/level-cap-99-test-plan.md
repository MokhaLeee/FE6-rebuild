# 等级上限 99 / 转职保留等级：测试计划

> 版本：v1（2026-11-09）
>
> 关联文档：[等级上限 99 改动方案](level-cap-99-promotion.md)
>
> 被测版本：工作区当前未提交改动（8 个功能代码文件 + case 16 测试；`UNIT_LEVEL_MAX = 99`，转职保留等级，转职经验清零，属性上限不变）。

---

## 1. 测试目标

验证以下五条验收标准，且不破坏现有流程：

| 编号 | 验收标准 |
| --- | --- |
| R1 | 角色等级可以升到 99；99 级后不再升级、不再涨属性 |
| R2 | 转职后等级保持转职前的值，不重置为 1 |
| R3 | 转职后经验清零；99 级转职后经验为 `0xFF`（不再获得经验） |
| R4 | 属性上限保持原样（约 30 级后升级不涨属性是**预期行为**，不算失败） |
| R5 | 存档格式不变；旧存档可读，99 级可正常存取 |

## 2. 测试范围

### 2.1 本次覆盖

- 升级边界：98 → 99、99 级封顶、经验哨兵 `0xFF`。
- 转职：20 级转职、99 级转职、转职动画、转职前后属性/职业变化。
- 存档：99 级写入/读出、跨进程读档、旧等级存档。
- 界面：状态画面、准备画面、部队列表、竞技场对手的 99 级显示。
- 战斗：Devil 武器反伤率、99 级正常战斗。
- 竞技场：高等级对手等级不截断、不强制回到 20。
- 自动等级：promoted 敌人属性与改动前一致。
- 回归：现有 16 个 testmenu case 全过。

### 2.2 本次不覆盖（另行立项）

- 提高职业属性上限、HP 上限。
- 经验曲线重调（`+20`、`31 - expLevel`、击杀经验常量）。
- 敌方等级超过 31（需要改 `UnitInfo` 布局）。
- 竞技场强度曲线重做。
- 旧版 5-bit 存档结构（当前未启用）。

## 3. 测试环境

### 3.1 构建

```bash
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export PATH=$DEVKITPRO/tools/bin:$DEVKITARM/bin:$PATH

cd /home/mokha/FE6-rebuild
make all
```

> `PATH` 必须包含 `$DEVKITPRO/tools/bin`，否则 Makefile 第 427 行的 `gbafix` 会报找不到。

### 3.2 模拟器测试

```bash
./tools/emu/build.sh              # 首次准备；之后只需重编 gbarun（约 1 秒）
./tools/emu/testmenu-tests.sh     # 全量 17 个 case
./tools/emu/testmenu-tests.sh --case 4
./tools/emu/testmenu-tests.sh --list
```

产物与日志：`tools/emu/.build/out-testmenu/`。

### 3.3 手动/单步调试工具

```bash
GB=./tools/emu/.build/gbarun

$GB fe6re.gba --quiet --frames 20000 --sym fe6re.sym \
    --probe "gTestMenuProbe+0x0A:16" \
    --probe "gTestMenuProbe+0x0C:32" \
    --stats 20000 --shot 20000 --out /tmp/fe6-shots

# 存档导出/回灌
$GB fe6re.gba --quiet --frames 6000 --save-out /tmp/fe6.sav
$GB fe6re.gba --quiet --frames 6000 --sav /tmp/fe6.sav
```

GDB（用于 banim/升级动画断点）：

```bash
$GB fe6re.gba --gdb-at 7000 --frames 30000 --sym fe6re.sym &
arm-none-eabi-gdb fe6re.elf \
    -ex "target remote 127.0.0.1:2345" \
    -ex "break Efxleveluphb_Init" -ex "continue"
```

## 4. 测试分层

| 层级 | 内容 | 执行方式 |
| --- | --- | --- |
| L1 构建 | 编译、链接、ROM 生成 | `make all` |
| L2 冒烟 | 开机、testmenu、章节 1 | testmenu case 1/3 |
| L3 回归 | 现有 17 个 case（存档、banim、准备、MSS、Level Cap、Map Test） | `testmenu-tests.sh` |
| L4 功能 | 等级/转职/竞技场/Devil/自动等级 | 新增 testmenu case + 单步 probe/GDB |
| L5 手工 | 转职动画、界面观感、竞技场手感 | 人眼 + 截图 |
| L6 对比 | promoted 敌人 autolevel 与基线一致 | 旧版 ROM 对比 |

## 5. 测试数据与探针

### 5.1 探针结构

`struct TestMenuProbe`（`include/hacks/test_probe.h`，size `0x20`）：

| 偏移 | 字段 | 用途 |
| --- | --- | --- |
| `+0x04` | `menu` | 当前菜单 id |
| `+0x05` | `state` | 0 none / 1 menu / 2 running / 3 done / 4 failed |
| `+0x06` | `category` | 领域 id |
| `+0x07` | `case_id` | 领域内 case id |
| `+0x08` | `step` | 多步 case 的步骤 |
| `+0x0A` | `flags` | 断言位图 |
| `+0x0C` | `value[0..3]` | 观测值（等级、经验、jid 等） |

### 5.2 构造测试单位

建议在 test-only 代码里直接构造，不依赖正常流程升到 99：

```c
struct Unit unit;
ClearUnit(&unit);
unit.pinfo = GetPInfo(PID_ROY);
unit.jinfo = GetJInfo(JID_ROY);
unit.level = 20;
unit.exp = 0;
unit.max_hp = 20;
unit.hp = 20;
```

- 升级测试：复制到 `gBattleUnitA.unit`，设置 `id` 为有效蓝方槽位，调用 `CheckBattleUnitLevelUp()`。
- 转职测试：`UnitPromote(&unit, -1)`；`JID_ROY → JID_ROY_PROMOTED`，`JID_CAVALIER → JID_PALADIN`。
- 99 级存档：沿用 `TEST_SCENE_SAVE_LEVEL` 机制；当前值是 9，测试时改为 99，跑完恢复。
- 随机数：涉及自动等级/竞技场的用例必须先固定 RNG 种子，避免结果漂移。

### 5.3 关键观测点

- `unit->level`、`unit->exp`、`unit->jinfo->id`。
- `gBattleUnitA.unit.level/exp`。
- `gEkrLvupPostLevel`（转职动画）。
- `gArenaSt.opponent_level`、`gArenaOpponent.level`。
- `gTestMenuProbe.flags/value`。

## 6. 测试用例

优先级：P0 = 提交前必须通过；P1 = 应该通过；P2 = 有余力再做。

### 6.1 构建与冒烟

| ID | 优先级 | 方式 | 场景 | 预期 |
| --- | --- | --- | --- | --- |
| BLD-01 | P0 | 自动 | 增量 `make all` | 退出码 0，生成 `fe6re.gba/.elf/.sym` |
| BLD-02 | P0 | 自动 | 全量 `make all`（可选 clean） | 无 `-Werror` 失败，无链接错误 |
| SMK-01 | P0 | 自动 | `testmenu-tests.sh --case 1` | 开机进 testmenu，Start Game 进章节 |
| SMK-02 | P0 | 自动 | `testmenu-tests.sh --case 3` | Game → Chapter 1 正常 |
| SMK-03 | P0 | 自动 | `testmenu-tests.sh` | 17 case / 39 断言全过 |

### 6.2 等级上限

| ID | 优先级 | 方式 | 步骤 | 预期 |
| --- | --- | --- | --- | --- |
| LVL-01 | P0 | 自动 | 单位 98 级，`exp = 99`，获得 100 经验后调用 `CheckBattleUnitLevelUp` | `level == 99`，`exp == 0xFF`，不会到 100 |
| LVL-02 | P0 | 自动 | 99 级单位，`exp = 0xFF`，再次结算经验 | 不升级，`exp` 保持 `0xFF` |
| LVL-03 | P0 | 自动 | 99 级单位，强行把 `exp` 设为 0 后结算 | 不升级、不涨属性，`exp` 回到 `0xFF` |
| LVL-04 | P0 | 自动 | 反复升级超过 99 次 | `level` 始终 ≤ 99 |
| LVL-05 | P1 | 自动 | 蓝方单位在 99 级经 `UnitInitStats` / `UnitChangeFaction` | `exp == 0xFF` |
| LVL-06 | P1 | 自动 | 蓝方单位在 20 级经同样初始化 | `exp == 0`，可继续升级 |
| LVL-07 | P1 | 手动/截图 | 状态画面、准备画面显示 99 级 | 显示 `99`，不串格、不显示 `--` |
| LVL-08 | P2 | 自动 | 99 级单位经验条/经验数字 | 经验显示 `--`（`0xFF` 哨兵） |

### 6.3 转职

| ID | 优先级 | 方式 | 步骤 | 预期 |
| --- | --- | --- | --- | --- |
| PRO-01 | P0 | 自动 | 20 级单位 `UnitPromote(unit, -1)` | `level == 20`，`exp == 0`，`jinfo` 变为 promoted |
| PRO-02 | P0 | 自动 | 99 级单位 `UnitPromote(unit, -1)` | `level == 99`，`exp == 0xFF` |
| PRO-03 | P1 | 自动 | 转职前后属性对比 | 属性仍按“减旧职业 base、加新职业 base”计算，等级不参与 |
| PRO-04 | P1 | 自动 | 转职后立刻结算一场战斗经验 | 20 级转职可继续升级；99 级转职不再获得经验 |
| PRO-05 | P1 | 手动/截图 | 用转职道具或事件转职，观察动画 | 动画显示的等级是实际等级（如 20），不是 1 |
| PRO-06 | P2 | 自动 | 转职预览（Promo_DrawStats） | 预览属性与实际转职后一致 |

### 6.4 存档

| ID | 优先级 | 方式 | 步骤 | 预期 |
| --- | --- | --- | --- | --- |
| SAV-01 | P0 | 自动 | 临时把 `TEST_SCENE_SAVE_LEVEL` 改为 99，跑 case 4 | 写读后等级仍为 99，checksum 正确 |
| SAV-02 | P0 | 自动 | 同上，跑 case 5（跨进程） | 第二次启动 Load 后等级 99 |
| SAV-03 | P1 | 自动 | 用改动前的存档（等级 ≤ 20）启动并读档 | 正常读入，可继续升级到 99 |
| SAV-04 | P1 | 自动 | 99 级 + `exp = 0xFF` 存档 → 读档 | `exp` 仍为 `0xFF`，不变成可升级 |
| SAV-05 | P2 | 自动 | 99 级存档后改坏一个字节 | `IsSaveValid()` 失败（case 15 逻辑） |

### 6.5 战斗与 Devil 武器

| ID | 优先级 | 方式 | 步骤 | 预期 |
| --- | --- | --- | --- | --- |
| BAT-01 | P1 | 自动 | 99 级单位正常攻击/被攻击 | 战斗结算正常，无崩溃 |
| BAT-02 | P0 | 自动/白盒 | 1 级 Devil 武器反伤率 | 约 20%，不能恒为 0 |
| BAT-03 | P0 | 自动/白盒 | 20 级 Devil 武器反伤率 | 约 1%（原版公式 `21 - level`） |
| BAT-04 | P0 | 自动/白盒 | 22、50、99 级 Devil 武器反伤率 | 约 1%，**不是 100%**（负值不能被当成 65535） |
| BAT-05 | P2 | 统计 | 99 级 Devil 武器 1000 次攻击 | 自伤次数 < 5%，且 > 0 |

> 说明：BAT-02~04 最好把 `21 - level` 抽成 `GetDevilReversalChance(level)` 后做确定性断言；否则只能用固定种子做统计断言。

### 6.6 竞技场

| ID | 优先级 | 方式 | 步骤 | 预期 |
| --- | --- | --- | --- | --- |
| ARE-01 | P0 | 自动/白盒 | `ArenaGetOpposingLevel(99)` 多次调用 | 结果始终在 1~99，不出现 103 |
| ARE-02 | P0 | 自动 | 99 级玩家进入竞技场 | 对手等级不是 3 级（32 取模结果），也不是永远 20 |
| ARE-03 | P1 | 自动 | 读取 `gArenaSt.opponent_level` / `gArenaOpponent.level` | 两者一致，且 ≤ 99 |
| ARE-04 | P1 | 手动/截图 | 竞技场对手详情界面 | 等级显示与实际一致，不串格 |
| ARE-05 | P2 | 自动 | 1 级玩家竞技场 | 对手等级仍为 1~5 左右，行为与旧版一致 |

### 6.7 自动等级（重点回归）

| ID | 优先级 | 方式 | 步骤 | 预期 |
| --- | --- | --- | --- | --- |
| AUT-01 | P0 | 对比 | 用 `git archive HEAD` 在 `/tmp` 构建改动前 ROM，固定 RNG 种子进同一章 | 同一 promoted 敌人的属性与改动后完全一致（19 级自动成长未被写成 98） |
| AUT-02 | P1 | 对比 | 同上，检查非 promoted 敌人 | 属性一致 |
| AUT-03 | P2 | 对比 | 困难模式 bonus levels | 属性一致 |

> 如果完整基线构建太重，至少对 `UnitAutolevel()` 做一次白盒断言：promoted 分支传入的 `levelCount == 19`。

### 6.8 回归

| ID | 优先级 | 方式 | 场景 |
| --- | --- | --- | --- |
| REG-01 | P0 | 自动 | 章节 1 / 章节 2（case 3/14） |
| REG-02 | P0 | 自动 | 存档写读、跨进程、坏档（case 4/5/15） |
| REG-03 | P0 | 自动 | Battle → Test Battle → banim（case 6） |
| REG-04 | P0 | 自动 | 准备画面、菜单、出击、帮助框（case 7~10） |
| REG-05 | P0 | 自动 | Statscreen / MSS（case 11/12） |
| REG-06 | P0 | 自动 | 准备画面存档/地图（case 13） |

## 7. 自动化实现（已落地）

### 7.1 新增 testmenu case

已实现 `System` 分类 + `Level Cap` 综合用例：

- `src/Test/cases/system/system_cases.c` / `.h`
- `MenuInfo_TestSystem`：`Level Cap` / `Back`
- TestRoot 新增 `System` 入口
- `tools/emu/testmenu/cases/16-level-cap.sh`
- `testmenu-tests.sh` 注册 case 16

`Level Cap` 内部按顺序执行并设置 flags：

1. 98 级 + 100 经验 → 断言 99 / `0xFF`（bit0）。
2. 99 级再结算 → 断言不升级、`exp` 回 `0xFF`（bit1）。
3. 20 级转职 → 断言 `level == 20`、`exp == 0`、`jid` 变化（bit2）。
4. 99 级转职 → 断言 `level == 99`、`exp == 0xFF`（bit3）。
5. `ArenaGetOpposingLevel(99/1)` 各 64 次 → 断言 1~99（bit4）。
6. `GetDevilReversalChance(1/20/21/22/99)` → 断言 20/1/1/1/1（bit5）。
7. `UnitAutolevel()` 与手工 19 级 + (level-1) 级同种子对比属性 → 断言一致（bit6）。
8. 写读 99 级章节存档 → 断言 level 99 / exp 3（bit7）。

shell 断言：`state == 3`、`flags == 255`、`value0 == 99`、`value1 == 255`、`value3 == 99`。

### 7.2 探针位图

| flags 位 | 含义 |
| --- | --- |
| bit0 | 98→99 升级通过 |
| bit1 | 99 级封顶通过 |
| bit2 | 20 级转职保留等级通过 |
| bit3 | 99 级转职保留等级/经验哨兵通过 |
| bit4 | 竞技场等级夹取通过 |
| bit5 | Devil 反伤率下限通过 |
| bit6 | promoted 自动等级 19 通过 |
| bit7 | 99 级存档往返通过 |

`value[0]` = 升级后 level；`value[1]` = 升级后 exp；`value[2]` = 转职后 jid；`value[3]` = 读档后 level。

### 7.3 脚本

```bash
./tools/emu/testmenu-tests.sh --case 16
```

实际输入序列（见 `16-level-cap.sh`）：顶层 DOWN/A → TestRoot DOWN×3/A → System A。

### 7.4 可测试性改动（已完成）

- `GetDevilReversalChance(int level)` 已从 `battle.c` 抽出并在 `battle.h` 暴露；用例直接断言 1/20/21/22/99 级。
- 竞技场用固定 `RandInit(1)` 做夹取断言。
- 自动等级用同一 RNG 种子对比 `UnitAutolevel()` 与手工 19 级路径，防止常量被改回 98。

### 7.5 地图真实按键测试（已完成，case 17）

`Test Chapter → 出撃 → Map Test` 复用统一测试章节 `CHAPTER_TEST`（原 test battle + test prep 合并，不新增章节）：

- test event `TestLevelCap_SetupBattle()` 把 Roy 设为 98 级/99 经验，旁边放 99 级 1 HP 敌人。
- shell 通过 `--hold` 真实按键：选 Roy → 行动菜单 → 攻撃 → 战斗预测 → 开战 → 每 60 帧 A 推进。
- 断言地图单位 `level == 99`、`exp == 0xFF`。
- 同一个事件里还验证：地图上 20 级转职保留等级。

## 8. 手工验证清单

| 项目 | 步骤 | 通过标准 |
| --- | --- | --- |
| 转职动画 | 用转职道具/事件让 20 级角色转职 | 动画内等级显示 20，不是 1；职业名/属性变化正确 |
| 99 级状态画面 | 把角色改为 99 级后打开状态画面 | 等级显示 99，经验显示 `--`，不串格 |
| 准备画面 | 99 级角色进入准备画面 | 等级 99 显示正常 |
| 部队列表 | 99 级角色进入部队列表 | 等级 99 与经验列不重叠 |
| 竞技场 | 99 级角色进竞技场 | 对手等级合理，不是 3 级/永远 20；详情界面显示正常 |
| Devil 武器 | 99 级角色装备 Devil 武器打若干场 | 不是每次都自伤；自伤率明显低 |
| 自动等级敌人 | 进同一章对比旧 ROM 的同名敌人属性 | 数值一致 |

## 9. 进入 / 退出标准

### 进入标准

- `make all` 通过，生成可运行的 `fe6re.gba`。
- `tools/emu/.build/gbarun` 已构建。
- 工作区只有本次相关改动（8 个功能代码文件 + 测试/文档）。

### 退出标准

- 所有 P0 用例通过。
- P1 用例通过，或有不通过项但已记录为已知问题并经确认。
- 现有 17 个 testmenu case / 39 项断言全过。
- 生成测试报告：执行了哪些用例、结果、未执行项及原因。
- 没有 S1/S2 级未解决缺陷。

## 10. 缺陷分级

| 等级 | 定义 | 例子 |
| --- | --- | --- |
| S1 | 崩溃、卡死、存档损坏/丢失 | 99 级读档崩溃；存档写坏 |
| S2 | 核心功能错误 | 等级能到 100；转职仍重置等级；经验哨兵错误 |
| S3 | 显示/平衡问题 | 转职动画显示 1；竞技场强度异常；99 级显示串格 |
| S4 | 测试/文档缺口 | 缺少自动化 case；文档未更新 |

## 11. 风险与限制

- **RNG 波动**：Devil 反伤、竞技场对手、自动等级都带随机数，必须固定种子或使用统计阈值，否则用例不稳定。
- **mGBA HLE BIOS**：与真机不完全等价；存档/时序类问题可能需要真机复核。
- **无音频校验**：升级/转职音效不在本计划内。
- **正常流程很难自然升到 99**：用例依赖 test-only 构造或临时改测试常量；不要依赖实际刷级。
- **属性上限不变**：约 30 级后升级不涨属性是已确认的预期，不应记为缺陷。
- **`UnitInfo.level` 5 bit**：现有章节数据最高 20；不要用 >31 的敌方等级做用例，除非先扩结构。
- **旧存档结构**：`include/save_game.h` 的 5-bit 结构当前未启用；不要用旧格式做兼容性结论。

## 12. 交付物

- 测试报告（Markdown）：用例执行表、失败项、截图/日志路径。
- `tools/emu/.build/out-testmenu/` 下的日志和截图。
- 新增/修改的自动化 case（如果本期实现）。
- 必要的 SRAM 导出文件（`--save-out`）。
- 缺陷清单（如有）。

## 13. 建议执行顺序

1. BLD-01/02 → SMK-01/02/03（确认基线和现有回归）。
2. LVL-01~04（核心上限逻辑）。
3. PRO-01/02/04（转职核心逻辑）。
4. SAV-01/02（99 级存档）。
5. BAT-02~04、ARE-01/02（边界修复）。
6. AUT-01（重点回归：promoted 敌人属性不变）。
7. 手工项：PRO-05、LVL-07、ARE-04、界面截图。
8. 汇总报告，决定是否提交。

预估：自动化 case 开发 0.5~1 天；执行 + 手工验证 0.5 天；基线对比 0.5 天。

## 14. 当前已执行结果（2026-11-09）

| 项目 | 结果 |
| --- | --- |
| `make all` | 通过 |
| `testmenu-tests.sh` | 17 case / 39 断言全过 |
| case 16 `System → Level Cap` | 通过（98→99、99 封顶、20/99 转职、竞技场夹取、Devil 概率、自动等级 19、99 级存档） |
| case 17 `Test Chapter → 出撃 → Map Test` | 通过（事件摆位 → shell 真实按键攻击 → 战斗中升级；同时验证地图上 20 级转职） |
| 99 级存档（临时改 `TEST_SCENE_SAVE_LEVEL=99`，case 4/5） | 通过；正式用例已由 case 16 覆盖 |
| 转职动画、状态/准备/部队列表 99 级排版 | **手工项，待执行** |
| AUT-01 与旧 ROM 完整基线对比 | **未自动化**；case 16 已覆盖“19 级路径”的行为一致性，但未做整章敌人对比 |

---

## 15. 结论

按当前需求，功能代码已经齐了；本测试计划的核心目的不是找“还要改什么功能”，而是把 **等级边界、转职保留等级、99 级存档、Devil 反伤、竞技场截断、promoted 自动等级** 这 6 类风险固化成可重复执行的用例。case 16 覆盖函数级边界，case 17 用真实按键走完“选人 → 攻击 → 战斗 → 升级”。提交前建议再补一次手工界面/动画确认，以及（可选）旧 ROM 整章敌人属性对比。
