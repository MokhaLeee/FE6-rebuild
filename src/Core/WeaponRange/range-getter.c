#include "prelude.h"
#include "unit.h"
#include "item.h"
#include "itemuse.h"

int GetItemMinRange(int item, struct Unit *unit)
{
	int ret = GetIInfo(ITEM_IID(item))->encoded_range >> 4;

	if (unit) {
	}

	return ret;
}

int GetItemMaxRange(int item, struct Unit *unit)
{
	int ret = GetIInfo(ITEM_IID(item))->encoded_range & 0xF;

	if (unit) {
	}

	return ret;
}

int GetItemEncodedRange(int item)
{
	return GetIInfo(ITEM_IID(item))->encoded_range;
}

/**
 * usage
 */

int GetItemReach(int item)
{
	switch (GetItemEncodedRange(item)) {
	case 0x11:
		return REACH_RANGE1;

	case 0x12:
		return REACH_RANGE1 | REACH_RANGE2;

	case 0x13:
		return REACH_RANGE1 | REACH_RANGE2 | REACH_RANGE3;

	case 0x22:
		return REACH_RANGE2;

	case 0x23:
		return REACH_RANGE2 | REACH_RANGE3;

	case 0x33:
		return REACH_RANGE3;

	case 0x3A:
		return REACH_RANGE3 | REACH_TO10;

	case 0x3F:
		return REACH_RANGE3 | REACH_TO15;

	default:
		return REACH_NONE;
	}
}

bool CanItemReachDistance(int item, int distance, struct Unit *unit)
{
	int min = GetItemMinRange(item, unit);
	int max = GetItemMaxRange(item, unit);

	if ((min <= distance) && (distance <= max))
		return TRUE;

	return FALSE;
}

int GetUnitWeaponReach(struct Unit *unit, int item_slot)
{
	int i, item, result = 0;

	if (item_slot >= 0)
		return GetItemReach(unit->items[item_slot]);

	for (i = 0; (i < ITEMSLOT_INV_COUNT) && (item = unit->items[i]); ++i) {
		if (CanUnitUseWeapon(unit, item))
			result |= GetItemReach(item);
	}

	return result;
}

int GetUnitItemUseReach(struct Unit *unit, int item_slot)
{
	int i, tmp, range = 0;

	if (item_slot >= 0) {
		tmp = unit->items[item_slot];

		if (!CanUnitUseItem(unit, tmp))
			return REACH_NONE;

		range = GetItemMaxRange(tmp, unit);

		if (range == 0)
			range = 99;
	} else {
		for (i = 0; (i < ITEMSLOT_INV_COUNT) && (tmp = unit->items[i]); ++i) {
			if (CanUnitUseItem(unit, tmp)) {
				tmp = GetItemMaxRange(tmp, unit);

				if (tmp == 0)
					tmp = 99;

				if (range < tmp)
					range = tmp;
			}
		}
	}

	switch (range){
	case 1:
		return REACH_RANGE1;

	case 2:
		return REACH_RANGE1 | REACH_RANGE2;

	case 99:
		return REACH_TOMAG;

	default:
		return REACH_NONE;
	}
}

int GetUnitStaffReach(struct Unit *unit)
{
	int i, tmp, range = 0;

	for (i = 0; (i < ITEMSLOT_INV_COUNT) && (tmp = unit->items[i]); ++i) {
		if (CanUnitUseStaff(unit, tmp)) {
			tmp = GetItemMaxRange(tmp, unit);

			if (tmp == 0)
				tmp = 99;

			if (range < tmp)
				range = tmp;
		}
	}

	switch (range){
	case 1:
		return REACH_RANGE1;

	case 2:
		return REACH_RANGE1 | REACH_RANGE2;

	case 99:
		return REACH_TOMAG;

	default:
		return REACH_NONE;
	} 
}
