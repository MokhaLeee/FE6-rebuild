# 等级上限 99 / 转职保留等级：改动方案与风险评估

> 状态：已实现并验证（未提交）
>
> 目标：角色等级上限从 20 改为 99；转职时不再把等级重置为 1。
>
> 结果：`make all` 通过；`tools/emu/testmenu-tests.sh` 17 case / 39 项断言全部通过；另外用 99 级做了存档写读往返验证。

---

## 1. 结论先说

核心需求本身只有两处：

1. `include/unit.h`：`UNIT_LEVEL_MAX` 从 `20` 改成 `99`。
2. `src/Core/Lvup/promotion.c`：`UnitPromote()` 里删掉 `unit->level = 1`。

但整份代码里至少还有 **7 处**隐含假设“等级最多 20 / 转职一定回到 1”。如果只改上面两处，会确定性引入 3 个实际 bug：

- **Devil 武器必定反伤**：`21 - level` 在等级 ≥ 22 时变成负数，传进 `u16` 后变成一个巨大的阈值。
- **所有“转职后自动等级”的敌人暴涨**：`UnitAutolevel()` 用 `UNIT_LEVEL_MAX - 1` 表示“转职前练了 19 级”，改上限后会变成 98 级成长，prepromote 敌人属性直接顶满。
- **竞技场高等级等级回绕**：`UnitInfo.level` 只有 5 bit，玩家等级高时对手等级会按 32 取模。

另外还有一个容易被忽略的产品问题：**属性上限没有跟着改**。目前绝大多数职业的力/技/速/防/魔防上限是 20，HP 上限 60。即使等级能到 99，大约 30 级左右属性就会全部顶满，后面 60 多级升级不再涨属性。

---

## 2. 现状：等级相关代码地图

| 位置 | 作用 | 与 20 / 转职重置的关系 |
| --- | --- | --- |
| `include/unit.h:10` | `UNIT_LEVEL_MAX` | 直接写死 20，是全局等级上限 |
| `include/unit.h:246` | `struct Unit.level` | `i8`，装 99 没问题 |
| `src/Core/Lvup/promotion.c:53` | `UnitPromote()` | 转职后 `level = 1; exp = 0` |
| `src/Core/Lvup/growth-getter.c:137` | `CheckBattleUnitLevelUp()` | 升级逻辑，用 `== UNIT_LEVEL_MAX` 判断满级 |
| `src/Core/UnitHooks/source/unit.c:536` | `UnitAutolevel()` | 对 promoted 单位按 `UNIT_LEVEL_MAX - 1` 级做自动成长 |
| `src/Core/BattleSys/Source/battle.c:661` | Devil 武器反伤 | `21 - level`，等级 > 21 后为负 |
| `src/Core/BattleSys/Source/battle.c:855` | `GetUnitExpLevel()` | promoted 单位额外 `+20` 级计算经验 |
| `src/Core/BattleSys/Source/battle.c:879` | `GetUnitPowerLevel()` | promoted 单位额外 `+20 * power_level` |
| `vanilla/playrank.c:1539` | `PlayRank_CalcTotalLevel()` | promoted 单位额外 `+20` 计分 |
| `vanilla/arena.c:205` | `ArenaGetOpposingLevel()` | 玩家等级 ± 4，没有上限 |
| `vanilla/arena.c:255` | 竞技场对手生成 | 把等级塞进 5 bit 的 `UnitInfo.level` |
| `vanilla/arena.c:284` | 竞技场对手等级 | 写死 `level > 20 → 20` |
| `include/unit.h:321` | `struct UnitInfo.level : 5` | 章节/事件单位等级最多 31 |
| `include/save_game.h:35,80` | 旧版存档结构 | `level : 5`；当前构建未见使用 |
| `src/Core/SaveData/modular-save/EmsFuncs.c:20` | 现行 MSA 存档 | `u8 level`，99 可存 |
| `src/Core/Lvup/lvupfx-efx.c:79` | 转职动画 | 转职后显示等级写死 `1` |

