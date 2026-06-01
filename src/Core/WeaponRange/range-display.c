#include "prelude.h"
#include "map.h"
#include "item.h"
#include "mapwork.h"
#include "trap.h"

#define FOR_EACH_IN_MOVEMENT_RANGE(block) \
	for (iy = gMapSize.y - 1; iy >= 0; --iy) { \
		for (ix = gMapSize.x - 1; ix >= 0; --ix) { \
			if (gMapMovement[iy][ix] > MAP_MOVEMENT_MAX) \
				continue; \
			if (gMapUnit[iy][ix]) \
				continue; \
			block \
		} \
	}

void BuildUnitCompleteAttackRange(struct Unit *unit)
{
	int ix, iy;
	int item;

	MapFill(gMapRange, 0);

	switch (GetUnitWeaponReach(unit, -1)) {
	case REACH_RANGE1:
		FOR_EACH_IN_MOVEMENT_RANGE({
			MapIncInBoundedRange(ix, iy, 1, 1);
		})

		break;

	case REACH_RANGE1 | REACH_RANGE2:
		FOR_EACH_IN_MOVEMENT_RANGE({
			MapIncInBoundedRange(ix, iy, 1, 2);
		})

		break;

	case REACH_RANGE1 | REACH_RANGE2 | REACH_RANGE3:
		FOR_EACH_IN_MOVEMENT_RANGE({
			MapIncInBoundedRange(ix, iy, 1, 3);
		})

		break;

	case REACH_RANGE2:
		FOR_EACH_IN_MOVEMENT_RANGE({
			MapIncInBoundedRange(ix, iy, 2, 2);
		})

		break;

	case REACH_RANGE2 | REACH_RANGE3:
		FOR_EACH_IN_MOVEMENT_RANGE({
			MapIncInBoundedRange(ix, iy, 2, 3);
		})

		break;

	case REACH_RANGE3:
		FOR_EACH_IN_MOVEMENT_RANGE({
			MapIncInBoundedRange(ix, iy, 3, 3);
		})

		break;

	case REACH_RANGE3 | REACH_TO10:
		FOR_EACH_IN_MOVEMENT_RANGE({
			MapIncInBoundedRange(ix, iy, 3, 10);
		})

		break;

	case REACH_RANGE1 | REACH_RANGE3:
		FOR_EACH_IN_MOVEMENT_RANGE({
			MapIncInBoundedRange(ix, iy, 1, 1);
			MapIncInBoundedRange(ix, iy, 3, 3);
		})

		break;

	case REACH_RANGE1 | REACH_RANGE3 | REACH_TO10:
		FOR_EACH_IN_MOVEMENT_RANGE({
			MapIncInBoundedRange(ix, iy, 1, 1);
			MapIncInBoundedRange(ix, iy, 3, 10);
		})

		break;

	case REACH_RANGE1 | REACH_RANGE2 | REACH_RANGE3 | REACH_TO10:
		FOR_EACH_IN_MOVEMENT_RANGE({
			MapIncInBoundedRange(ix, iy, 1, 10);
		})

		break;

	}

	// BUG: this should be unit not gActiveUnit
	if (UNIT_ATTRIBUTES(gActiveUnit) & UNIT_ATTR_BALLISTA) {
		FOR_EACH_IN_MOVEMENT_RANGE({
			item = GetBallistaItemAt(ix, iy);

			if (item)
				MapIncInBoundedRange(ix, iy, GetItemMinRange(item, gActiveUnit), GetItemMaxRange(item, gActiveUnit));
		})
	}

	#undef FOR_EACH_IN_MOVEMENT_RANGE

	SetWorkingMap(gMapMovement);
}

void BuildUnitStandingRangeForReach(struct Unit *unit, int reach)
{
	int x = unit->x;
	int y = unit->y;

	switch (reach) {
	case REACH_RANGE1:
		MapIncInBoundedRange(x, y, 1, 1);
		break;

	case REACH_RANGE1 | REACH_RANGE2:
		MapIncInBoundedRange(x, y, 1, 2);
		break;

	case REACH_RANGE1 | REACH_RANGE2 | REACH_RANGE3:
		MapIncInBoundedRange(x, y, 1, 3);
		break;

	case REACH_RANGE2:
		MapIncInBoundedRange(x, y, 2, 2);
		break;

	case REACH_RANGE2 | REACH_RANGE3:
		MapIncInBoundedRange(x, y, 2, 3);
		break;

	case REACH_RANGE3:
		MapIncInBoundedRange(x, y, 3, 3);
		break;

	case REACH_RANGE3 | REACH_TO10:
		MapIncInBoundedRange(x, y, 3, 10);
		break;

	case REACH_RANGE1 | REACH_RANGE3:
		MapIncInBoundedRange(x, y, 1, 1);
		MapIncInBoundedRange(x, y, 3, 3);
		break;

	case REACH_RANGE1 | REACH_RANGE3 | REACH_TO10:
		MapIncInBoundedRange(x, y, 1, 1);
		MapIncInBoundedRange(x, y, 3, 10);
		break;

	case REACH_RANGE1 | REACH_RANGE2 | REACH_RANGE3 | REACH_TO10:
		MapIncInBoundedRange(x, y, 1, 10);
		break;

	case REACH_TOMAG:
		MapIncInBoundedRange(x, y, 1, GetUnitMagRange(unit));
		break;

	}
}

void BuildUnitCompleteStaffRange(struct Unit *unit)
{
	int ix, iy;

	int magRange, reach = GetUnitStaffReach(gActiveUnit);

	MapFill(gMapRange, 0);

	magRange = GetUnitMagRange(unit);

	#define FOR_EACH_IN_MOVEMENT_RANGE(block) \
		for (iy = gMapSize.y - 1; iy >= 0; --iy) { \
			for (ix = gMapSize.x - 1; ix >= 0; --ix) { \
				if (gMapMovement[iy][ix] > MAP_MOVEMENT_MAX) \
					continue; \
				block \
			} \
		}

	switch (reach) {
	case REACH_RANGE1:
		FOR_EACH_IN_MOVEMENT_RANGE({
			MapIncInBoundedRange(ix, iy, 1, 1);
		})

		break;

	case REACH_RANGE1 | REACH_RANGE2:
		FOR_EACH_IN_MOVEMENT_RANGE({
			MapIncInBoundedRange(ix, iy, 1, 2);
		})

		break;

	case REACH_TOMAG:
		FOR_EACH_IN_MOVEMENT_RANGE({
			MapIncInBoundedRange(ix, iy, 1, magRange);
		})

		break;

	}
}
