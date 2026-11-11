# SkillSys 技能列表与战斗快照

本目录负责「单位拥有哪些技能」以及「一场战斗中技能是否生效」。
核心思想是**一份权威列表 + 一份可 O(1) 查询的派生位图**，两者都在明确的
时机构建，避免把逻辑塞进热路径。

## 1. 文件职责

| 文件 | 职责 |
|---|---|
| `SkillInfo.c` | 技能名/说明文本、图标 |
| `SkillList.c` | 技能列表缓存与快照（本文重点） |
| `SkillTester.c` | 列表遍历式判定 `JudgeSkillViaList()` |
| `SkillTester.iwram.c` | 快速判定 `JudgeSkillFast()`、战斗位图判定 `JudgeSkillInBattle()` |
| `SkillMapAnim.c` | 地图动画里的技能图标与小人动画 |
| `EfxSkkill.c` | 逐回合登记技能特效（`RegisterActorEfxSkill()` 等） |

对外 API 见 `include/hacks/skill-sys.h`。

## 2. 数据结构

### 2.1 `struct SkillList`

```c
struct SkillList {
	struct {
		const struct PInfo *pinfo;
		const struct JInfo *jinfo;
		i8 level, uid;
		u8 _pad_[2];
	} sign;

	u8 amt;
	u8 _pad_;
	u16 sid[31];
};
```

- `sid[]` 是技能列表本体，`amt` 是有效长度；
- `sign` 是缓存签名：`pinfo` / `jinfo` / `level` / `uid` 任一变化即视为失效，
  下次 `GetSkillList()` 自动重建。这样换职业、升级、换 loadout、复用单位槽
  都不需要手动通知缓存。

### 2.2 列表槽位

`SkillList.c` 里有一个固定池：

```c
static EWRAM_DATA struct SkillList sSkillLists[GENERIC_LIST_AMT + 2];
#define GenericSkillList  (&sSkillLists[0])
#define BattleSkillListA  (&sSkillLists[GENERIC_LIST_AMT + 0])
#define BattleSkillListB  (&sSkillLists[GENERIC_LIST_AMT + 1])
```

- `BattleSkillListA/B` 是战斗槽位，与 `gBattleUnitA/B` 一一对应；
- 其余 4 个是通用槽位，按 `next_slist` 轮转，供地图移动、状态画面等
  一次性查询使用。

### 2.3 `BattleUnit::skills_bitfile`

```c
u32 skills_bitfile[0x400 / 32];   /* 1024 bit = 128 字节 */
```

`MAX_SKILL_NUM` 为 `0x400`，每个技能占一位，`sid` 直接作为 bit 下标。
它是**派生缓存**：内容是 `SkillList::sid[]` 的位图形式，只服务于
`BattleSkillTester()`。

## 3. 三个 tester

| 宏 | 底层 | 依赖 | 用途 |
|---|---|---|---|
| `SkillTester(unit, sid)` | `JudgeSkillViaList()` | `GetSkillList()` | 通用，真实 `Unit` |
| `SkillFastTester(unit, sid)` | `JudgeSkillFast()` | P/J 表 + `unit->skills[]` | 战前/无副作用 |
| `BattleSkillTester(bu, sid)` | `JudgeSkillInBattle()` | `skills_bitfile` | 战斗中反复调用 |

`BattleSkillTester()` 刻意保持一行：

```c
IWRAM_FUNC
bool JudgeSkillInBattle(struct BattleUnit *bu, int sid)
{
	return check_bit(bu->skills_bitfile, sid);
}
```

战斗中每次命中、每个回合都会调用它，所以**不做惰性重建、不做 Nihil 动态
判定**，所有代价都前移到快照构建。

## 4. 两层快照

Nihil 的语义是 `f(A, B)`（对手持有 Nihil 时自己全部失效），而单位初始化是
`init(A)` / `init(B)` 两个独立事件。把两件事塞进一个入口，就会出现
「A 初始化时 B 还是旧数据」的无效计算，并依赖「先 A 后 B」的隐式契约。
因此拆成两层：

```c
/* Per unit: depends on that unit only, never on the opponent. */
void SetupBattleUnitSkillList(struct BattleUnit *bu);

/* Per battle: both per-unit snapshots, then the Nihil pass. */
void SetupBattleSkillList(void);
```

### 4.1 `SetupBattleUnitSkillList(bu)`

1. 按指针把 `bu` 映射到 `BattleSkillListA/B`（非 A/B 直接返回）；
2. `setup_skill_list()` 重算列表：P 表 2 项 + J 表 2 项 + `unit->skills[]` 4 项，
   用 `gBuf` 前 `MAX_SKILL_NUM` 字节做去重；