补充：`tools/scripts/unit_dump.py:91` 从原 ROM 解 UnitInfo 时也按 `5 bit` 解等级，如果以后扩宽 `UnitInfo`，这个工具要同步改。

---

## 3. 必改项（核心需求）

### 3.1 `include/unit.h`

```c
#define UNIT_LEVEL_MAX 99
```

同时新增一个“转职前假设等级”常量，避免 `UNIT_LEVEL_MAX` 被再次误用：

```c
// 自动等级时，假定 promoted 单位在转职前已经练到的等级数。
// 保持原 20 级上限时的 19 级，避免现有敌人属性变化。
#define UNIT_PROMOTED_AUTOLEVEL_LEVELS 19
```

### 3.2 `src/Core/Lvup/promotion.c` — `UnitPromote()`

删除 `unit->level = 1;`，保留“转职清空经验”的原有行为；但在满级转职时不要再把 `exp` 清零，否则下一场战斗会从 99 级升到 100 级：

```c
UnitCheckStatOverflow(unit);

unit->exp = (unit->level >= UNIT_LEVEL_MAX) ? 0xFF : 0;
```

- `exp = 0`：未满级，和原版一致。
- `exp = 0xFF`：满级哨兵值，`CanBattleUnitGainExp()` 会返回 false，界面显示 `--`。

### 3.3 `src/Core/Lvup/growth-getter.c` — `CheckBattleUnitLevelUp()`

原逻辑是“先 `level++`，再判断 `== UNIT_LEVEL_MAX`”，在 99 级边界上不够稳。建议改成：

```c
if (bu->unit.exp >= 100) {
    bu->unit.exp -= 100;

    if (bu->unit.level < UNIT_LEVEL_MAX) {
        bu->unit.level++;

        if (bu->unit.level == UNIT_LEVEL_MAX) {
            bu->exp_gain -= bu->unit.exp;
            bu->unit.exp = 0xFF;
        }

        UnitLvupCore(bu, 0);
        CheckBattleUnitStatCaps(GetUnit(bu->unit.id), bu);
    } else {
        // 已经满级，不再涨级/涨属性
        bu->exp_gain -= bu->unit.exp;
        bu->unit.exp = 0xFF;
    }
}
```

作用：即使有别的路径把满级单位的 `exp` 清成 0，也不会出现 100/101 级。

### 3.4 `src/Core/Lvup/lvupfx-efx.c` — 转职动画

原代码：

```c
gEkrLvupPostLevel = 1;
```

改为：

```c
gEkrLvupPostLevel = unit->level;
```

原因：转职不再重置等级，动画里“转职后的等级”不能还写死 1，否则会出现“实际 20 级、动画显示 1 级”的视觉错误。

---

## 4. 联动修复项（不改就会出 bug）

### 4.1 Devil 武器反伤 — `battle.c:661`

现状：

```c
if (GetItemWeaponEffect(attacker->weapon) == WEAPON_EFFECT_DEVIL
    && (BattleRandRoll(21 - attacker->unit.level, FALSE))) {
```

`BattleRandRoll` 的参数是 `u16 threshold`。等级 22 时 `21 - 22 = -1`，隐式转换成 `65535`，`RandRoll` 永远返回 true → **22 级以上拿 Devil 武器必定自伤**。

修复：把 `21 - level` 抽成独立函数，并夹到最小 1%。

```c
int GetDevilReversalChance(int level)
{
	int chance = 21 - level;

	if (chance < 1)
		chance = 1;

	return chance;
}

/* BattleGenerateHitEffects() */
devil_chance = GetDevilReversalChance(attacker->unit.level);

if (GetItemWeaponEffect(attacker->weapon) == WEAPON_EFFECT_DEVIL
    && BattleRandRoll(devil_chance, FALSE)) {
```

### 4.2 敌方 promoted 自动等级 — `unit.c:536`

现状：

```c
UnitAutolevelCore(unit, unit->jinfo->jid_promote, UNIT_LEVEL_MAX - 1);
```

