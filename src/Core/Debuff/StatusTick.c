#include "prelude.h"
#include "bm.h"
#include "bmfx.h"
#include "map.h"
#include "unit.h"
#include "unitsprite.h"

void TickActiveFactionTurnAndListStatusHeals(void)
{
	int i;

	bool visionChanged = FALSE;

	BeginTargetList(0, 0);

	for (i = gPlaySt.faction + 1; i < gPlaySt.faction + 0x40; ++i) {
		struct Unit *unit = GetUnit(i);

		if (!unit)
			continue;

		if (!unit->pinfo)
			continue;

		if (unit->flags & (UNIT_FLAG_UNAVAILABLE | UNIT_FLAG_RESCUED))
			continue;

		if (unit->torch != 0) {
			unit->torch--;
			visionChanged = TRUE;
		}

		/* CHAX */
		TickDuraStatus(unit);

		if (unit->status_duration != 0) {
			unit->status_duration--;

			if (unit->status_duration == 0)
				EnlistTarget(unit->x, unit->y, unit->id, 0);
		}
	}

	if (visionChanged) {
		RenderMapForFade();
		RefreshEntityMaps();
		RenderMap();
		StartMapFade(TRUE);
		RefreshUnitSprites();
	}
}
