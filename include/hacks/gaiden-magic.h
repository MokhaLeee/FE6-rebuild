#pragma once

#include "prelude.h"
#include "unit.h"

/*
 * Gaiden style magic, after the fe8u cskillsys.
 *
 * A unit carries up to GAIDEN_MAGIC_LIST_LEN black and white magic books
 * that live outside its inventory.  They reach the battle and staff code
 * through the ITEMSLOT_GAIDEN_* slots, and every consumer has to resolve
 * them with GetGaidenMagicItem() instead of indexing Unit::items[].
 *
 * The list is derived from the tables below every time, never stored on the
 * unit, so it needs no room in the save data.
 */

struct GaidenPinfoConfigEnt {
	u8 level;
	u8 iid;
};

struct GaidenPinfoConfig {
	const struct GaidenPinfoConfigEnt *ent;
};

#define GAIDEN_MAGIC_LIST_LEN 7

/* Each entry is terminated by an iid of IID_NONE. */
extern struct GaidenPinfoConfig const gGaidenPinfoConfigList[0x100];

/* HP spent per cast, indexed by iid.  0 means the item is free. */
extern u8 const gGaidenWeaponCostList[0x100];

/*
 * The cache signature snapshots every input the tables read.  Unit::id is
 * i8, so the signature keeps the same signed type; storing it unsigned
 * would make the comparison fail for every unit whose id has bit 7 set.
 */
struct GaidenMagicList {
	struct {
		const struct PInfo *pinfo;
		const struct JInfo *jinfo;
		i8 level;
		i8 uid;
	} sign;

	u8 bmag_cnt;
	u8 bmags[GAIDEN_MAGIC_LIST_LEN];

	u8 wmag_cnt;
	u8 wmags[GAIDEN_MAGIC_LIST_LEN];
};

void ResetGaidenMagicList(struct GaidenMagicList *list);
void UpdateGaidenMagicList(struct Unit *unit, struct GaidenMagicList *list);
struct GaidenMagicList *GetGaidenMagicList(struct Unit *unit);

/* Resolve an ITEMSLOT_GAIDEN_* slot to its iid, or IID_NONE. */
int GetGaidenMagicItem(struct Unit *unit, int slot);

int GetGaidenWeaponHpCost(struct Unit *unit, int item);

/* Static usability: rank and magic seal are not considered here. */
bool CanUnitUseGaidenMagic(struct Unit *unit, int item);

/* Usability right now: adds the magic seal and the HP cost check. */
bool CanUnitUseGaidenMagicNow(struct Unit *unit, int item);
