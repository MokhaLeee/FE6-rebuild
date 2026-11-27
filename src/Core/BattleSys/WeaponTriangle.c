#include "prelude.h"
#include "item.h"
#include "battle.h"

/*
 * Weapon triangle bonus, split out of battle.c after the fe8u cskillsys
 * WeaponTriangle.c.  The rules table only feeds the hit/damage advantage
 * bonus; every skill-side triangle modifier belongs in PreBattleCalc.c.
 */

struct WeaponTriangleRule {
	i8 attackerKind;
	i8 defenderKind;
	i8 hitBonus;
	i8 damageBonus;
};

static struct WeaponTriangleRule CONST_DATA sWeaponTriangleRules[] = {
	{ ITEM_KIND_SWORD, ITEM_KIND_LANCE, -10, -1 },
	{ ITEM_KIND_SWORD, ITEM_KIND_AXE,   +10, +1 },

	{ ITEM_KIND_LANCE, ITEM_KIND_AXE,   -10, -1 },
	{ ITEM_KIND_LANCE, ITEM_KIND_SWORD, +10, +1 },

	{ ITEM_KIND_AXE,   ITEM_KIND_SWORD, -10, -1 },
	{ ITEM_KIND_AXE,   ITEM_KIND_LANCE, +10, +1 },

	{ ITEM_KIND_ANIMA, ITEM_KIND_ELDER, -10, -1 },
	{ ITEM_KIND_ANIMA, ITEM_KIND_LIGHT, +10, +1 },

	{ ITEM_KIND_LIGHT, ITEM_KIND_ANIMA, -10, -1 },
	{ ITEM_KIND_LIGHT, ITEM_KIND_ELDER, +10, +1 },

	{ ITEM_KIND_ELDER, ITEM_KIND_LIGHT, -10, -1 },
	{ ITEM_KIND_ELDER, ITEM_KIND_ANIMA, +10, +1 },

	{ .attackerKind = -1 },
};

static void BattleApplyReaverEffect(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	// those <<1>>1 are useless but without them it doesn't match :/

	attacker->advantage_bonus_hit = -attacker->advantage_bonus_hit <<1>>1;
	attacker->advantage_bonus_damage = -attacker->advantage_bonus_damage <<1>>1;
	defender->advantage_bonus_hit = -defender->advantage_bonus_hit <<1>>1;
	defender->advantage_bonus_damage = -defender->advantage_bonus_damage <<1>>1;
}

void BattleApplyWeaponTriangleEffect(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	struct WeaponTriangleRule const * it;

	for (it = sWeaponTriangleRules; it->attackerKind >= 0; ++it) {
		if ((attacker->weapon_kind == it->attackerKind) && (defender->weapon_kind == it->defenderKind)) {
			attacker->advantage_bonus_hit = it->hitBonus;
			attacker->advantage_bonus_damage = it->damageBonus;

			defender->advantage_bonus_hit = -it->hitBonus;
			defender->advantage_bonus_damage = -it->damageBonus;

			break;
		}
	}

	if (attacker->weapon_attributes & ITEM_ATTR_REVERTS_TRIANGLE)
		BattleApplyReaverEffect(attacker, defender);

	if (defender->weapon_attributes & ITEM_ATTR_REVERTS_TRIANGLE)
		BattleApplyReaverEffect(attacker, defender);
}