这行的语义是“promoted 敌人在转职前已经练了 19 级”。把 `UNIT_LEVEL_MAX` 改成 99 后会变成 98 级成长，所有带 `autolevel` 的 promoted 敌人属性会直接顶到职业上限。

修复：使用固定的 `UNIT_PROMOTED_AUTOLEVEL_LEVELS`（19），保持现有敌人强度不变。

如果以后希望新上限下敌人也整体变强，应该做的是重新设计敌人等级/成长，而不是让这一行跟着宏漂移。

### 4.3 竞技场 — `vanilla/arena.c`

三个问题：

1. `ArenaGetOpposingLevel()` 返回 `player_level ± 4`，玩家 99 级时可能到 103，需要夹到 99。
2. `UnitInfo.level` 只有 5 bit。把 `gArenaSt.opponent_level`（可能 > 31）直接赋给 `info.level` 会按 32 取模，例如 99 → 3。
3. `ArenaGenOpponentUnit()` 末尾写死 `if (level > 20) level = 20;`，高等级玩家永远打 20 级对手。

建议改法：

```c
// ArenaGetOpposingLevel()
if (result > UNIT_LEVEL_MAX)
    result = UNIT_LEVEL_MAX;

// ArenaGenOpponentUnit()
info.level = 1;                 // 不让 5 bit 字段参与高等级传递
...
UnitInitFromInfo(unit, &info);
UnitInitStats(unit, unit->pinfo);
unit->level = gArenaSt.opponent_level;   // 用完整等级还原

...
if (unit->level > UNIT_LEVEL_MAX)
    unit->level = UNIT_LEVEL_MAX;
```

说明：这样能保证竞技场在高等级不出现等级回绕/显示错误；但竞技场本身的强度曲线（1.2/1.8 倍自动等级、只调 10 次属性）在原版里就比较粗糙，高等级手感仍建议单独调。

### 4.4 两个满级哨兵判断

`src/Core/UnitHooks/source/unit.c:628`（`UnitChangeFaction`）和
`src/Core/UnitHooks/LoadUnit.c:27`（`UnitInitStats`）都用：

```c
level != UNIT_LEVEL_MAX
```

来决定 `exp = 0` 还是 `0xFF`。改成 99 后逻辑仍然成立；配合 3.3 的上限保护，不会出现 `level > 99` 时被当成“可升级”的情况。这一项可以不改，只需要知道它的存在。

---

## 5. 需要你拍板的 6 个决策

> **评审结论（2026-11-09）**：转职后经验**清零**；属性上限**本次不动**。
> 其余 4 项按下方“我的建议”执行（保留 `+20`、敌方自动等级保持 19、竞技场跟随 99、暂不扩宽 `UnitInfo`）。

| # | 决策点 | 现状 / 选项 | 我的建议 |
| --- | --- | --- | --- |
| 1 | 转职后经验是否保留 | 原版清零；也可以保留 | **清零**（只保留等级），和“转职不重置等级”字面一致 |
| 2 | promoted 单位经验公式里的 `+20` | 保留 / 去掉；影响对未转职敌人的经验 | **先保留**（改动最小，保持原版“转职后对低级敌人经验少”的手感）；如果实测觉得转职瞬间经验掉太多，再去掉 3 处 `+20` |
| 3 | 敌方 promoted 自动等级 | 保持 19 级 / 跟着 99 放大 | **保持 19 级**，否则所有 prepromote 敌人属性顶满 |
| 4 | 属性上限是否同步提高 | 保持 20~30 / 提高到 40~60 | **先保持**。但要接受“约 30 级后升级不涨属性”；若希望 99 级有意义，需要改 `gameinfo/jinfo.c` 的 `max_*`、`UNIT_HP_CAP`，并重新平衡 |
| 5 | 竞技场是否跟随 99 | 跟 99 / 维持 20 | **先跟 99**（至少修掉等级回绕）；强度曲线另开任务 |
| 6 | 是否允许章节敌人等级 > 31 | 不允许 / 扩宽 `UnitInfo` | **暂不允许**。扩宽要改结构布局、事件数据和 `unit_dump.py`，工作量和风险都更大 |

---

