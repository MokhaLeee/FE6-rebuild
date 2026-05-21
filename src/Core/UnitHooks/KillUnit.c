#include "prelude.h"
#include "unit.h"
#include "faction.h"
#include "support.h"

void KillUnit(struct Unit *unit)
{
	if (UNIT_FACTION(unit) != FACTION_BLUE) {
		unit->pinfo = NULL;
		return;
	}

	unit->flags |= UNIT_FLAG_DEAD | UNIT_FLAG_HIDDEN;
	ClearUnitSupports(unit);
}
