#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "item.h"

#include "klib.h"
#include "str-mag.h"
#include "skill-sys.h"

static void ComputeBattleUnitDefense(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	int status;

	if (IsMagicAttack(defender)) {
		/* res */
		status = attacker->terrain_resistance + attacker->unit.res;
	 } else {
		/* def */
		status = attacker->terrain_defense + attacker->unit.def;
	 }

	attacker->battle_defense = status;
}

static void ComputeBattleUnitAttack(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	int status;
	bool effective = false;
	int effective_amplifier = 100;
	int effective_reduce = 0x100;

	status = GetItemMight(attacker->weapon);

	attacker->battle_attack = + attacker->advantage_bonus_damage;

	if (IsItemEffectiveAgainst(attacker->weapon, &defender->unit)) {
		effective = true;
		effective_amplifier = 300;
	}

	if (effective) {
		status = k_udiv(status * effective_amplifier * 0x100, 100 * effective_reduce);
	}

	/* todo for WTA */
	status += attacker->advantage_bonus_damage;

	if (IsMagicAttack(attacker))
		status += attacker->unit.mag;
	else
		status += attacker->unit.pow;

	attacker->battle_attack = status;
}

static void ComputeBattleUnitSpeed(struct BattleUnit *attacker)
{
	int weight = GetItemWeight(attacker->weapon_before);

	weight -= attacker->unit.bonus_con;

	if (weight < 0)
		weight = 0;

	attacker->battle_speed = attacker->unit.spd - weight;

	if (attacker->battle_speed < 0)
		attacker->battle_speed = 0;
}

static void ComputeBattleUnitHitRate(struct BattleUnit *attacker)
{
	attacker->battle_hit = attacker->unit.skl*2 + GetItemHit(attacker->weapon) + attacker->unit.lck/2 + attacker->advantage_bonus_hit;
}

static void ComputeBattleUnitAvoidRate(struct BattleUnit *attacker)
{
	attacker->battle_avoid = attacker->battle_speed*2 + attacker->terrain_avoid + attacker->unit.lck;

	if (attacker->battle_avoid < 0)
		attacker->battle_avoid = 0;
}

static void ComputeBattleUnitCritRate(struct BattleUnit *attacker)
{
	attacker->battle_crit = GetItemCrit(attacker->weapon) + attacker->unit.skl/2;

	if (UNIT_ATTRIBUTES(&attacker->unit) & UNIT_ATTR_CRITBONUS)
		attacker->battle_crit += 30;
}

static void ComputeBattleUnitSilencerRate(struct BattleUnit *attacker)
{
	attacker->battle_silencer = 0;
}

static void ComputeBattleUnitDodgeRate(struct BattleUnit *attacker)
{
	attacker->battle_dodge = attacker->unit.lck;
}

static void PreBattleCalcEnd(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	if (attacker->battle_attack < 0)
		attacker->battle_attack = 0;

	if (attacker->battle_defense < 0)
		attacker->battle_defense = 0;

	if (attacker->battle_speed < 0)
		attacker->battle_speed = 0;

	if (attacker->battle_hit < 0)
		attacker->battle_hit = 0;

	if (attacker->battle_avoid < 0)
		attacker->battle_avoid = 0;

	if (attacker->battle_crit < 0)
		attacker->battle_crit = 0;

	if (attacker->battle_dodge < 0)
		attacker->battle_dodge = 0;

	if (attacker->battle_silencer < 0)
		attacker->battle_silencer = 0;
}

extern void PreBattleCalc_AttackerSkills(struct BattleUnit *attacker, struct BattleUnit *defender);
extern void PreBattleCalc_DefenderSkills(struct BattleUnit *attacker, struct BattleUnit *defender);

void ComputeBattleUnitStats(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	/* init */
	ComputeBattleUnitDefense(attacker, defender);
	ComputeBattleUnitAttack(attacker, defender);
	ComputeBattleUnitSpeed(attacker);
	ComputeBattleUnitHitRate(attacker);
	ComputeBattleUnitAvoidRate(attacker);
	ComputeBattleUnitCritRate(attacker);
	ComputeBattleUnitDodgeRate(attacker);
	ComputeBattleUnitSilencerRate(attacker);

	/* calc loop */
	PreBattleCalc_AttackerSkills(attacker, defender);
	PreBattleCalc_DefenderSkills(attacker, defender);

	ComputeBattleUnitSupportBonuses(attacker, defender);

	/* end */
	PreBattleCalcEnd(attacker, defender);
}