## 6. 属性上限的具体影响（决策 4 的依据）

从 `gameinfo/jinfo.c` 统计：

- `max_pow`：38 个职业是 20，其余 22~30。
- `max_skl`：38 个职业是 20，其余 24~30。
- `max_spd`：38 个职业是 20，其余 21~30。
- `max_def`：41 个职业是 20，其余 21~30。
- `max_res`：39 个职业是 20，其余 22~30。
- `max_hp`：63 个职业是 60，4 个是 80；但玩家侧 `UNIT_HP_CAP` 实际写死 60（`include/unit.h:407`）。
- 幸运上限 `UNIT_LCK_CAP = 30`，体格 20/25，移动 15。

按现有成长率，角色大约在 **30 级前后** 力/技/速/防/魔防就会顶到 20~30；之后到 99 级的升级只会显示“+0”。这不是 bug，但通常不是玩家想要的“99 级”。

如果确认要让 99 级有意义，需要另开一份改动：

- 提高各职业 `jinfo.max_*`（最大可到 `UNIT_STATUS_MAX = 120`）。
- 提高玩家 HP 上限（`UNIT_HP_CAP` / `GetUnitMaxStatusHp`）。
- 检查 `BATTLE_MAX_DAMAGE = 99` 是否需要跟着调（`battle.c`）。
- 检查状态图标、伤害数字、UI 是否按 2 位数设计（99 以内都还安全）。

---

## 7. 存档兼容性

结论：**本次改动不需要改存档格式，老存档可读，新存档可写 99 级。**

依据：

- 现行 MSA 存档的 `struct MsaPackedUnit` 使用 `u8 level, exp;`（`EmsFuncs.c:20`），99 放得下。
- 现行 MSU（战场中断）存档同样是 `u8 level`。
- `include/save_game.h` 里的 `GameSavePackedUnit.level : 5` / `SuspendSavePackedUnit.level : 5` 在当前构建中没有找到定义和使用（只有声明），属于旧格式遗留；如果以后有代码重新启用它，99 会溢出，需要一起改。
- 旧存档里的等级本来就只有 1~20，读入后继续升到 99 没有问题。
- 等级上限变化不是存档结构变化，因此不需要升版本号或做迁移。

---

## 8. UI / 显示检查

等级显示都是“右对齐、按实际位数向左写”，99 是 2 位数，不需要改布局。已检查的点：

- 状态画面：`src/Core/Statscreen/modern-screen/draw-pages.c:31`、`vanilla-screen/pageleft.c:44`
- 准备画面：`vanilla/prepmenu.c:221`
- 部队列表：`vanilla/unitlistscreen.c:1641`
- 竞技场对手：`vanilla/arena_ui.c:361`
- 升级动画：`src/Core/Lvup/lvupfx-efx.c:137`（文本缓冲 3 字符，2 位数没问题）

注意：`PutNumber()` 是向左扩展的；如果以后上限超过 99（3 位数），这些位置会覆盖相邻格子。保持 99 则安全。

---

## 9. 当前工作区状态（重要）

在收到“先写文档”之前，我已经动手落了一版未提交改动；后续又按测试计划补了自动化 case。当前未提交改动分三组：

**功能代码（8 个文件）**

| 文件 | 改动 |
| --- | --- |
| `include/unit.h` | `UNIT_LEVEL_MAX 99`；新增 `UNIT_PROMOTED_AUTOLEVEL_LEVELS 19` |
| `include/battle.h` | 新增 `GetDevilReversalChance()` 原型 |
| `src/Core/BattleSys/Source/battle.c` | 抽出 `GetDevilReversalChance()`；Devil 武器几率下限 1% |
| `src/Core/Lvup/promotion.c` | 删除 `level = 1`；满级转职保留 `exp = 0xFF` |
| `src/Core/Lvup/growth-getter.c` | 99 级上限保护，禁止升到 100 |
| `src/Core/Lvup/lvupfx-efx.c` | 转职动画显示实际等级 |
| `src/Core/UnitHooks/source/unit.c` | promoted 自动等级固定 19 |
| `vanilla/arena.c` | 竞技场等级夹到 99；绕开 `UnitInfo` 5 bit 截断；`20` 改成 `UNIT_LEVEL_MAX` |

