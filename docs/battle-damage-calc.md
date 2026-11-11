# FE6 技能系统：伤害计算流程移植方案

> 状态：方案稿，未改动任何代码。
> 参考：`~/fe8u-cskillsys-kernel` 的 `docs/BattleSystem.md`（Damage calc formula）与
> `Kernel/Wizardry/Core/BattleSys/Source/BattleDamage.c`。
> 目标：把「基础伤害 + 增伤 + 暴击倍率 + 减伤 + 真伤」这套流程接到 fe6-rebuild 的战斗流程里，
> 为后续技能（`+X% 伤害`、`受伤 -X%`、真伤、暴击倍率改动）提供统一出口。

## 0. 结论

- 可移植，而且比 fe8 简单：本仓库是全量 C 重构，**不需要** kernel 那套 `.lyn.event` +
  `POIN` 重定位补丁；fe8 里靠 linker event 拼的钩子表，在这里直接用 C 常量函数指针数组即可。
- 公式本体只有约 60 行，落地成本主要在三处「接缝」：
  1. `BattleGenerateHitAttributes()`（逐次命中伤害，替换 `atk - def` 和 `*3` 暴击）；
  2. `ComputeBattleUnitStats()`（战前一次性算好 base 增/减伤与真伤）；
  3. 战斗预览（`battlepreview.c` 自己算 `atk - def`，要把增/减伤反映进去）。
- 有两处**必须偏离 fe8 的默认值/做法**：
  - 暴击倍率默认 **300**（保持 FE6 原版 3 倍），fe8 cskillsys 是 200；做成宏，一处可改。
  - 最大伤害 **99**（`BattleHit::damage` 是 `i8`、FE6 显示也是两位），fe8 是 127。
- 预览不要照抄 fe8 的 `ModifyBattleStatusForUI()`（它直接改写 `battleAttack`）：
  FE6 长版预览显示的是「攻撃」原值而不是「威力」，改写会污染该栏位。
  改成新增 `BattleCalcSimulateDamage()` 只算不改写，见 3.5。

## 1. fe8 cskillsys 的伤害流程拆解

### 1.1 在调用栈里的位置

`docs/BattleSystem.md` 给出的栈里，伤害只出现在两个层次：

- 战前（每场战斗每个方向各一次）：`ComputeBattleUnitStats` → `PreBattleCalc`，
  其中 `PreBattleCalcInit_BaseDamage()` 把「非随机」的增伤/减伤/真伤算好存进
  `gActorBaseDmg` / `gTargetBaseDmg`。
- 逐次命中（每一下）：`BattleGenerateHit` → `BattleGenerateHitAttributes`
  → `BattleHit_CalcDamage()`，这里再做**依赖 RN 的**部分（暴击、必杀、技能发动）
  并合成最终伤害。

`BattleHit.c` 里 `BattleGenerateHitAttributes()` 只剩三件事：命中判定、调
`BattleHit_CalcDamage()`、置 `nonZeroDamage`；伤害细节全部下沉。

### 1.2 数据模型

| 符号 | 位置 | 作用 |
|---|---|---|
| `struct Dmg gDmg` | `battle-system.h` | 单次命中的临时量：`crit_atk / result / correction / real_damage / increase / decrease / crit_correction` |
| `struct BaseDmg gActorBaseDmg, gTargetBaseDmg` | 同上 | 战前算好的每方向基数：`increase / decrease / real_damage` |
| `GetBaseDmg(bu)` | 同上，inline | 按 `bu == &gBattleActor` 取上表其一 |
| `_DmgDecreaseRef[100]` / `DAMAGE_DECREASE(rate)` | `data.c` | 减伤率 → 参考值查表 |
| `gpBattleDamageCalcFuncs[]` | kernel event | 逐次命中的技能钩子表（RN 相关） |
| `gpBattleRealDamageCalcFuncs[]` | kernel event | 真伤技能钩子表 |

关键约定：`increase` / `crit_correction` 是**百分数**（100 = x1.00），
`decrease` 是 **0x100 基准**（0x100 = x1.00，半伤 = 256）。

### 1.3 公式与实现

```
result = ([atk + correction - def]) * (100% + increase%) * (100% + crit_correction%)
         / (100% + decrease%) + real_damage
```

`BattleDamage.c::BattleHit_CalcDamage()` 的实际步骤：

1. 重置 `gDmg`，`crit_correction` 取 designer config（fe8 = 200），
   `increase/decrease/real_damage` 从 `GetBaseDmg(attacker)` 灌入；
2. 单 RN 判暴击：命中则置 `BATTLE_HIT_ATTR_CRIT`、`gDmg.crit_atk = true`；
   暴击后**再**单 RN 判必杀（silencer），命中直接返回 `max_damage`；
3. 跑 `gpBattleDamageCalcFuncs[]`（技能在这里改 `gBattleStats.attack/defense`、
   `gDmg.correction/increase/decrease/crit_correction`，或直接置属性位）；