3. 清空并重新派生 `bu->skills_bitfile`。

只读写自己这一侧，任何「我只有一个角色」的上下文都能安全调用。

### 4.2 `SetupBattleSkillList()`

```c
void SetupBattleSkillList(void)
{
	SetupBattleUnitSkillList(&gBattleUnitA);
	SetupBattleUnitSkillList(&gBattleUnitB);

	/* The opponent's Nihil disables every skill on this side. */
	if (SkillFastTester(&gBattleUnitB.unit, SID_Nihil)) {
		BattleSkillListA->amt = 0;
		memset(gBattleUnitA.skills_bitfile, 0, ...);
	}

	if (SkillFastTester(&gBattleUnitA.unit, SID_Nihil)) {
		BattleSkillListB->amt = 0;
		memset(gBattleUnitB.skills_bitfile, 0, ...);
	}
}
```

Nihil 判定走 `SkillFastTester()`，不读位图，所以不会自我递归，也不受
`SID_Nihil` 自身被封印的影响。

### 4.3 调用点

契约：

- `SetupBattleSkillList()` 要求 A/B 都已 `InitBattleUnit()` 完成；
- `SetupBattleUnitSkillList(bu)` 只要求 `bu` 自己初始化完成；
- 两者都必须在**第一次技能查询之前**完成（`SetBattleUnitWeapon()` 未来会查技能）。

| 调用点 | API | 说明 |
|---|---|---|
| `BattleGenerateSimulationInternal` | 整场 | Init A/B 之后 |
| `BattleGenerateRealInternal` | 整场 | Init A/B 之后 |
| `BattleGenerateArena` | 整场 | Init A/B 之后 |
| `BattleInitItemEffectTarget` | 整场 | 使用者 A 与目标 B 都就绪后 |
| `BattleGenerateDisplayStats` | 单角色 A | 状态画面没有对手，跳过 Nihil |
| `BattleInitItemEffect` | 单角色 A | 此时只有使用者就绪 |

## 5. 生命周期

```
InitBattleUnit(A)            -> skills_bitfile(A) = 0
InitBattleUnit(B)            -> skills_bitfile(B) = 0
SetupBattleSkillList()       -> 两份列表 + 两份位图 (+ Nihil)
SetBattleUnitWeapon(A/B)     -> 可以查 BattleSkillTester()
...战斗...
AppendSkillListInBattle()    -> 战斗期临时追加（列表与位图同步）
...
PostAction_ResetSkillList()  -> 清空 6 个列表槽 + 两份位图
```

- `InitBattleUnitVanilla()` 无条件把 `skills_bitfile` 清零，所以「忘记建快照」
  的路径退化为**没有技能生效**，而不是沿用上一场战斗的残留；
- `PostAction_ResetSkillList()` 挂在 `gPostActionFuncs[]` 末尾，每次玩家/AI
  行动结束执行，保证下一场战斗从干净状态开始；
- `AppendSkillListInBattle()` 同时写 `sid[]` 和 `set_bit()` 位图，两者不会脱节。

## 6. 约束与陷阱

1. **不要改 `setup_skill_list()` 的去重缓冲**。它借用 `gBuf`（0x2000 通用
   scratch）的前 1KB。实测在干净基线上换成 128 字节的独立 static 位图，
   即使逻辑等价也会改变既有场景的帧内时序，`gBuf` 的清零副作用被热路径依赖。
2. **列表槽位按地址匹配，不按 `unit->id`**。状态画面会清掉
   `gBattleUnitB.unit.jinfo`，但 `pinfo` 和 `id` 还是上一次的；按 id 匹配会让
   这个空壳单位命中 `BattleSkillListA` 并把 A 的列表写坏。
3. **`setup_skill_list()` 必须判 `jinfo != NULL`**。`UNIT_IS_VALID()` 只看
   `pinfo`，而函数内部会用 `UNIT_JID()` 解引用 `jinfo`；状态画面的空壳单位
   会构造出 `pinfo != NULL && jinfo == NULL` 的组合。
4. **不要把快照塞回 `InitBattleUnit()`**。逐角色初始化无法知道另一侧是否就绪，
   Nihil 判定必然错；这正是上一版 `UnitToBattle_SetupSkillList()` 的问题来源。
5. **`BattleSkillTester()` 不承担任何经营逻辑**。需要新的封印/无效化规则时，
   在快照层处理（清位图或列表），不要加进 tester。
