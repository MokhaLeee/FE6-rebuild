#include "prelude.h"
#include "unit.h"
#include "item.h"
#include "targetlist.h"
#include "mapselect.h"
#include "text.h"
#include "icon.h"
#include "hardware.h"

#include "gaiden-magic.h"

#include "constants/iids.h"
#include "constants/videoalloc_global.h"

/*
 * One list serves the whole game.  The signature below is what makes that
 * safe: whenever the unit changes, the next GetGaidenMagicList() rebuilds.
 */
static EWRAM_DATA struct GaidenMagicList sGaidenMagicList;

/*
 * B.Mag holds weapons.  CONFIG_GAIDEN_MAGIC_MUST_BE_MAGIC narrows that to
 * the actual magic weapons, which is what the fe8u cskillsys calls the
 * faithful setup.
 */
static bool is_bmag(int iid)
{
	u32 attr = GetItemAttributes(iid);

	if (!(attr & ITEM_ATTR_WEAPON))
		return false;

	if (CONFIG_GAIDEN_MAGIC_MUST_BE_MAGIC && !(attr & ITEM_ATTR_MAGIC))
		return false;

	return true;
}

/* W.Mag holds staves only. */
static bool is_wmag(int iid)
{
	return GetItemKind(iid) == ITEM_KIND_STAFF;
}

/*
 * Append only if the slot is free and the iid is not already listed.  The
 * table order decides the slot order, so a later duplicate never moves an
 * earlier entry.
 */
static void append_unique(u8 *arr, u8 *cnt, int iid)
{
	int i;

	if (*cnt >= GAIDEN_MAGIC_LIST_LEN)
		return;

	for (i = 0; i < *cnt; i++)
		if (arr[i] == iid)
			return;

	arr[(*cnt)++] = iid;
}

void ResetGaidenMagicList(struct GaidenMagicList *list)
{
	memset(list, 0, sizeof(*list));
}

void UpdateGaidenMagicList(struct Unit *unit, struct GaidenMagicList *list)
{
	const struct GaidenPinfoConfigEnt *ent;

	ResetGaidenMagicList(list);

	ent = gGaidenPinfoConfigList[unit->pinfo->id].ent;

	if (!ent)
		return;

	for (; ent->iid != IID_NONE; ent++) {
		if (unit->level < ent->level)
			continue;

		if (is_bmag(ent->iid))
			append_unique(list->bmags, &list->bmag_cnt, ent->iid);
		else if (is_wmag(ent->iid))
			append_unique(list->wmags, &list->wmag_cnt, ent->iid);
	}
}

static bool judge_sign(struct Unit *unit, const struct GaidenMagicList *list)
{
	return list->sign.pinfo == unit->pinfo
		&& list->sign.jinfo == unit->jinfo
		&& list->sign.level == unit->level
		&& list->sign.uid == unit->id;
}

static void write_sign(struct Unit *unit, struct GaidenMagicList *list)
{
	list->sign.pinfo = unit->pinfo;
	list->sign.jinfo = unit->jinfo;
	list->sign.level = unit->level;
	list->sign.uid = unit->id;
}

struct GaidenMagicList *GetGaidenMagicList(struct Unit *unit)
{
	struct GaidenMagicList *list = &sGaidenMagicList;

	if (!judge_sign(unit, list)) {
		UpdateGaidenMagicList(unit, list);
		write_sign(unit, list);
	}

	return list;
}

int GetGaidenMagicItem(struct Unit *unit, int slot)
{
	struct GaidenMagicList *list;
	int idx;

	if (slot < ITEMSLOT_GAIDEN_BMAG1 || slot > ITEMSLOT_GAIDEN_WMAG7)
		return IID_NONE;

	list = GetGaidenMagicList(unit);

	if (slot <= ITEMSLOT_GAIDEN_BMAG7) {
		idx = slot - ITEMSLOT_GAIDEN_BMAG1;

		return idx < list->bmag_cnt ? list->bmags[idx] : IID_NONE;
	}

	idx = slot - ITEMSLOT_GAIDEN_WMAG1;

	return idx < list->wmag_cnt ? list->wmags[idx] : IID_NONE;
}

int GetGaidenWeaponHpCost(struct Unit *unit, int item)
{
	return gGaidenWeaponCostList[GetItemIid(item)];
}

int GetGaidenMagicAutoEquipSlot(struct Unit *unit)
{
	struct GaidenMagicList *list = GetGaidenMagicList(unit);
	int i, item;

	for (i = 0; i < list->bmag_cnt; i++) {
		item = list->bmags[i];

		if (!(GetItemAttributes(item) & ITEM_ATTR_WEAPON))
			continue;

		if (!CanUnitUseGaidenMagicNow(unit, item))
			continue;

		return ITEMSLOT_GAIDEN_BMAG1 + i;
	}

	return -1;
}

bool CanUnitUseGaidenMagic(struct Unit *unit, int item)
{
#if CONFIG_GAIDEN_MAGIC_REQUIRES_WRANK
	if (GetItemAttributes(item) & ITEM_ATTR_WEAPON)
		return CanUnitUseWeapon(unit, item);

	if (GetItemKind(item) == ITEM_KIND_STAFF)
		return CanUnitUseStaff(unit, item);

	return false;
#else
	return true;
#endif
}

bool CanUnitUseGaidenMagicNow(struct Unit *unit, int item)
{
	u32 sealed_attr = ITEM_ATTR_MAGIC | ITEM_ATTR_STAFF;

	/*
	 * A silenced unit cannot cast at all, and the HP cost has to stay
	 * strictly below the current HP so that casting is never lethal.
	 */
	if ((GetItemAttributes(item) & sealed_attr) && unit->status == UNIT_STATUS_SILENCED)
		return false;

	if (unit->hp <= GetGaidenWeaponHpCost(unit, item))
		return false;

	return CanUnitUseGaidenMagic(unit, item);
}