4. 属性位短路：`SILENCER` → 返回 `max_damage`；`GREATSHLD` → 返回 0；
5. `base_damage = attack + correction - defense`，负数归零；
   `base_damage == 0 && real_damage <= 0` → 直接 0；
6. `crit_correction = crit_atk ? gDmg.crit_correction : 100`；
7. `dividend = k_udiv(base_damage * increase * crit_correction, 100 * 100)`，
   先按 `max_damage` 钳一次（防止乘暴击后爆表）；
8. `result = k_udiv(dividend * 0x100, decrease)`；
9. `result == 0 && base_damage > 0` → 至少 1 点；
10. `result += real_damage`，最后再按 `max_damage` 钳一次，写回 `gDmg.result`。

真伤由 `CalcBattleRealDamage()` 算：技能固定值 + `gpBattleRealDamageCalcFuncs[]`
的 `damage = (*it)(damage, attacker, defender)` 链式累加。

### 1.4 减伤参考值表

`_DmgDecreaseRef[r]` 的定义是「`r`% 减伤对应的 ref」，满足
`伤害系数 = 0x100 / (0x100 + ref)`，所以：

```
ref(50%) = 0x100          伤害 x0.5
ref(25%) = 85             伤害 x0.75
ref(75%) = 768            伤害 x0.25
```

多个减伤**先加 ref 再算一次**：`50% + 25%` → `ref = 341` → `256 / 597 = 43%`
（即 57% 减伤），属于边际递减，和直接相加 75% 不同。

表可以用下面这条式子重新生成（已和 fe8 的 `data.c` 逐项核对，100 项全等）：

```
ref[r] = (0x100 * r + (100 - r) / 2) / (100 - r)     (r = 0..99)
```

### 1.5 战前 / UI 的分工

- 战前能确定的增伤/减伤（如 `MeleeManiac`、`Multiscale`）写 `GetBaseDmg(attacker)`，
  这样战斗预览能直接反映；依赖 RN 的（`DragonFang` 之类）只能写 `gDmg`，
  放在逐次命中阶段。
- `BattleUI.c::ModifyBattleStatusForUI()` 在 `BattleGenerate()` 末尾、
  仅 simulate 模式下调用，把 `battleAttack` 改写成 `defense + 模拟伤害`，
  让预览里 `atk - def` 这个老式子自动得到放大后的伤害。
  FE6 的预览结构不同，见 3.5。

### 1.6 fe8 侧的接入点

| 位置 | 改动 |
|---|---|
| `BattleHit.c::BattleGenerateHitAttributes` | 用 `BattleHit_CalcDamage()` 取代 `atk - def`、`*3`、`BATTLE_MAX_DAMAGE` 钳制 |
| `PreBattleCalc.c::PreBattleCalcInit` | 调 `PreBattleCalcInit_BaseDamage()` 初始化**两个方向**的 base dmg（只在 `attacker == &gBattleActor` 时执行） |
| `BattleGenerate.c::BattleGenerate` | 末尾调 `ModifyBattleStatusForUI()` |
| `Misc/SkillEffects/BattleDamage/{Attacker,Defender}Skills.c` | 逐次命中的技能实现，注册进 `BattleDamageCalcFuncs` |

## 2. FE6 现状对照

| fe8 cskillsys | fe6-rebuild | 备注 |
|---|---|---|
| `gBattleActor` / `gBattleTarget` | `gBattleUnitA` / `gBattleUnitB`（`IsBattleActor()`） | 命名不同，语义一致 |
| `gBattleStats.attack/defense/hitRate/critRate` | `gBattleSt.attack/defense/hit/crit` | FE6 的 `BattleSt` 没有 `silencer`，需要补字段 |
| `BattleHit::hpChange` | `BattleHit::damage` | FE6 只有 `damage` |
| `struct BattleHit gBattleHitArrayRe[]` | `gBattleHits[BATTLE_HIT_MAX]` | 命中上限 20 |
| `BattleHit::attributes` | 同名，位定义见 `include/battle.h` | 缺 `SILENCER` / `GREATSHLD` 两位 |
| `unit.curHP/maxHP` | `unit.hp/max_hp` | 移植技能代码时注意 |
| `battleAttack/battleDefense/...` | `battle_attack/battle_defense/...` | snake_case |
| `BATTLE_CONFIG_*` | `gBattleSt.flags` + `BATTLE_FLAG_*` | `SIMULATE/REAL/ARENA/BALLISTA/STATSONLY` |
| `BattleRoll1RN` / `BattleRoll2RN` | `BattleRandRoll()` / `BattleRandRoll2Rn()` | simulate 下直接返回 `simulationResult` |
| `gpKernelBattleDesignerConfig` | 无 | FE6 侧没有 designer config 机制，先用 `CONFIG_*` 宏 |
| `COMMON_SKILL_VALID()` + `#if defined(SID_x)` | 不需要 | FE6 的 `SID_*` 是 `enum`，不存在 `defined()` 判断；直接 `case SID_x:` |
| `BattleFastSkillTester`（plist/jlist/dynamic） | `SkillFastTester()` | 见 4.3，**不要**误用 `BattleSkillTester` |
| `Div()` / `Div10()` | `k_udiv()` / `k_udiv10()` | 本仓库禁止裸 `/`（见 AGENTS.md 宪法） |
| `.lyn.event` + `POIN` 钩子表 | 普通 C 常量函数指针数组 | 不用重定位 |

