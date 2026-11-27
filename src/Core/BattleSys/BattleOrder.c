#include "prelude.h"
#include "unit.h"
#include "item.h"
#include "battle.h"

static int BattleCheckBraveEffect(struct BattleUnit *attacker)
{
	if (!(attacker->weapon_attributes & ITEM_ATTR_BRAVE))
		return FALSE;

	gBattleHitIt->attributes |= BATTLE_HIT_ATTR_BRAVE;
	return TRUE;
}

static int GetBattleUnitHitCount(struct BattleUnit *attacker)
{
	int result = 1;

	result <<= BattleCheckBraveEffect(attacker);

	return result;
}

static bool BattleGenerateRoundHits(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	int i, count;
	u16 attrs;

	if (!attacker->weapon)
		return FALSE;

	attrs = gBattleHitIt->attributes;
	count = GetBattleUnitHitCount(attacker);

	for (i = 0; i < count; ++i) {
		gBattleHitIt->attributes |= attrs;

		if (BattleGenerateHit(attacker, defender))
			return TRUE;
	}

	return FALSE;
}

static void BattleGetBattleUnitOrder(struct BattleUnit ** attacker, struct BattleUnit ** defender)
{
	*attacker = &gBattleUnitA;
	*defender = &gBattleUnitB;
}

bool BattleGetFollowUpOrder(struct BattleUnit ** attacker, struct BattleUnit ** defender)
{
	if (gBattleUnitB.battle_speed > 250)
		return FALSE;

	if (ABS(gBattleUnitA.battle_speed - gBattleUnitB.battle_speed) < 4)
		return FALSE;

	if (gBattleUnitA.battle_speed > gBattleUnitB.battle_speed) {
		*attacker = &gBattleUnitA;
		*defender = &gBattleUnitB;
	} else {
		*attacker = &gBattleUnitB;
		*defender = &gBattleUnitA;
	}

	if (GetItemWeaponEffect((*attacker)->weapon_before) == WEAPON_EFFECT_ECLIPSE)
		return FALSE;

	return TRUE;
}

void BattleUnwind(void)
{
	struct BattleUnit *attacker, *defender;

	ClearBattleHits();
	BattleGetBattleUnitOrder(&attacker, &defender);
	gBattleHitIt->info |= BATTLE_HIT_INFO_BEGIN;

	if (!BattleGenerateRoundHits(attacker, defender)) {
		gBattleHitIt->attributes |= BATTLE_HIT_ATTR_RETALIATE;

		if (!BattleGenerateRoundHits(defender, attacker) && BattleGetFollowUpOrder(&attacker, &defender)) {
			gBattleHitIt->attributes = BATTLE_HIT_ATTR_FOLLOWUP;
			BattleGenerateRoundHits(attacker, defender);
		}
	}

	gBattleHitIt->info |= BATTLE_HIT_INFO_END;
}
