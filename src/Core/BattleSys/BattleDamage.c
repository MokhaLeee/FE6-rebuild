#include "prelude.h"
#include "battle.h"
#include "battle-damage.h"
#include "skill-sys.h"
#include "klib.h"

struct Dmg EWRAM_DATA gDmg = {};
struct BaseDmg EWRAM_DATA gActorBaseDmg = {};
struct BaseDmg EWRAM_DATA gTargetBaseDmg = {};

/*
 * Hook: per-hit damage modifiers. Ported skills go here; they run after the
 * critical roll and may change gBattleSt (attack/defense), gDmg
 * (correction/increase/decrease/crit_correction) or the hit attributes.
 */
static void battle_damage_calc_hook(struct BattleUnit *attacker,
				    struct BattleUnit *defender)
{
}

/*
 * Hook: skills that deal damage ignoring defense and the multipliers above.
 * Accumulate into damage and return it.
 */
static int battle_real_damage_calc_hook(int damage,
					struct BattleUnit *attacker,
					struct BattleUnit *defender)
{
	return damage;
}

int GetMaxDamage(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	return CONFIG_BATTLE_MAX_DAMAGE;
}

int CalcBattleRealDamage(struct BattleUnit *attacker,
			 struct BattleUnit *defender)
{
	/*
	 * The stat screen keeps a hollow target (pinfo set, jinfo cleared), and
	 * base damage is computed for both directions. UNIT_IS_VALID() only
	 * checks pinfo, so reject the hollow unit here.
	 */
	if (!UNIT_IS_VALID(&attacker->unit) || attacker->unit.jinfo == NULL)
		return 0;

	return battle_real_damage_calc_hook(0, attacker, defender);
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

/*
 * Damage decrease reference value, index is the reduction percentage:
 * ref[r] = (0x100 * r + (100 - r) / 2) / (100 - r)
 * The final factor applied is 0x100 / (0x100 + ref).
 */
const u16 _DmgDecreaseRef[100] = {
	   0,     3,     5,     8,    11,    13,    16,    19,    22,    25,
	  28,    32,    35,    38,    42,    45,    49,    52,    56,    60,
	  64,    68,    72,    76,    81,    85,    90,    95,   100,   105,
	 110,   115,   120,   126,   132,   138,   144,   150,   157,   164,
	 171,   178,   185,   193,   201,   209,   218,   227,   236,   246,
	 256,   266,   277,   289,   301,   313,   326,   339,   354,   368,
	 384,   400,   418,   436,   455,   475,   497,   520,   544,   570,
	 597,   627,   658,   692,   729,   768,   811,   857,   908,   963,
	1024,  1091,  1166,  1250,  1344,  1451,  1573,  1713,  1877,  2071,
	2304,  2588,  2944,  3401,  4011,  4864,  6144,  8277, 12544, 25344,
};

int BattleHit_CalcDamage(struct BattleUnit *attacker,
			 struct BattleUnit *defender)
{
	struct BaseDmg *base_dmg = GetBaseDmg(attacker);
	int max_damage = GetMaxDamage(attacker, defender);
	int base_damage, crit_correction, result, dividend;

	gDmg.crit_atk = FALSE;
	gDmg.correction = 0;
	gDmg.crit_correction = CONFIG_BATTLE_CRIT_CORRECTION;
	gDmg.increase = base_dmg->increase;
	gDmg.decrease = base_dmg->decrease;
	gDmg.real_damage = base_dmg->real_damage;

	if (gDmg.decrease <= 0)
		gDmg.decrease = 1;

	if (BattleRandRoll(gBattleSt.crit, FALSE)) {
		gBattleHitIt->attributes |= BATTLE_HIT_ATTR_CRIT;
		gDmg.crit_atk = TRUE;
	}

	/* Per-hit skill pass. */
	battle_damage_calc_hook(attacker, defender);

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