FE6 里已有的、和这套流程对接的现成代码：

- `src/Core/BattleSys/PreBattleCalc.c`：`ComputeBattleUnitStats()` 是战前 calc 的总入口，
  已经带 `PreBattleCalc_AttackerSkills/DefenderSkills` 两个技能 switch 循环，
  正好就是 fe8 `PreBattleCalcAttackerSkills/DefenderSkills` 的位置。
- `src/Core/BattleSys/Source/battle.c`：`BattleGenerate()` / `BattleUnwind()` /
  `BattleGenerateHit()` / `BattleGenerateHitAttributes()` 与 fe8 同名同构。
- `src/Core/BattleSys/Source/battlepreview.c`：短版预览自己算 `battle_attack - battle_defense`。
- `src/Common/banim/source/banim_setup.c`：战斗动画伤害仪表同样用 `atk - def`。
- `include/battle.h`：`struct BattleSt` / `struct BattleUnit` / `struct BattleHit`。

## 3. 移植设计

### 3.1 新增文件

| 文件 | 内容 |
|---|---|
| `include/hacks/battle-damage.h` | `struct Dmg` / `struct BaseDmg` / `GetBaseDmg()` / `DAMAGE_DECREASE()` / 钩子表与 API 声明 |
| `src/Core/BattleSys/BattleDamage.c` | `gDmg`、两个 `BaseDmg`、`_DmgDecreaseRef[100]`、`GetMaxDamage()`、`CalcBattleRealDamage()`、`PreBattleCalcInit_BaseDamage()`、`BattleHit_CalcDamage()`、`BattleCalcSimulateDamage()` |

放在 `src/Core/BattleSys/`（和 `PreBattleCalc.c` 同级），`Makefile` 的
`find-src` 会自动收进去，不用改构建脚本。

### 3.2 头文件骨架

```c
/* include/hacks/battle-damage.h */
#pragma once

#include "prelude.h"
#include "battle.h"

/*
 * result = ([atk + correction - def])
 *	  * (100% + increase%)
 *	  * (100% + crit_correction%)
 *	  / (100% + decrease%)
 *	  + real_damage
 */
struct Dmg {
	bool8 crit_atk;
	int result;
	int correction, real_damage, increase, decrease, crit_correction;
};
extern struct Dmg gDmg;

/* 非随机部分，每场战斗每个方向只算一次 */
struct BaseDmg {
	int increase, decrease, real_damage;
};
extern struct BaseDmg gActorBaseDmg, gTargetBaseDmg;

static inline struct BaseDmg *GetBaseDmg(struct BattleUnit *bu)
{
	return IsBattleActor(bu) ? &gActorBaseDmg : &gTargetBaseDmg;
}

/* DAMAGE_DECREASE(50) == 256 == 伤害减半 */
extern const u16 _DmgDecreaseRef[100];
#define DAMAGE_DECREASE(rate) (_DmgDecreaseRef[rate])

typedef void (*BattleDamageCalcFunc)(struct BattleUnit *attacker,
				     struct BattleUnit *defender);
typedef int (*BattleRealDamageCalcFunc)(int old, struct BattleUnit *attacker,
					struct BattleUnit *defender);

extern BattleDamageCalcFunc const gpBattleDamageCalcFuncs[];
extern BattleRealDamageCalcFunc const gpBattleRealDamageCalcFuncs[];

int GetMaxDamage(struct BattleUnit *attacker, struct BattleUnit *defender);
int CalcBattleRealDamage(struct BattleUnit *attacker,
			 struct BattleUnit *defender);
void PreBattleCalcInit_BaseDamage(struct BattleUnit *attacker,
				  struct BattleUnit *defender);
int BattleHit_CalcDamage(struct BattleUnit *attacker,
			 struct BattleUnit *defender);
int BattleCalcSimulateDamage(struct BattleUnit *attacker,
			     struct BattleUnit *defender);
```

### 3.3 公式实现骨架

