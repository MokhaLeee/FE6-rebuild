#include "prelude.h"
#include "unit.h"
#include "battle.h"

#include "lvup.h"

static int GetUnitCommonGrowthBonus(int status, struct Unit *unit)
{
	int new = status;

	return new;
}

static int GetUnitHpGrowthBonus(int status, struct Unit *unit)
{
	status = GetUnitCommonGrowthBonus(status, unit);
	status = GetUnitHpGrowthJobBonus(status, unit);
	return status;
}

static int GetUnitPowGrowthBonus(int status, struct Unit *unit)
{
	status = GetUnitCommonGrowthBonus(status, unit);
	status = GetUnitPowGrowthJobBonus(status, unit);
	return status;
}

static int GetUnitMagGrowthBonus(int status, struct Unit *unit)
{
	status = GetUnitCommonGrowthBonus(status, unit);
	status = GetUnitMagGrowthJobBonus(status, unit);
	return status;
}

static int GetUnitSklGrowthBonus(int status, struct Unit *unit)
{
	status = GetUnitCommonGrowthBonus(status, unit);
	status = GetUnitSklGrowthJobBonus(status, unit);
	return status;
}

static int GetUnitSpdGrowthBonus(int status, struct Unit *unit)
{
	status = GetUnitCommonGrowthBonus(status, unit);
	status = GetUnitSpdGrowthJobBonus(status, unit);
	return status;
}

static int GetUnitLckGrowthBonus(int status, struct Unit *unit)
{
	status = GetUnitCommonGrowthBonus(status, unit);
	status = GetUnitLckGrowthJobBonus(status, unit);
	return status;
}

static int GetUnitDefGrowthBonus(int status, struct Unit *unit)
{
	status = GetUnitCommonGrowthBonus(status, unit);
	status = GetUnitDefGrowthJobBonus(status, unit);
	return status;
}

static int GetUnitResGrowthBonus(int status, struct Unit *unit)
{
	status = GetUnitCommonGrowthBonus(status, unit);
	status = GetUnitResGrowthJobBonus(status, unit);
	return status;
}

/* Person based growth */
static int GetUnitHpGrowth(struct Unit *unit)  { return GetUnitHpGrowthBonus(unit->pinfo->growth_hp, unit); }
static int GetUnitPowGrowth(struct Unit *unit) { return GetUnitPowGrowthBonus(unit->pinfo->growth_pow, unit); }
static int GetUnitMagGrowth(struct Unit *unit) { return GetUnitMagGrowthBonus(unit->pinfo->growth_mag, unit); }
static int GetUnitSklGrowth(struct Unit *unit) { return GetUnitSklGrowthBonus(unit->pinfo->growth_skl, unit); }
static int GetUnitSpdGrowth(struct Unit *unit) { return GetUnitSpdGrowthBonus(unit->pinfo->growth_spd, unit); }
static int GetUnitLckGrowth(struct Unit *unit) { return GetUnitLckGrowthBonus(unit->pinfo->growth_lck, unit); }
static int GetUnitDefGrowth(struct Unit *unit) { return GetUnitDefGrowthBonus(unit->pinfo->growth_def, unit); }
static int GetUnitResGrowth(struct Unit *unit) { return GetUnitResGrowthBonus(unit->pinfo->growth_res, unit); }

/* Job based growth */
static int GetUnitJobBasedHpGrowth(struct Unit *unit)  { return GetUnitHpGrowthBonus(unit->jinfo->growth_hp, unit); }
static int GetUnitJobBasedPowGrowth(struct Unit *unit) { return GetUnitPowGrowthBonus(unit->jinfo->growth_pow, unit); }
static int GetUnitJobBasedMagGrowth(struct Unit *unit) { return GetUnitMagGrowthBonus(unit->jinfo->growth_mag, unit); }
static int GetUnitJobBasedSklGrowth(struct Unit *unit) { return GetUnitSklGrowthBonus(unit->jinfo->growth_skl, unit); }
static int GetUnitJobBasedSpdGrowth(struct Unit *unit) { return GetUnitSpdGrowthBonus(unit->jinfo->growth_spd, unit); }
static int GetUnitJobBasedLckGrowth(struct Unit *unit) { return GetUnitLckGrowthBonus(unit->jinfo->growth_lck, unit); }
static int GetUnitJobBasedDefGrowth(struct Unit *unit) { return GetUnitDefGrowthBonus(unit->jinfo->growth_def, unit); }
static int GetUnitJobBasedResGrowth(struct Unit *unit) { return GetUnitResGrowthBonus(unit->jinfo->growth_res, unit); }

