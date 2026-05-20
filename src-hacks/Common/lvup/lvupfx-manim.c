#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "manim.h"

int GetManimLevelUpStatGain(int actor_id, int stat_num)
{
	switch (stat_num) {
	case 0:
		return 1;

	case 1:
		return gManimSt.actor[actor_id].bu->change_hp;

	case 2:
		return gManimSt.actor[actor_id].bu->change_pow;

	case 3:
		return gManimSt.actor[actor_id].bu->change_skl;

	case 4:
		return gManimSt.actor[actor_id].bu->change_spd;

	case 5:
		return gManimSt.actor[actor_id].bu->change_mag;

	case 6:
		return gManimSt.actor[actor_id].bu->change_lck;

	case 7:
		return gManimSt.actor[actor_id].bu->change_def;

	case 8:
		return gManimSt.actor[actor_id].bu->change_res;

	default:
		return 0;
	}
}

int GetManimLevelUpBaseStat(int actor_id, int stat_num)
{
	// getting the original unit to ensure we get the base stats
	struct Unit * unit = GetUnit(gManimSt.actor[actor_id].unit->id);

	switch (stat_num) {
	case 0:
		return gManimSt.actor[actor_id].bu->previous_level;

	case 1:
		return unit->max_hp;

	case 2:
		return unit->pow;

	case 3:
		return unit->skl;

	case 4:
		return unit->spd;

	case 5:
		return unit->mag;

	case 6:
		return unit->lck;

	case 7:
		return unit->def;

	case 8:
		return unit->res;

	default:
		return 0;
	}
}

// gManimLevelUpLabelInfoList