```c
/* src/Core/BattleSys/BattleDamage.c */
struct Dmg EWRAM_DATA gDmg = {};
struct BaseDmg EWRAM_DATA gActorBaseDmg = {};
struct BaseDmg EWRAM_DATA gTargetBaseDmg = {};

/* ref[r] = (0x100 * r + (100 - r) / 2) / (100 - r)，与 fe8 data.c 逐项一致 */
const u16 _DmgDecreaseRef[100] = {
	[0] = 0, [1] = 3, [2] = 5, /* ... 直接从 fe8 data.c 抄 100 项 ... */
	[99] = 25344,
};

/* 端口顺序：技能实现后往表里加一项，末尾保持 NULL */
BattleDamageCalcFunc const gpBattleDamageCalcFuncs[] = { NULL };
BattleRealDamageCalcFunc const gpBattleRealDamageCalcFuncs[] = { NULL };

int GetMaxDamage(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	return CONFIG_BATTLE_MAX_DAMAGE;
}

int CalcBattleRealDamage(struct BattleUnit *attacker,
			 struct BattleUnit *defender)
{
	const BattleRealDamageCalcFunc *it;
	int damage = 0;

	/* 真伤技能示例（SID 需先加进 constants/skills.h 的 enum）：
	 * if (SkillFastTester(&attacker->unit, SID_RuinedBlade))
	 *	damage += SKILL_EFF2(SID_RuinedBlade);
	 */

	for (it = gpBattleRealDamageCalcFuncs; *it; it++)
		damage = (*it)(damage, attacker, defender);

	return damage;
}

void PreBattleCalcInit_BaseDamage(struct BattleUnit *attacker,
				  struct BattleUnit *defender)
{
	gActorBaseDmg.increase = 100;
	gActorBaseDmg.decrease = 0x100;
	gActorBaseDmg.real_damage = CalcBattleRealDamage(&gBattleUnitA,
							 &gBattleUnitB);

	gTargetBaseDmg.increase = 100;
	gTargetBaseDmg.decrease = 0x100;
	gTargetBaseDmg.real_damage = CalcBattleRealDamage(&gBattleUnitB,
							  &gBattleUnitA);
}

int BattleHit_CalcDamage(struct BattleUnit *attacker,
			 struct BattleUnit *defender)
{
	const BattleDamageCalcFunc *it;
	struct BaseDmg *base_dmg = GetBaseDmg(attacker);
	int max_damage = GetMaxDamage(attacker, defender);
	int base_damage, crit_correction, result, dividend;

	gDmg.crit_atk = false;
	gDmg.correction = 0;
	gDmg.crit_correction = CONFIG_BATTLE_CRIT_CORRECTION;
	gDmg.increase = base_dmg->increase;
	gDmg.decrease = base_dmg->decrease;
	gDmg.real_damage = base_dmg->real_damage;

	/* 暴击 / 必杀判定 */
	if (BattleRandRoll(gBattleSt.crit, false)) {
		gBattleHitIt->attributes |= BATTLE_HIT_ATTR_CRIT;
		gDmg.crit_atk = true;

		/* FE6 的 battle_silencer 目前恒为 0；为 0 时不掷骰，
		 * 避免改变原版 RN 序列（见 4.2） */
		if (gBattleSt.silencer > 0 &&
		    BattleRandRoll(gBattleSt.silencer, false)) {
			gBattleHitIt->attributes |= BATTLE_HIT_ATTR_SILENCER;
			gDmg.result = max_damage;
			return max_damage;
		}
	}

	/* 逐次命中的技能钩子 */
	for (it = gpBattleDamageCalcFuncs; *it; it++)
		(*it)(attacker, defender);

	if (gBattleHitIt->attributes & BATTLE_HIT_ATTR_SILENCER) {
		gDmg.result = max_damage;
		return max_damage;
	}

	if (gBattleHitIt->attributes & BATTLE_HIT_ATTR_GREATSHLD) {
		gDmg.result = 0;
		return 0;
	}

	base_damage = gBattleSt.attack + gDmg.correction - gBattleSt.defense;

	if (base_damage < 0)
		base_damage = 0;

	if (base_damage == 0 && gDmg.real_damage <= 0) {
		gDmg.result = 0;
		return 0;
	}

	crit_correction = gDmg.crit_atk ? gDmg.crit_correction : 100;

	dividend = k_udiv(base_damage * gDmg.increase * crit_correction,
			  100 * 100);

	if (dividend > max_damage)
		dividend = max_damage;

	result = k_udiv(dividend * 0x100, gDmg.decrease);

	if (result == 0 && base_damage > 0)
		result = 1;

	result += gDmg.real_damage;

	if (result > max_damage)
		result = max_damage;

	gDmg.result = result;
	return result;
}
```

### 3.4 接入点改动清单

**(1) `include/configs/configs.h`** 新增两个宏（`Makefile` 已经让所有 hack C 源依赖
`configs.h`，改完会自动全量重编）：

```c
/* battle damage calc */
#define CONFIG_BATTLE_MAX_DAMAGE 99	 /* BattleHit::damage 是 i8，且面板两位 */
#define CONFIG_BATTLE_CRIT_CORRECTION 300 /* 100 = 不暴击，300 = FE6 原版 3 倍 */
```

同时把 `battle.c` 里 `enum { BATTLE_MAX_DAMAGE = 99 };` 改成引用该宏，
避免两处数字不同步。

**(2) `include/battle.h`**

- 新增两个命中属性位（`attributes` 是 `u16`，0..10 已占用）：

```c
	BATTLE_HIT_ATTR_SILENCER   = (1 << 11),
	BATTLE_HIT_ATTR_GREATSHLD  = (1 << 12),
```

