#include "prelude.h"
#include "unit.h"
#include "item.h"
#include "battle.h"

/*
 * Effective battle stats, split out of battle.c after the fe8u cskillsys
 * BattleCalcReal.c.  This is the second half of the battle calc: it turns the
 * pre-battle numbers (battle_hit / battle_crit / ...) into the values the hit
 * loop actually rolls against.
 */

static void ComputeBattleUnitEffectiveHitRate(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	attacker->battle_effective_hit = attacker->battle_hit - defender->battle_avoid;

	if (attacker->battle_effective_hit > 100)
		attacker->battle_effective_hit = 100;

	if (attacker->battle_effective_hit < 0)
		attacker->battle_effective_hit = 0;
}

static void ComputeBattleUnitEffectiveCritRate(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	attacker->battle_effective_crit = attacker->battle_crit - defender->battle_dodge;

	if (attacker->battle_effective_crit < 0)
		attacker->battle_effective_crit = 0;

	/*
	 * CONFIG_DEBUG_CRIT_HIT forces the crit in BattleHit_CalcDamage(); mirror
	 * it here so the battle forecast and the stat screen agree with it.
	 */
#if CONFIG_DEBUG_CRIT_HIT
	attacker->battle_effective_crit = 100;
#endif
}

static void ComputeBattleUnitSpecialWeaponStats(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	if (attacker->weapon_attributes & ITEM_ATTR_LIGHTBRAND) {
		attacker->battle_attack = 10;
		defender->battle_defense = 0;

		attacker->battle_crit = 0;
		attacker->battle_effective_crit = 0;

		return;
	}

	if (GetItemWeaponEffect(attacker->weapon_before) == WEAPON_EFFECT_ECLIPSE) {
		attacker->battle_attack = defender->unit.hp - 1;

		if (attacker->battle_attack == 0)
			attacker->battle_attack = 1;

		defender->battle_defense = 0;

		attacker->battle_crit = 0;
		attacker->battle_effective_crit = 0;
	}
}

void ComputeBattleUnitEffectiveStats(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	ComputeBattleUnitEffectiveHitRate(attacker, defender);
	ComputeBattleUnitEffectiveCritRate(attacker, defender);
	ComputeBattleUnitSpecialWeaponStats(attacker, defender);
}
