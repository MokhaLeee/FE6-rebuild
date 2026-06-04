#include "prelude.h"
#include "unit.h"
#include "item.h"
#include "itemuse.h"
#include "mapwork.h"

#include "debug.h"
#include "skill-sys.h"
#include "constants/skills.h"

#define LOCAL_TRACE 0

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

	if (ret == 0)
		ret = GetUnitMagRange(unit);

	if (unit) {
		if (SkillFastTester(unit, SID_RangeBonusBow1))
			ret += SKILL_EFF0(SID_RangeBonusBow1);

		if (SkillFastTester(unit, SID_RangeBonusBow2))
			ret += SKILL_EFF0(SID_RangeBonusBow2);
	}

	return ret;
}

void AddMap(int x, int y, u32 mask)
{
	int i;
	int pre = 0;
	u32 ref_mask = 1 << 31;

	for (i = 31; i >= 0; i--) {
		if ((ref_mask & mask)) {
			/* 1 */
			if (pre != 1) {
				LTRACEF("addmap+1 at x=%d, y=%d, i=%d", x, y, i);
				MapAddInRange(x, y, i, 1);
				pre = 1;
			}
		} else {
			/* 0 */
			if (pre != 0) {
				LTRACEF("addmap-1 at x=%d, y=%d, i=%d", x, y, i);
				MapAddInRange(x, y, i, -1);
				pre = 0;
			}
		}

		ref_mask = ref_mask >> 1;
	}
}

void AddMapForItem(struct Unit *unit, u16 item)
{
	MapIncInBoundedRange(
		unit->x,
		unit->y,
		GetItemMinRange(item, unit),
		GetItemMaxRange(item, unit)
	);
}

int GetItemEncodedRange(int item)
{
	return GetIInfo(ITEM_IID(item))->encoded_range;
}

/**
 * usage
 */
static  u32 get_range_mask(int min, int max)
{
	int i;
	u32 mask = 0;

	for (i = 0; i < 32; i++) {
		if (i < min)
			continue;

		if (i > max)
			continue;

		mask |= 1 << i;
	}
	return mask;
}

static int get_item_reach(int item, struct Unit *unit)
{
	int min = GetItemMinRange(item, unit);
	int max = GetItemMaxRange(item, unit);

	return get_range_mask(min, max);
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
		return get_item_reach(unit->items[item_slot], unit);

	for (i = 0; (i < ITEMSLOT_INV_COUNT) && (item = unit->items[i]); ++i) {
		if (CanUnitUseWeapon(unit, item))
			result |= get_item_reach(item, unit);
	}

	return result;
}

int GetUnitItemUseReach(struct Unit *unit, int item_slot)
{
	int i;
	u32 mask = 0;

	if (item_slot >= 0) {
		int item = unit->items[item_slot];

		if (CanUnitUseItem(unit, item))
			return get_item_reach(item, unit);

		return 0;
	}

	for (i = 0; i < ITEMSLOT_INV_COUNT; ++i) {
		int item = unit->items[i];

		if (item == 0)
			break;

		if (CanUnitUseItem(unit, item))
			mask = mask | get_item_reach(item, unit);
	}

	return mask;
}

int GetUnitStaffReach(struct Unit *unit)
{
	int i, tmp;
	u32 mask = 0;

	for (i = 0; (i < ITEMSLOT_INV_COUNT) && (tmp = unit->items[i]); ++i) {
		int item = unit->items[i];

		if (item == 0)
			break;

		if (CanUnitUseStaff(unit, tmp)) {
			/* 全体 */
			if (GetItemEncodedRange(item) == 0xFF)
				continue;

			mask = mask | get_item_reach(tmp, unit);
		}
	}

	return mask;
}