- `struct BattleSt` 末尾追加 `i16 silencer;`（当前结构 0x14 字节，
  追加只影响尾部，不改变既有字段偏移）。
- 修改声明：`void BattleGenerateHitAttributes(struct BattleUnit *attacker,
  struct BattleUnit *defender);`（现有只有 `attacker`，新公式需要防御方）；
  仓库内没有别的调用点，改签名不会波及其它文件。

**(3) `src/Core/BattleSys/Source/battle.c`**

- `BattleUpdateBattleStats()` 末尾补 `gBattleSt.silencer = ...`，
  并把 `battle_silencer` 钳到 0..100（对齐 fe8 的 `LIMIT_AREA`；注意
  `LIMIT_AREA` 宏展开不是 `do { } while (0)`，不要直接塞进 `if` 当单语句）。
- `BattleGenerateHitAttributes()` 改成：

```c
void BattleGenerateHitAttributes(struct BattleUnit *attacker,
				 struct BattleUnit *defender)
{
	gBattleSt.damage = 0;

	if (BattleRandRoll2Rn(gBattleSt.hit, TRUE) == FALSE) {
		gBattleHitIt->attributes |= BATTLE_HIT_ATTR_MISS;
		return;
	}

	gBattleSt.damage = BattleHit_CalcDamage(attacker, defender);

	if (gBattleSt.damage != 0)
		attacker->dealt_damage = TRUE;
}
```

- `BattleGenerateHit()` 里对应改调用参数。
- `#include "battle-damage.h"`。
- **不要**在 `BattleGenerate()` 末尾调 fe8 的 `ModifyBattleStatusForUI()`，
  原因见 3.5。

**(4) `src/Core/BattleSys/PreBattleCalc.c`**

在 `ComputeBattleUnitStats()` 里、「vanilla 统计值算完」之后、
`PreBattleCalc_AttackerSkills()` 之前插入：

```c
	/* base damage 只初始化一次（对齐 fe8 的 PreBattleCalcInit） */
	if (attacker == &gBattleUnitA)
		PreBattleCalcInit_BaseDamage(attacker, defender);
```

顺序很关键：后续战前技能要往 `GetBaseDmg(attacker)->increase/decrease` 上累加，
必须初始化在前。

**(5) `src/Core/BattleSys/Source/battlepreview.c`**

短版预览把

```c
	damage = gBattleUnitB.battle_attack - gBattleUnitA.battle_defense;
	if (damage < 0)
		damage = 0;
```

换成 `damage = BattleCalcSimulateDamage(&gBattleUnitB, &gBattleUnitA);`
（A 方向同理）。这是 FE6 相对 fe8 的替代方案，理由见 3.5。

**(6) 技能文件**

- 战前、非随机：加进 `src/SkillEffects/BattleSkills/AttackerSkills.c` /
  `DefenderSkills.c` 的 switch，写 `GetBaseDmg(attacker)->increase/decrease`。
- 逐次命中、依赖 RN：新建 `src/SkillEffects/BattleSkills/BattleDamage.c`，
  按 fe8 `Misc/SkillEffects/BattleDamage/*.c` 的写法写成
  `BattleDamageCalc_AttackerSkills/DefenderSkills`，再把函数名加进
  `gpBattleDamageCalcFuncs[]`。

### 3.5 为什么预览不照抄 `ModifyBattleStatusForUI()`

fe8 的预览只有「威力」一栏，所以它把 `battleAttack` 改写成
`defense + 模拟伤害`，让老的 `atk - def` 自动正确；副作用是长版预览里
「攻击」栏位显示的值也被改写。

FE6 的长版预览（`DrawBattlePreviewContentsLong`）**同时**显示「攻撃」和「守備」，
短版显示「威力」。所以这里采用更干净的做法：

```c
int BattleCalcSimulateDamage(struct BattleUnit *attacker,
			     struct BattleUnit *defender)
{
	struct BaseDmg *base_dmg = GetBaseDmg(attacker);
	int max_damage = GetMaxDamage(attacker, defender);
	int base_damage, dividend, result;

	base_damage = attacker->battle_attack - defender->battle_defense;

	if (base_damage < 0)
		base_damage = 0;

	if (base_damage == 0 && base_dmg->real_damage <= 0)
		return 0;

	dividend = k_udiv(base_damage * base_dmg->increase, 100);

	if (dividend > max_damage)
		dividend = max_damage;

	result = k_udiv(dividend * 0x100, base_dmg->decrease);

	if (result == 0 && base_damage > 0)
		result = 1;

	result += base_dmg->real_damage;

	if (result > max_damage)
		result = max_damage;

	return result;
}
```

不写回任何 `BattleUnit` 字段，`atk` 栏位保持原值，长版/短版都对。

### 3.6 未来技能的两种写法

