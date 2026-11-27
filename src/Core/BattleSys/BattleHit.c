#include "prelude.h"
#include "unit.h"
#include "item.h"
#include "map.h"
#include "random.h"
#include "battle.h"
#include "battle-damage.h"

static bool BattleRandRoll2Rn(u16 threshold, bool simulationResult)
{
	if (gBattleSt.flags & BATTLE_FLAG_SIMULATE)
		return simulationResult;

	return RandRoll2Rn(threshold);
}

static bool BattleCheckTriangleAttack(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	SHOULD_BE_STATIC i8 SHOULD_BE_CONST adjacentLut[] = {
		-1,  0,
		 0, -1,
		+1,  0,
		 0, +1,
	};

	int i, count = 0;

	int triangleAttackAttr = UNIT_ATTRIBUTES(&attacker->unit) & UNIT_ATTR_TRIANGLE_ATTACK_ANY;

	int x = defender->unit.x;
	int y = defender->unit.y;

	int faction = UNIT_FACTION(&attacker->unit);

	gBattleSt.extra_unit_a = NULL;
	gBattleSt.extra_unit_b = NULL;

	for (i = 0; i < 4; ++i) {
		struct Unit *unit;

		int uid = gMapUnit[adjacentLut[i*2+1] + y][adjacentLut[i*2+0] + x];

		if (!uid)
			continue;

		unit = GetUnit(uid);

		if ((uid & 0xC0) != faction)
			continue;

		if (unit->status == UNIT_STATUS_SLEEP)
			continue;

		if (UNIT_ATTRIBUTES(unit) & triangleAttackAttr) {
			++count;

			if (!gBattleSt.extra_unit_a)
				gBattleSt.extra_unit_a = unit;
			else if (!gBattleSt.extra_unit_b)
				gBattleSt.extra_unit_b = unit;
		}
	}

	return count >= 2 ? TRUE : FALSE;
}

static void BattleUpdateBattleStats(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	gBattleSt.attack = attacker->battle_attack;
	gBattleSt.defense = defender->battle_defense;
	gBattleSt.hit = attacker->battle_effective_hit;
	gBattleSt.crit = attacker->battle_effective_crit;
}

static void BattleGenerateHitAttributes(struct BattleUnit *attacker, struct BattleUnit *defender)
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

static void BattleGenerateHitTriangleAttack(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	if (!(UNIT_ATTRIBUTES(&attacker->unit) & UNIT_ATTR_TRIANGLE_ATTACK_ANY))
		return;

	if (gBattleSt.range != 1)
		return;

	if (!(gBattleHitIt->info & BATTLE_HIT_INFO_BEGIN))
		return;

	if (attacker->unit.status == UNIT_STATUS_BERSERK)
		return;

	if (gBattleSt.flags & BATTLE_FLAG_ARENA)
		return;

	if (!BattleCheckTriangleAttack(attacker, defender))
		return;

	gBattleHitIt->attributes |= BATTLE_HIT_ATTR_TRIANGLE_ATTACK;

	gBattleSt.crit = 100;
	gBattleSt.hit  = 100;
}

static void BattleGenerateHitEffects(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	int devil_chance;

	attacker->wexp_gain++;

	devil_chance = GetDevilReversalChance(attacker->unit.level);

	if (!(gBattleHitIt->attributes & BATTLE_HIT_ATTR_MISS)) {
		switch (GetItemWeaponEffect(attacker->weapon)) {
		case WEAPON_EFFECT_POISON:
			defender->output_status = UNIT_STATUS_POISON;
			gBattleHitIt->attributes |= BATTLE_HIT_ATTR_POISON;

			break;

		case WEAPON_EFFECT_ECLIPSE:
			gBattleHitIt->attributes |= BATTLE_HIT_ATTR_ECLIPSE;
			break;
		}

		if (GetItemWeaponEffect(attacker->weapon) == WEAPON_EFFECT_DEVIL && (BattleRandRoll(devil_chance, FALSE))) {
			gBattleHitIt->attributes |= BATTLE_HIT_ATTR_DEVIL;

			attacker->unit.hp -= gBattleSt.damage;

			if (attacker->unit.hp < 0)
				attacker->unit.hp = 0;
		} else {
			if (gBattleSt.damage > defender->unit.hp)
				gBattleSt.damage = defender->unit.hp;

			defender->unit.hp -= gBattleSt.damage;

			if (defender->unit.hp < 0)
				defender->unit.hp = 0;
		}

		if (GetItemWeaponEffect(attacker->weapon) == WEAPON_EFFECT_NOSFERATU) {
			attacker->unit.hp += gBattleSt.damage;

			if (attacker->unit.hp > attacker->unit.max_hp)
				attacker->unit.hp = attacker->unit.max_hp;

			gBattleHitIt->attributes |= BATTLE_HIT_ATTR_HPSTEAL;
		}
	}

	gBattleHitIt->damage = gBattleSt.damage;

	if (!(gBattleHitIt->attributes & BATTLE_HIT_ATTR_MISS) || attacker->weapon_attributes & (ITEM_ATTR_MAGIC | ITEM_ATTR_UNCOUNTERABLE)) {
		attacker->weapon = GetItemAfterUse(attacker->weapon);

		if (!attacker->weapon)
			attacker->weapon_broke = TRUE;
	}
}

static void BattleRecordHitResult(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	if (gBattleHitIt->attributes & BATTLE_HIT_ATTR_MISS)
		return;

	attacker->result.hit = TRUE;
	defender->result.foe_hit = TRUE;

	if (gBattleHitIt->attributes & BATTLE_HIT_ATTR_CRIT)
		attacker->result.crit = TRUE;
}

bool BattleGenerateHit(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	if (attacker == &gBattleUnitB)
		gBattleHitIt->info |= BATTLE_HIT_INFO_ACTORB;

	BattleUpdateBattleStats(attacker, defender);

	BattleGenerateHitTriangleAttack(attacker, defender);
	BattleGenerateHitAttributes(attacker, defender);
	BattleGenerateHitEffects(attacker, defender);

	BattleRecordHitResult(attacker, defender);

	if (attacker->unit.hp == 0 || defender->unit.hp == 0) {
		attacker->wexp_gain++;

		gBattleHitIt->info |= BATTLE_HIT_INFO_FINISHES;

		if (gBattleUnitB.unit.hp == 0)
			gBattleHitIt->info |= BATTLE_HIT_INFO_KILLS_TARGET;

		if (defender->unit.hp == 0)
			attacker->result.foe_defeated = TRUE;

		if (attacker->unit.hp == 0)
			defender->result.foe_defeated = TRUE;

		gBattleHitIt++;
		return TRUE;
	}

	gBattleHitIt++;
	return FALSE;
}
