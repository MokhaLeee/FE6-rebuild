#include "prelude.h"
#include "unit.h"
#include "unitsprite.h"
#include "bm.h"
#include "bmfx.h"
#include "map.h"

#include "debuff.h"

void TickActiveFactionTurnAndListStatusHeals(void)
{
	int i;

	bool visionChanged = FALSE;

	BeginTargetList(0, 0);

	for (i = gPlaySt.faction + 1; i < gPlaySt.faction + 0x40; ++i) {
		struct Unit *unit = GetUnit(i);

		if (!UNIT_IS_VALID(unit))
			continue;

		if (unit->flags & (UNIT_FLAG_UNAVAILABLE | UNIT_FLAG_RESCUED))
			continue;

		if (unlikely(unit->barrier != 0))
			unit->barrier--;

		if (unlikely(unit->torch != 0)) {
			unit->torch--;
			visionChanged = TRUE;
		}

#if 0
		if (unit->status_duration != 0) {
			unit->status_duration--;

			if (unit->status_duration == 0)
				EnlistTarget(unit->x, unit->y, unit->id, 0);
		}
#else
		if (unlikely(TickUnitDebuff(unit)))
			EnlistTarget(unit->x, unit->y, unit->id, 0);
#endif
	}

	if (visionChanged) {
		RenderMapForFade();
		RefreshEntityMaps();
		RenderMap();
		StartMapFade(TRUE);
		RefreshUnitSprites();
	}
}