**测试用例（8 个文件）**

| 文件 | 改动 |
| --- | --- |
| `src/Test/cases/system/system_cases.c` / `.h` | 新增 `System → Level Cap` 自检 |
| `src/Test/fixtures/test-chapter.c` | 统一到 `CHAPTER_TEST`（原 test battle + test prep 合并），加入 level 测试单位和事件 |
| `src/Test/testmenu/testmenu_test.c` | TestRoot 新增 `System` 入口 |
| `include/hacks/test_cases.h` | 新增 `TEST_CATEGORY_SYSTEM`、`TEST_CASE_LEVEL_CAP`、`TEST_CASE_LEVEL_MAP` |
| `tools/emu/testmenu/cases/16-level-cap.sh` | 新增函数级自检 shell case |
| `tools/emu/testmenu/cases/17-level-map.sh` | 新增真实按键战斗 shell case |
| `tools/emu/testmenu-tests.sh` | 注册 case 16/17 |

另有 `src/Test/README.md`、`src/Test/cases/README.md`、`tools/emu/README.md`、`tools/emu/testmenu/README.md` 的说明更新。

这些改动**没有提交**。评审结论已经落到代码：转职后经验清零、属性上限本次不动；其余 4 项按建议默认值执行。

构建和测试已经完成，结果见第 10 节；逐文件的代码改动明细见第 13 节。

---

## 10. 验证计划

> 可执行版测试计划（用例编号、优先级、自动化方案、进入/退出标准）见
> [level-cap-99-test-plan.md](level-cap-99-test-plan.md)。

### 10.1 构建

```bash
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export PATH=$DEVKITPRO/tools/bin:$DEVKITARM/bin:$PATH
make all
```

注意：`PATH` 里必须有 `$DEVKITPRO/tools/bin`，否则 Makefile 第 427 行的 `gbafix` 会报找不到。

### 10.2 自动化

```bash
./tools/emu/testmenu-tests.sh          # 全量 17 个 case
./tools/emu/testmenu-tests.sh --case N # 只跑第 N 个 case
```

### 10.3 手工 / 测试用例

| 场景 | 预期 |
| --- | --- |
| 98 级 + 100 经验 | 升到 99，`exp` 变成 `0xFF`，不再升到 100 |
| 99 级继续获得经验 | 不升级，经验显示 `--` |
| 20 级转职 | 转职后仍是 20 级，职业/属性按转职规则变化，`exp = 0` |
| 99 级转职 | 仍是 99 级，`exp = 0xFF`，之后不再获得经验 |
| 转职动画 | 动画里等级显示为实际等级（不再是 1） |
| Devil 武器 99 级 | 反伤率约为 1%，不是必定反伤 |
| 竞技场 99 级 | 对手等级不被 32 取模，不出现 3 级/20 级异常 |
| 存档 → 读档 99 级 | 等级、经验、属性保持 |
| 状态/准备/部队列表 | 等级 99 显示正常，不串格 |
| promoted 敌人 autolevel | 与改动前同等级敌人属性一致（重点回归） |

已新增自动化用例 `System → Level Cap`（testmenu case 16），覆盖：98→99 封顶、99 级不再升级、20/99 级转职保留等级、竞技场等级夹取、Devil 反伤率、promoted 自动等级 19、99 级存档往返。转职动画和界面观感仍建议手工/截图确认。

### 10.4 本次实际结果（2026-11-09）