```c
/* 战前，非随机：进 PreBattleCalc_AttackerSkills 的 switch */
case SID_MeleeManiac:
	if (gBattleSt.range != 1)
		GetBaseDmg(attacker)->increase += SKILL_EFF0(SID_MeleeManiac);

	break;

/* 战中，依赖 RN：进 BattleDamageCalc_AttackerSkills */
case SID_DragonFang:
	if (CheckBattleSkillActivate(attacker, defender, SID_DragonFang,
				     attacker->unit.skl * 2))
		gDmg.increase += SKILL_EFF0(SID_DragonFang);

	break;

case SID_InfinityEdge:
	if (gDmg.crit_atk)
		gDmg.crit_correction += SKILL_EFF0(SID_InfinityEdge);

	break;

/* 减伤统一走查表 */
case SID_Multiscale:
	if (defender->unit.hp == defender->unit.max_hp)
		gDmg.decrease += DAMAGE_DECREASE(SKILL_EFF0(SID_Multiscale));

	break;
```

`gDmg.crit_atk` 也是技能文件判断「本次是否暴击」的唯一可靠标志
（`BATTLE_HIT_ATTR_CRIT` 也可能被技能主动置位，例如 colossus）。

### 3.7 与 `docs/game-design/技能分配.md` 的对应

| 设计稿技能 | 落在哪个维度 | 备注 |
|---|---|---|
| 猎杀：对受伤敌人伤害 +15% | 战前 `increase += 15` | 非随机，可进预览 |
| 强攻：命中 -10、伤害 +20% | 战前 `increase += 20` + `battle_hit -= 10` | 同上 |
| 巨力：技% 伤害 +200% | 战中 `gDmg.increase += 200` | 依赖 RN |
| 流星：速% 五连、伤害减半 | 战中 `gDmg.decrease += DAMAGE_DECREASE(50)` | 还要改连击数，属于攻击次数系统 |
| 月光：技% 无视防御 | 战中 `gBattleSt.defense = 0` | fe8 的 `SID_Luna` 就是直接清零 |
| 大盾：技% 免伤 | 战中置 `BATTLE_HIT_ATTR_GREATSHLD` | `BattleHit_CalcDamage()` 直接返回 0 |
| 太阳：技% 吸血 | 不在本流程 | 属于 Hp drain，走 `BattleHitExpa` 扩展 |
| 坚守：未移动时受伤 -5 | 战前 `attacker->battle_defense += 5` | 固定值不进百分比管线 |
| 剑术熟稔 / 武器精通：攻 +5 | 战前 `attacker->battle_attack += 5` | 现有 `PreBattleCalc_*` 已在做 |
| 狂暴：每受 4 伤伤害 +1 | 需「受伤计数」，不是纯伤害公式 | 先补 fe8 的 `gBattleActorGlobalFlag.round_cnt_hit` 类回合计数基础设施 |
| 龙鳞：受伤减半 | 战前 `GetBaseDmg(attacker)->decrease += DAMAGE_DECREASE(50)` | 对齐 fe8 `DragonSkin` |

固定数值（+5 攻、-5 伤）优先走战前 `battle_attack/battle_defense`，
不要硬塞进百分比乘区，否则和「+10%」叠加时会失真。

## 4. 坑与差异清单

### 4.1 暴击倍率与伤害上限

- FE6 原版：`(atk-def) * 3`，再钳 99。移植后默认
  `CONFIG_BATTLE_CRIT_CORRECTION 300` + `CONFIG_BATTLE_MAX_DAMAGE 99`，
  数值完全等价：`k_udiv(base * 100 * 300, 10000)` 就是 `base * 30000 / 10000 = base * 3`，
  再 `k_udiv(x * 0x100, 0x100) = x`，两次除法都不引入取整误差。
- 若以后把宏改成 200，暴击强度直接降到 2 倍，属于平衡改动，要同步告知。

### 4.2 RN 序列

- 原版每次命中：命中判定 2RN（`BattleRandRoll2Rn`），暴击判定 1RN
  （`BattleRandRoll(gBattleSt.crit, false)`，simulate 下不消耗）。新流程在这一处保持不变。
- 必杀（silencer）是 fe8 新增的第二次掷骰。FE6 的 `battle_silencer` 目前恒为 0，
  若照抄 fe8 每次都掷，会白白多消耗 RN、改变后续随机序列。
  所以加 `gBattleSt.silencer > 0 &&` 前置条件，默认行为与现在完全一致。
- simulate 模式下 `BattleRandRoll` 直接返回传入的 `simulationResult`，
  不消耗 RN，这点和 fe8 一致，不需要额外处理。

### 4.3 技能检测用 `SkillFastTester`，不是 `BattleSkillTester`

`BattleSkillTester()` 查的是 `BattleUnit::skills_bitfile`，是 O(1) 位图查询，
刻意保持最简（战斗中会被反复调用），所以这里不做惰性重建或 Nihil 动态判断。

bitfile 的时序已经在本轮单独修复（见本小节末尾），当前约定：

快照拆成两层，避免「逐角色初始化」和「Nihil 需要双方」的耦合：

