#include "prelude.h"
#include "unit.h"
#include "faction.h"
#include "battle.h"

#include "lvup.h"

void CheckBattleUnitStatCaps(struct Unit *unit, struct BattleUnit *bu)
{
	if ((unit->max_hp + bu->change_hp) > GetUnitMaxStatusHp(unit))
		bu->change_hp = GetUnitMaxStatusHp(unit) - unit->max_hp;

	if ((unit->pow + bu->change_pow) > GetUnitMaxStatusPow(unit))
		bu->change_pow = GetUnitMaxStatusPow(unit) - unit->pow;

	if ((unit->mag + bu->change_mag) > GetUnitMaxStatusMag(unit))
		bu->change_mag = GetUnitMaxStatusMag(unit) - unit->mag;

	if ((unit->skl + bu->change_skl) > GetUnitMaxStatusSkl(unit))
		bu->change_skl = GetUnitMaxStatusSkl(unit) - unit->skl;

	if ((unit->spd + bu->change_spd) > GetUnitMaxStatusSpd(unit))
		bu->change_spd = GetUnitMaxStatusSpd(unit) - unit->spd;

	if ((unit->def + bu->change_def) > GetUnitMaxStatusDef(unit))
		bu->change_def = GetUnitMaxStatusDef(unit) - unit->def;

	if ((unit->res + bu->change_res) > GetUnitMaxStatusRes(unit))
		bu->change_res = GetUnitMaxStatusRes(unit) - unit->res;

	if ((unit->lck + bu->change_lck) > GetUnitMaxStatusLck(unit))
		bu->change_lck = GetUnitMaxStatusLck(unit) - unit->lck;
}

void UnitCheckStatOverflow(struct Unit *unit)
{
	if (unit->max_hp > GetUnitMaxStatusHp(unit))
		unit->max_hp = GetUnitMaxStatusHp(unit);

	if (unit->pow > GetUnitMaxStatusPow(unit))
		unit->pow = GetUnitMaxStatusPow(unit);

	if (unit->mag > GetUnitMaxStatusMag(unit))
		unit->mag = GetUnitMaxStatusMag(unit);

	if (unit->skl > GetUnitMaxStatusSkl(unit))
		unit->skl = GetUnitMaxStatusSkl(unit);

	if (unit->spd > GetUnitMaxStatusSpd(unit))
		unit->spd = GetUnitMaxStatusSpd(unit);

	if (unit->def > GetUnitMaxStatusDef(unit))
		unit->def = GetUnitMaxStatusDef(unit);

	if (unit->res > GetUnitMaxStatusRes(unit))
		unit->res = GetUnitMaxStatusRes(unit);

	if (unit->lck > GetUnitMaxStatusLck(unit))
		unit->lck = GetUnitMaxStatusLck(unit);

	if (unit->bonus_con > (GetUnitMaxStatusCon(unit) - UNIT_CON_BASE(unit)))
		unit->bonus_con = (GetUnitMaxStatusCon(unit) - UNIT_CON_BASE(unit));

	if (unit->bonus_mov > (GetUnitMaxStatusMov(unit) - UNIT_MOV_BASE(unit)))
		unit->bonus_mov = (GetUnitMaxStatusMov(unit) - UNIT_MOV_BASE(unit));
}