- `make all`：通过。
- `./tools/emu/testmenu-tests.sh`：17 个 case、39 项断言全部通过（case 16 `System → Level Cap` 自检 + case 17 `Test Chapter → 出撃 → Map Test` 真实按键战斗升级）。
- 99 级存档往返：临时把 `include/hacks/test_scene.h` 的 `TEST_SCENE_SAVE_LEVEL` 从 9 改成 99，重跑 case 4/5 均通过；随后恢复为 9 并重新构建。正式用例里已由 case 16 直接写读 99 级。
- 已自动化：98→99、99 级封顶、20/99 级转职、Devil 反伤率、竞技场等级夹取、promoted 自动等级 19、99 级存档往返。
- case 17 `Test Chapter → 出撃 → Map Test`：真实按键控制 Roy 攻击敌人并升级（level 99 / exp 0xFF），同时在地图上验证 20 级转职保留等级。
- 仍建议手工确认：转职动画的等级显示、状态/准备/部队列表的 99 级排版。

---

## 11. 不在本次范围

- 不修改成长率、职业基础值、经验曲线。
- 不修改存档格式。
- 不修改 UI 布局。
- 不重新平衡章节敌人等级。
- 不做提交（等明确许可）。

---

## 12. 建议的实施顺序

1. 确认第 5 节决策：已完成（转职后经验清零、属性上限本次不动）。
2. 按结论调整代码：已完成（8 个功能代码文件 + 6 个测试文件）。
3. `make all` + 全量测试：已完成（17 case / 39 断言通过）。
4. 针对 10.3 的场景验证：核心边界已由 case 16 自动化；转职动画/界面观感仍待手工确认。
5. 汇报改动与测试结果，等你确认后再提交。

---

## 13. 实际代码改动明细（按文件）

> 本节记录 2026-11-09 工作区里实际落下的改动，和上面的“方案”一一对应。
> 所有改动均未提交。

### 13.1 `include/unit.h`：等级上限 + 自动等级常量

```c
#define UNIT_LEVEL_MAX 99

// Number of levels a promoted unit is assumed to have gained in its
// pre-promotion class when autoleveling. Kept at the original 20-level cap so
// existing enemy stats do not change now that UNIT_LEVEL_MAX is higher.
#define UNIT_PROMOTED_AUTOLEVEL_LEVELS 19
```

- `UNIT_LEVEL_MAX` 从 20 改成 99，是全局等级上限。
- 新增 `UNIT_PROMOTED_AUTOLEVEL_LEVELS 19`，把“自动等级时假定转职前练了 19 级”从等级上限里拆出来，避免上限变化影响敌方 promoted 单位的属性。

### 13.2 `src/Core/Lvup/promotion.c`：转职保留等级

删除：

```c
	unit->level = 1;
	unit->exp = 0;
```

替换为：

```c
	UnitCheckStatOverflow(unit);

	/* Promotion keeps the unit's total level; only the exp counter is reset.
	 * At the level cap, keep the "no exp" sentinel so promotion cannot push
	 * the unit past the cap on its next battle. */
	unit->exp = (unit->level >= UNIT_LEVEL_MAX) ? 0xFF : 0;
```

行为：

- 转职后 `level` 保持不变；
- 未满级转职：`exp = 0`（经验清零）；
- 99 级转职：`exp = 0xFF`（不再获得经验的哨兵值），避免下一场战斗升到 100。

职业、属性、武器熟练度的转职计算未改动。

### 13.3 `src/Core/Lvup/growth-getter.c`：升级到 99 的上限保护

原逻辑是“先 `level++`，再判断 `== UNIT_LEVEL_MAX`”；如果满级单位的 `exp` 被清成 0，会先变成 100 级再判断失败。

改为：

```c
	if (bu->unit.exp >= 100) {
		bu->unit.exp -= 100;

		if (bu->unit.level < UNIT_LEVEL_MAX) {
			bu->unit.level++;

			if (bu->unit.level == UNIT_LEVEL_MAX) {
				bu->exp_gain -= bu->unit.exp;
				bu->unit.exp = 0xFF;
			}

			UnitLvupCore(bu, 0);
			CheckBattleUnitStatCaps(GetUnit(bu->unit.id), bu);
		} else {
			/* Safety net: never allow a unit already at the cap to level
			 * past it (e.g. a promotion that reset exp at the cap). */
			bu->exp_gain -= bu->unit.exp;
			bu->unit.exp = 0xFF;
		}
	}
```

效果：