```c
/* 单角色：只依赖自己，可在任何上下文中调用 */
void SetupBattleUnitSkillList(struct BattleUnit *bu);

/* 整场：双方单角色快照 + Nihil 交叉封印，调用方保证 A/B 都已就绪 */
void SetupBattleSkillList(void);
```

- `SetupBattleUnitSkillList()` 只构建传入角色自己的列表和 bitfile，不碰对手；
- `SetupBattleSkillList()` = 两次单角色构建 + 两条对称的 Nihil 判定
  （读对方 `SkillFastTester(..., SID_Nihil)`，命中则清空自己的列表和 bitfile）；
- `InitBattleUnit()` 恢复成纯初始化，不再有任何跨角色副作用；
- `InitBattleUnitVanilla()` 会把 bitfile 清零，任何"忘记重建"的路径退化为
  「无技能生效」，而不是沿用上一次战斗的残留；
- `BattleSkillTester` 本身仍然只有 `check_bit` 一行。

调用点（都在 `SetBattleUnitWeapon()` 之前，满足未来在武器选择里查技能）：

| 调用点 | 用哪个 |
|---|---|
| `BattleGenerateSimulationInternal` / `BattleGenerateRealInternal`（Init A/B 之后） | 整场 |
| `BattleGenerateArena`（Init A/B 之后） | 整场 |
| `BattleInitItemEffectTarget`（使用者 A 与目标 B 都就绪后） | 整场 |
| `BattleGenerateDisplayStats`（只有 A 是真实单位，B 是空壳） | 单角色 A |
| `BattleInitItemEffect`（只有使用者 A 就绪） | 单角色 A |

即便如此，本方案的真伤/战前 base dmg 仍用 `SkillFastTester()`
（查 P/J 表 + `unit->skills[]`），理由是对齐 fe8 的 `BattleFastSkillTester()`
语义：不受 `SID_Nihil` 影响，也不绑定快照时序。

逐次命中的 `BattleDamageCalc_*` 沿用现有 `GetSkillList()` 写法即可
（和当前 `PreBattleCalc_AttackerSkills` 一致）。

#### bitfile 快照时序修复（已完成）

旧实现把重建挂在 `InitBattleUnit()` 的副作用上（`UnitToBattle_SetupSkillList`
只在初始化 B 时触发），隐含假设「任何战斗都先初始化 A、后初始化 B」，
仓库里有三条路径不满足：

| 路径 | 旧现象 | 现在 |
|---|---|---|
| 障碍物战斗（`mapmenu.c:667` + `InitObstacleBattleUnit`） | `GetUnit(0)` 为 NULL，`InitBattleUnit(B, NULL)` 提前返回，B 的 bitfile 沿用上一场 | 入口处整场快照，B 按 `PID_WALL`/`JID_OBSTACLE` 得到空表 |
| 转职（`PromotionUI.c:1455`） | 先初始化 B、后初始化 A，A 的 bitfile 是转职前快照 | 不再有隐式重建；转职路径 bitfile 为 0（保守） |
| 状态画面（`BattleGenerateDisplayStats`） | 只初始化 A，且 B 的 `jinfo` 被置 NULL，`GetSkillList(&B.unit)` 在 `UNIT_JID()` 处读空指针 | 只建 A 的单角色快照；`setup_skill_list()` 增加 `jinfo != NULL` 判断，空壳单位得到空表 |

另外 `spawn_list_buffer()` 的归属判断从「按 `unit->id` 比较」改成
「按 `&gBattleUnitA.unit` / `&gBattleUnitB.unit` 指针比较」：状态画面的空壳 B
保留着上一次的 id，按 id 命中会把 A 的列表写坏。

**踩坑记录**：`setup_skill_list()` 的去重缓冲原本借用 `gBuf`，不要改成
独立的 static 位图。实测在干净基线上只把那 128 字节换成 static 数组，
即使逻辑等价也会改变既有场景的帧内时序——`gBuf` 的清零副作用被热路径依赖。
当前实现保持 `gBuf` 不变。

### 4.4 数值范围与溢出

- `struct BattleHit::damage` 是 `i8`，最大 127；`GetMaxDamage()` 默认 99 是安全的。
  如果把 `CONFIG_BATTLE_MAX_DAMAGE` 调过 127，需要同步把该字段改成 `i16`
  并检查 `banim`/`manim` 的 HP 显示（`hit->damage` 被直接拿去减 HP）。
- `base_damage * increase * crit_correction`：99 * 1000 * 300 ≈ 3e7，`u32` 够用；
  但需要给 `increase` 定一个上限（建议 pre-battle 结算时钳到 1000 以内），
  否则极端叠加会溢出。
- `gDmg.decrease` 若被技能减到 0，`k_udiv` 会返回 0（不是除零陷阱），
  但会静默变成 0 伤害；建议在 `BattleHit_CalcDamage()` 入口兜底
  `if (gDmg.decrease <= 0) gDmg.decrease = 1;`，或约定技能只加不减。

### 4.5 除法（本仓库宪法）

