#include "prelude.h"
#include "unit.h"
#include "item.h"
#include "bm.h"
#include "faction.h"
#include "battle.h"

#include "klib.h"

/*
 * Battle experience, split out of battle.c after the fe8u cskillsys
 * BattleExp.c.  Everything that turns a finished battle into exp / wexp for
 * both sides lives here; the level-up itself is CheckBattleUnitLevelUp().
 */

static int GetUnitExpLevel(struct Unit *unit)
{
	int result = unit->level;

	if (UNIT_ATTRIBUTES(unit) & UNIT_ATTR_PROMOTED)
		result += 20;

	return result;
}

static int GetUnitRoundExp(struct Unit *unit, struct Unit *other)
{
	int expLevel;

	expLevel = GetUnitExpLevel(unit);
	expLevel = expLevel - GetUnitExpLevel(other);
	expLevel = 31 - expLevel;

	if (expLevel < 0)
		expLevel = 0;

	return k_udiv(expLevel, unit->jinfo->power_level);
}

static int GetUnitPowerLevel(struct Unit *unit)
{
	int result = unit->level * unit->jinfo->power_level;

	if (UNIT_ATTRIBUTES(unit) & UNIT_ATTR_PROMOTED)
		result += 20 * GetJInfo(unit->jinfo->jid_promote)->power_level;

	return result;
}

static int GetUnitClassKillExpBonus(struct Unit *unit, struct Unit *defeated)
{
	int result = 0;

	if (UNIT_ATTRIBUTES(defeated) & UNIT_ATTR_STEAL)
		result += 20;

	if (UNIT_ATTRIBUTES(defeated) & UNIT_ATTR_BOSS)
		result += 40;

	return result;
}

static int GetUnitKillExpBonus(struct Unit *unit, struct Unit *other)
{
	int result;

	if (other->hp != 0)
		return 0;

	result = 0;

	result += GetUnitPowerLevel(other);
	result += 20;
	result -= GetUnitPowerLevel(unit);
	result += GetUnitClassKillExpBonus(unit, other);

	if (result < 0)
		result = 0;

	return result;
}

static int GetBattleUnitExpGain(struct BattleUnit *bu, struct BattleUnit *other)
{
	int result;

	if (!CanBattleUnitGainExp(bu) || bu->unit.hp == 0 || UNIT_ATTRIBUTES(&other->unit) & UNIT_ATTR_MAJOR_BOSS)
		return 0;

	if (!bu->dealt_damage)
		return 1;

	result = GetUnitRoundExp(&bu->unit, &other->unit);
	result += GetUnitKillExpBonus(&bu->unit, &other->unit);

	if (result > 100)
		result = 100;

	if (result < 0)
		result = 0;

	return result;
}

static int GetBattleUnitStaffExp(struct BattleUnit *bu)
{
	int result;

	if (!CanBattleUnitGainExp(bu))
		return 0;

	if (gBattleHits[0].attributes & BATTLE_HIT_ATTR_MISS)
		return 1;

	result = k_udiv10(10 + GetItemCostPerUse(bu->weapon)) / 2;

	if (UNIT_ATTRIBUTES(&bu->unit) & UNIT_ATTR_PROMOTED)
		result = result / 2;

	if (result > 100)
		result = 100;

	return result;
}

void BattleApplyExpGains(void)
{
	if ((UNIT_FACTION(&gBattleUnitA.unit) != FACTION_BLUE) || (UNIT_FACTION(&gBattleUnitB.unit) != FACTION_BLUE)) {
		if (!(gPlaySt.flags & PLAY_FLAG_COMPLETE)) {
			gBattleUnitA.exp_gain = GetBattleUnitExpGain(&gBattleUnitA, &gBattleUnitB);
			gBattleUnitB.exp_gain = GetBattleUnitExpGain(&gBattleUnitB, &gBattleUnitA);

			gBattleUnitA.unit.exp += gBattleUnitA.exp_gain;
			gBattleUnitB.unit.exp += gBattleUnitB.exp_gain;

			CheckBattleUnitLevelUp(&gBattleUnitA);
			CheckBattleUnitLevelUp(&gBattleUnitB);
		}
	}
}

void BattleApplyItemExpGains(void)
{
	if ((gBattleUnitA.weapon_attributes & ITEM_ATTR_STAFF) && !(gPlaySt.flags & PLAY_FLAG_COMPLETE)) {
		if (UNIT_FACTION(&gBattleUnitA.unit) == FACTION_BLUE)
			gBattleUnitA.wexp_gain++;

		gBattleUnitA.exp_gain = GetBattleUnitStaffExp(&gBattleUnitA);
		gBattleUnitA.unit.exp += gBattleUnitA.exp_gain;

		CheckBattleUnitLevelUp(&gBattleUnitA);
	}
}

void BattleApplyMiscActionExpGains(void)
{
	if (UNIT_FACTION(&gBattleUnitA.unit) != FACTION_BLUE)
		return;

	if (!CanBattleUnitGainExp(&gBattleUnitA))
		return;

	if (gPlaySt.flags & PLAY_FLAG_COMPLETE)
		return;

	gBattleUnitA.exp_gain = 10;
	gBattleUnitA.unit.exp += 10;

	CheckBattleUnitLevelUp(&gBattleUnitA);
}
