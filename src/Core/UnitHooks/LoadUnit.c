#include "prelude.h"
#include "unit.h"
#include "faction.h"

void UnitInitStats(struct Unit *unit, struct PInfo const *pinfo)
{
	int i;

	unit->max_hp = pinfo->base_hp + unit->jinfo->base_hp;
	unit->pow = pinfo->base_pow + unit->jinfo->base_pow;
	unit->mag = pinfo->base_mag + unit->jinfo->base_mag;
	unit->skl = pinfo->base_skl + unit->jinfo->base_skl;
	unit->spd = pinfo->base_spd + unit->jinfo->base_spd;
	unit->def = pinfo->base_def + unit->jinfo->base_def;
	unit->res = pinfo->base_res + unit->jinfo->base_res;
	unit->lck = pinfo->base_lck;

	unit->bonus_con = 0;

	for (i = 0; i < UNIT_WEAPON_EXP_COUNT; ++i) {
		unit->wexp[i] = unit->jinfo->wexp[i];

		if (unit->pinfo->wexp[i] != 0)
			unit->wexp[i] = unit->pinfo->wexp[i];
	}

	if (UNIT_FACTION(unit) == FACTION_BLUE && (unit->level != UNIT_LEVEL_MAX))
		unit->exp = 0;
	else
		unit->exp = 0xFF;
}