- 公式里两处除法都必须走 klib：
  `k_udiv(a, 100 * 100)`、`k_udiv(a, 0x100)`；不能写 `/ 10000`、`/ 256`
  （256 虽然是 2 的幂，但 `decrease` 是运行期值，不能用移位替代编译器优化）。
- 编译后自查：`arm-none-eabi-nm fe6re.elf | grep '__aeabi_.*div'` 必须无输出。

### 4.6 其它会读到「伤害」的地方

| 位置 | 现状 | 影响 |
|---|---|---|
| `battlepreview.c` 短版 | 自己算 `atk - def` | **必须改**，否则预览和实际不符 |
| `banim_setup.c` 伤害仪表 | `battle_attack - battle_defense` | 不致命，仪表可能偏低；建议后续用 `BattleCalcSimulateDamage()` |
| `vanilla/arena.c` | 用 `atk - def` 判断 `maxHP/6` | 只影响斗技场 AI 决策，可后续再改 |
| `ai_battle.c` | 用 `atk - def` 做评分 | 同上，属于 AI 调优范围 |
| `BattleGenerateHitEffects()` | 用 `gBattleSt.damage` 扣 HP | 不需要改 |

### 4.7 与 fe8 的其它结构性差异

- fe8 有 `BattleStatusBackup`（`BattleUnitOriginalStatus()`）和
  `gBattleActorGlobalFlag.round_cnt_hit`（回合命中计数），很多减伤/增伤技能依赖它们
  （如 `Spurn`、`Barricade`、`DragonWarth`）。FE6 目前都没有，
  这些技能要么先补基础设施，要么改写触发条件。
- fe8 的 `BattleGenerateHitAttributes` 会顺手做 `RegisterHitCnt()`、
  `BattleCheckPetrify()`、`TriggerKtutorial()`；FE6 没有对应机制，先不搬。
- fe8 的 `BattleHit` 扩展（`ExtBattleHit::hp_drain/hp_cost/debuff`）对应
  FE6 的 `struct BattleHitExpa`（现在只有 `sid_actor/sid_target`），
  属于「Hp drain / Hp cost」章节，不在本次范围。

## 5. 落地顺序（每步都能单独编译/验证）

1. **骨架 + 常量**：新增 `battle-damage.h`、`BattleDamage.c`（只有
   `gDmg`/`BaseDmg`/查表/`GetMaxDamage`/`BattleCalcSimulateDamage`），
   `configs.h` 加两个宏，`battle.c` 的 `BATTLE_MAX_DAMAGE` 改为引用宏。
   → `make all` 通过，行为零变化。
2. **接入公式**：`battle.h` 加两个属性位 + `BattleSt.silencer` +
   改 `BattleGenerateHitAttributes` 签名；`battle.c` 调 `BattleHit_CalcDamage()`。
   此时公式等价于原版（`increase=100`、`decrease=0x100`、`crit=300`）。
   → 用原版对照测试确认伤害/暴击数字不变。
3. **战前 base dmg**：`PreBattleCalc.c` 调 `PreBattleCalcInit_BaseDamage()`。
   → 仍无行为变化（没有技能写 base dmg）。
4. **预览**：`battlepreview.c` 改用 `BattleCalcSimulateDamage()`。
   → 行为仍等价，但为后续技能铺好路。
5. **技能端口**：先加 1 个纯数值增益（如 `+10% 伤害`）和 1 个纯数值减伤，
   再核对预览/实战一致，然后才批量搬 fe8 的技能。

推荐先只做 1..4 作为一次提交，技能单独提交，便于回归。

## 6. 验证

- 构建（`DEVKITPRO`/`DEVKITARM` 只在登录 shell 里导出）：

```sh
bash -lc 'cd ~/fe6-rebuild && make all -j8'
```

- 除法自查：

```sh
arm-none-eabi-nm fe6re.elf | grep '__aeabi_.*div'   # 期望无输出
```

- 行为回归：
  - 现有 `./tools/emu/testmenu-tests.sh` 全绿；
  - 建议补一个 battle case：固定 `RandSetSt`，让攻击 20 / 防御 10，命中/暴击可控，
    断言 `gBattleHits[0].damage == 10`；暴击用例断言 30；
  - 再加一个「`GetBaseDmg(attacker)->increase += 50`」的用例，断言 15；
    加 `DAMAGE_DECREASE(50)` 的用例，断言 5（10 * 0.5，向下取整）。
- 手测：战斗预览短版「威力」与实际跳出数字一致；长版「攻撃」仍显示原始攻击力。

## 7. 不在本次范围

- Hp drain / Hp cost（`ExtBattleHit`、`TryBattleHpCost`、`AddBattleHpCost`、
  `ParseBattleHitToBanimCmd` 的 HP 槽位）；
- 必杀（silencer）的 banim/manim 表现（FE6 无此机制，属性位先占位）；
- `BattleStatusBackup`、回合命中计数、`CheckBattleSkillActivate` 等技能基础设施；
- combat art、武器槽扩展、`ModifyBattleStatusForUI` 式的长版预览改写。
