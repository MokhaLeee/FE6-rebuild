#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "item.h"

void UnitPromote(struct Unit * unit)
{
	int i;

	// substract to stats the bases of the previous jinfo

	unit->max_hp -= unit->jinfo->base_hp;
	unit->pow -= unit->jinfo->base_pow;
	unit->mag -= unit->jinfo->base_mag;
	unit->skl -= unit->jinfo->base_skl;
	unit->spd -= unit->jinfo->base_spd;
	unit->def -= unit->jinfo->base_def;
	unit->res -= unit->jinfo->base_res;

	for (i = 0; i < UNIT_WEAPON_EXP_COUNT; ++i)
		unit->wexp[i] -= unit->jinfo->wexp[i];

	// promote!

	unit->jinfo = GetJInfo(unit->jinfo->jid_promote);

	// add to stats the base of the new jinfo

	unit->max_hp += unit->jinfo->base_hp;
	unit->pow += unit->jinfo->base_pow;
	unit->mag += unit->jinfo->base_mag;
	unit->skl += unit->jinfo->base_skl;
	unit->spd += unit->jinfo->base_spd;
	unit->def += unit->jinfo->base_def;
	unit->res += unit->jinfo->base_res;

	for (i = 0; i < UNIT_WEAPON_EXP_COUNT; ++i) {
		int wexp = unit->wexp[i];

		wexp += unit->jinfo->wexp[i];

		if (wexp > WEXP_S)
			wexp = WEXP_S;

		unit->wexp[i] = wexp;
	}

	UnitCheckStatOverflow(unit);

	unit->level = 1;
	unit->exp = 0;
}

void GenerateBattleUnitStatGainsComparatively(struct BattleUnit *bu, struct Unit *unit)
{
	bu->change_hp = bu->unit.max_hp - unit->max_hp;
	bu->change_pow = bu->unit.pow - unit->pow;
	bu->change_mag = bu->unit.mag - unit->mag;
	bu->change_skl = bu->unit.skl - unit->skl;
	bu->change_spd = bu->unit.spd - unit->spd;
	bu->change_def = bu->unit.def - unit->def;
	bu->change_res = bu->unit.res - unit->res;
	bu->change_lck = bu->unit.lck - unit->lck;
	bu->change_con = bu->unit.bonus_con - unit->bonus_con;
}