/**
 * hooks
 */
void UnitAutolevelCore(struct Unit * unit, u8 jid, int levelCount)
{
	if (levelCount) {
		unit->max_hp += GetAutoleveledStatIncrease(GetUnitJobBasedHpGrowth(unit),  levelCount);
		unit->pow	+= GetAutoleveledStatIncrease(GetUnitJobBasedPowGrowth(unit), levelCount);
		unit->mag	+= GetAutoleveledStatIncrease(GetUnitJobBasedMagGrowth(unit), levelCount);
		unit->skl	+= GetAutoleveledStatIncrease(GetUnitJobBasedSklGrowth(unit), levelCount);
		unit->spd	+= GetAutoleveledStatIncrease(GetUnitJobBasedSpdGrowth(unit), levelCount);
		unit->lck	+= GetAutoleveledStatIncrease(GetUnitJobBasedLckGrowth(unit), levelCount);
		unit->def	+= GetAutoleveledStatIncrease(GetUnitJobBasedDefGrowth(unit), levelCount);
		unit->res	+= GetAutoleveledStatIncrease(GetUnitJobBasedResGrowth(unit), levelCount);
	}
}

void UnitAutolevelPlayer(struct Unit * unit)
{
	int i, levelCount = unit->level - unit->pinfo->base_level;

	for (i = 0; i < levelCount; ++i) {
		unit->max_hp += GetStatIncrease(GetUnitHpGrowth(unit));
		unit->pow	+= GetStatIncrease(GetUnitPowGrowth(unit));
		unit->mag	+= GetStatIncrease(GetUnitMagGrowth(unit));
		unit->skl	+= GetStatIncrease(GetUnitSklGrowth(unit));
		unit->spd	+= GetStatIncrease(GetUnitSpdGrowth(unit));
		unit->lck	+= GetStatIncrease(GetUnitLckGrowth(unit));
		unit->def	+= GetStatIncrease(GetUnitDefGrowth(unit));
		unit->res	+= GetStatIncrease(GetUnitResGrowth(unit));
	}
}

static void UnitLvupCore(struct BattleUnit *bu, int bonus)
{
	struct Unit *unit = GetUnit(bu->unit.id);

	bu->change_hp  += GetStatIncrease(GetUnitHpGrowth(unit));
	bu->change_pow += GetStatIncrease(GetUnitPowGrowth(unit));
	bu->change_mag += GetStatIncrease(GetUnitMagGrowth(unit));
	bu->change_skl += GetStatIncrease(GetUnitSklGrowth(unit));
	bu->change_spd += GetStatIncrease(GetUnitSpdGrowth(unit));
	bu->change_lck += GetStatIncrease(GetUnitLckGrowth(unit));
	bu->change_def += GetStatIncrease(GetUnitDefGrowth(unit));
	bu->change_res += GetStatIncrease(GetUnitResGrowth(unit));
}

void CheckBattleUnitLevelUp(struct BattleUnit *bu)
{
	if (!CanBattleUnitGainExp(bu))
		return;

	if (bu->unit.exp >= 100) {
		bu->unit.exp -= 100;
		bu->unit.level++;

		if (bu->unit.level == UNIT_LEVEL_MAX) {
			bu->exp_gain -= bu->unit.exp;
			bu->unit.exp = 0xFF;
		}

		UnitLvupCore(bu, 0);
		CheckBattleUnitStatCaps(GetUnit(bu->unit.id), bu);
	}
}