- 98 级 + 满经验 → 99 级，`exp = 0xFF`，不会到 100；
- 已经 99 级时，即使 `exp` 异常地可升级，也只把 `exp` 设回 `0xFF`，不再涨级或涨属性。

### 13.4 `src/Core/Lvup/lvupfx-efx.c`：转职动画的等级显示

```diff
-		gEkrLvupPostLevel = 1;
+		gEkrLvupPostLevel = unit->level;
```

原来转职动画默认“转职后等级是 1”；现在等级不重置，继续写死 1 会出现“实际 20 级、动画显示 1 级”的错误。改为显示单位当前实际等级。

### 13.5 `src/Core/BattleSys/Source/battle.c` / `include/battle.h`：Devil 武器反伤率下限

新增可测试的 helper：

```c
int GetDevilReversalChance(int level)
{
	int chance = 21 - level;

	if (chance < 1)
		chance = 1;

	return chance;
}
```

`BattleGenerateHitEffects()` 改为：

```c
	int devil_chance;

	attacker->wexp_gain++;

	devil_chance = GetDevilReversalChance(attacker->unit.level);

	if (!(gBattleHitIt->attributes & BATTLE_HIT_ATTR_MISS)) {
		...
		if (GetItemWeaponEffect(attacker->weapon) == WEAPON_EFFECT_DEVIL && (BattleRandRoll(devil_chance, FALSE))) {
```

原因：`BattleRandRoll` 的参数是 `u16 threshold`；等级 22 时 `21 - 22 = -1` 会变成 65535，导致必定反伤。现在最低保留 1%，并让测试用例可以直接断言 1/20/21/22/99 级的结果。

### 13.6 `src/Core/UnitHooks/source/unit.c`：promoted 自动等级保持 19

```diff
-		UnitAutolevelCore(unit, unit->jinfo->jid_promote, UNIT_LEVEL_MAX - 1);
+		UnitAutolevelCore(unit, unit->jinfo->jid_promote, UNIT_PROMOTED_AUTOLEVEL_LEVELS);
```

原值 `UNIT_LEVEL_MAX - 1` 在 20 级上限时等于 19；上限改 99 后会变成 98，所有带 `autolevel` 的 promoted 敌人属性会顶满。改成固定 19，保持现有敌人强度。

### 13.7 `vanilla/arena.c`：竞技场三处修复

**(a) 对手等级夹到上限**

```c
    if (result > UNIT_LEVEL_MAX)
        result = UNIT_LEVEL_MAX;
```

`ArenaGetOpposingLevel()` 原本返回玩家等级 ±4，99 级时可能返回 103；现在夹到 99。

**(b) 绕开 `UnitInfo.level` 的 5 bit 截断**

```diff
-    info.level = gArenaSt.opponent_level;
+    /* UnitInfo::level is only 5 bits wide, so do not feed high arena levels
+       through it; the real level is restored on the unit right after init. */
+    info.level = 1;
```

`UnitInitStats()` 之后补：

```c
+    unit->level = gArenaSt.opponent_level;
```

`UnitInfo.level` 只有 5 bit（最大 31），高等级会按 32 取模（99 → 3）。现在初始化时先填 1，初始化完再把完整等级写回单位。

**(c) 去掉写死的 20 级上限**

```diff
-    if (unit->level > 20)
-        unit->level = 20;
+    if (unit->level > UNIT_LEVEL_MAX)
+        unit->level = UNIT_LEVEL_MAX;
```

否则玩家 30 级以后，竞技场对手永远显示 20 级。

### 13.8 有意保留、未改动的部分

