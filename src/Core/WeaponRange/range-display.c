#include "prelude.h"
#include "map.h"
#include "item.h"
#include "mapwork.h"
#include "trap.h"

void BuildUnitCompleteAttackRange(struct Unit *unit)
{
	int ix, iy;
	u32 mask;

	mask = GetUnitWeaponReach(unit, -1);

	MapFill(gMapRange, 0);

	if (UNIT_ATTRIBUTES(unit) & UNIT_ATTR_BALLISTA) {
		for (iy = gMapSize.y - 1; iy >= 0; --iy) {
			for (ix = gMapSize.x - 1; ix >= 0; --ix) {
				int ballista;

				if (gMapMovement[iy][ix] > MAP_MOVEMENT_MAX)
					continue;
				if (gMapUnit[iy][ix])
					continue;

				AddMap(ix, iy, mask);

				ballista = GetBallistaItemAt(ix, iy);
				if (ballista)
					MapIncInBoundedRange(ix, iy,
						GetItemMinRange(ballista, unit), GetItemMaxRange(ballista, unit));
			}
		}
		goto goto_ret;
	}

	for (iy = gMapSize.y - 1; iy >= 0; --iy) {
		for (ix = gMapSize.x - 1; ix >= 0; --ix) {
			if (gMapMovement[iy][ix] > MAP_MOVEMENT_MAX)
				continue;
			if (gMapUnit[iy][ix])
				continue;

			AddMap(ix, iy, mask);
		}
	}

goto_ret:
	SetWorkingMap(gMapMovement);
}

void BuildUnitStandingRangeForReach(struct Unit *unit, int reach)
{
	AddMap(unit->x, unit->y, reach);
}

void BuildUnitCompleteStaffRange(struct Unit *unit)
{
	int ix, iy;
	int reach = GetUnitStaffReach(gActiveUnit);

	MapFill(gMapRange, 0);

	for (iy = gMapSize.y - 1; iy >= 0; --iy) {
		for (ix = gMapSize.x - 1; ix >= 0; --ix) {
			if (gMapMovement[iy][ix] > MAP_MOVEMENT_MAX)
				continue;

			if (gMapUnit[iy][ix])
				continue;

			AddMap(ix, iy, reach);
		}
	}
}