| 项目 | 位置 | 原因 |
| --- | --- | --- |
| promoted 经验公式的 `+20` | `battle.c:GetUnitExpLevel()` / `GetUnitPowerLevel()` | 按讨论先保留，维持原版“转职后打低级敌人经验少”的手感 |
| 排名计分的 promoted `+20` | `vanilla/playrank.c:PlayRank_CalcTotalLevel()` | 只是排名分数，不影响升级/战斗；未动 |
| 职业属性上限、HP 上限 | `gameinfo/jinfo.c`、`include/unit.h:UNIT_HP_CAP` | 按评审结论“属性上限先不动” |
| 章节/事件单位的 `UnitInfo.level : 5` | `include/unit.h` | 扩宽会改变结构布局和事件数据；本次不扩，竞技场单独绕开 |
| 存档格式 | `EmsFuncs.c` / `save_game.h` | 现行 MSA/MSU 使用 `u8 level`，99 可存；旧 5-bit 结构未被使用 |
| UI 布局 | 状态/准备/部队列表/升级动画 | 99 是 2 位数，现有右对齐显示不需要改 |

### 13.9 验证摘要

- `make all`：通过。
- `./tools/emu/testmenu-tests.sh`：17 个 case、39 项断言全部通过。
- 新增 case 16 `System → Level Cap`：验证 98→99 封顶、99 级不再升级、20/99 级转职保留等级、竞技场等级夹取、Devil 反伤率、promoted 自动等级 19、99 级存档往返。
- 99 级存档往返：早期临时把 `TEST_SCENE_SAVE_LEVEL` 从 9 改成 99 也跑通过；正式用例已由 case 16 覆盖。
- 仍建议手工确认：转职动画的等级显示、状态/准备/部队列表的 99 级排版。

### 13.10 自动化测试用例（case 16）

新增 `System → Level Cap` 自检，涉及文件：

- `src/Test/cases/system/system_cases.c` / `.h`
- `src/Test/testmenu/testmenu_test.c`（TestRoot 增加 `System` 入口）
- `include/hacks/test_cases.h`（新增 `TEST_CATEGORY_SYSTEM` / `TEST_CASE_LEVEL_CAP`）
- `tools/emu/testmenu/cases/16-level-cap.sh`
- `tools/emu/testmenu-tests.sh`（注册 case 16）

检查项写入 `gTestMenuProbe.flags`：

| bit | 检查 |
| --- | --- |
| bit0 | 98 级 + 100 经验 → 99 级 / `exp = 0xFF` |
| bit1 | 99 级再结算 → 不升级、`exp` 回 `0xFF` |
| bit2 | 20 级转职 → 等级不变、`exp = 0`、职业变化 |
| bit3 | 99 级转职 → 等级不变、`exp = 0xFF` |
| bit4 | `ArenaGetOpposingLevel(99/1)` 各 64 次 → 1~99 |
| bit5 | `GetDevilReversalChance(1/20/21/22/99)` → 20/1/1/1/1 |
| bit6 | `UnitAutolevel()` 与手工 19 级路径同种子对比属性一致 |
| bit7 | 写读 99 级章节存档 → level 99 / exp 3 |

shell 侧断言：`state == 3`、`flags == 255`、`value0 == 99`、`value1 == 255`、`value3 == 99`。

运行方式：

```bash
./tools/emu/testmenu-tests.sh --case 16
```

### 13.11 地图真实按键测试（case 17）

`Test Chapter → 出撃 → Map Test` 复用统一测试章节 `CHAPTER_TEST`（原 test battle + test prep 合并，不新增章节）：

- 事件 `TestLevelCap_SetupBattle()` 把 Roy 设为 98 级 / 99 经验，旁边放一个 99 级、1 HP 的敌人；同时在地图上验证：
  - 20 级 Alen 转职后仍为 20 级、`exp = 0`、职业变 Paladin；
- 事件结束后，shell 用 `--hold` 真实按键：
  `A` 选 Roy → `A` 开行动菜单 → `A` 选「攻撃」 → `A` 确认战斗预测 → `A` 开战 → 每 60 帧 `A` 推进战斗/升级画面。
- 断言 `gUnitArrayBlue+0x08`（level）= 99、`+0x09`（exp）= 255，并检查 `gTestMenuProbe.value[2]`（转职等级）= 20。

这条 case 走的是真实的地图输入、行动菜单、战斗和升级流程，不再是直接调用 `CheckBattleUnitLevelUp()`。

### 13.12 提交状态

以上功能代码、测试 case、文档均在工作区，**未提交**。
