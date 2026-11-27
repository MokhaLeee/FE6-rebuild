#include "prelude.h"
#include "unit.h"
#include "item.h"
#include "map.h"
#include "bm.h"
#include "faction.h"
#include "trap.h"
#include "arena.h"
#include "battle.h"

#include "skill-sys.h"

#include "constants/jids.h"

/*
 * Weapon setup for a battle unit, split out of battle.c after the fe8u
 * cskillsys BattleWeapon.c.  Everything that picks "which weapon (and which
 * inventory slot) does this battle unit fight with" lives here, together with
 * the item-effect init path that reuses the same slot rules.
 */

/*
 * Resolve an item slot to the item it holds.
 *
 * Slots 0..4 index the unit inventory; every other slot reads dedicated
 * storage instead (the overflow item, the arena weapons, or the ballista the
 * unit currently stands on), so a raw Unit::items[slot] load is only valid
 * inside the inventory range.
 */
int GetItemFromSlot(struct Unit *unit, int item_slot)
{
	switch (item_slot) {
	case ITEMSLOT_INV0 ... ITEMSLOT_INV_COUNT - 1:
		return unit->items[item_slot];

	case ITEMSLOT_OVERFLOW:
		return gBmSt.inventory_item_overflow;

	case ITEMSLOT_ARENA_PLAYER:
		return gArenaSt.player_weapon;

	case ITEMSLOT_ARENA_OPPONENT:
		return gArenaSt.opponent_weapon;

	case ITEMSLOT_BALLISTA:
		return GetBallistaItemAt(unit->x, unit->y);

	default:
		return 0;
	}
}

void SetBattleUnitWeapon(struct BattleUnit *bu, int item_slot)
{
	if (item_slot == -1)
		item_slot = GetUnitEquippedWeaponSlot(&bu->unit);

	bu->has_inventory_weapon = TRUE;

	switch (item_slot) {
	case ITEMSLOT_INV0 ... ITEMSLOT_INV_COUNT - 1:
		bu->weapon_inventory_slot = item_slot;

		break;

	case ITEMSLOT_OVERFLOW:
		bu->weapon_inventory_slot = -1;

		break;

	case ITEMSLOT_ARENA_PLAYER:
	case ITEMSLOT_ARENA_OPPONENT:
		bu->weapon_inventory_slot = 0;
		bu->has_inventory_weapon = FALSE;

		break;

	case ITEMSLOT_BALLISTA:
		bu->weapon_inventory_slot = -1;
		bu->has_inventory_weapon = FALSE;

		break;

	default:
		bu->weapon_inventory_slot = -1;
		bu->has_inventory_weapon = FALSE;

		break;

	}

	bu->weapon = GetItemFromSlot(&bu->unit, item_slot);

	bu->weapon_before = bu->weapon;
	bu->weapon_attributes = GetItemAttributes(bu->weapon);
	bu->weapon_kind = GetItemKind(bu->weapon);

	if (!(gBattleSt.flags & BATTLE_FLAG_STATSONLY)) {
		if (bu->weapon_attributes & ITEM_ATTR_LIGHTBRAND) {
			if (gBattleSt.range == 2)
				bu->weapon_kind = ITEM_KIND_LIGHT;
			else
				bu->weapon_attributes = bu->weapon_attributes &~ ITEM_ATTR_LIGHTBRAND;
		}

		if (!CanItemReachDistance(bu->weapon, gBattleSt.range, &bu->unit) || bu->weapon_inventory_slot == 0xFF) {
			bu->weapon = 0;
			bu->has_inventory_weapon = FALSE;
		}

		if (bu->unit.status == UNIT_STATUS_SLEEP) {
			bu->weapon = 0;
			bu->has_inventory_weapon = FALSE;
		}
	}
}

void SetBattleUnitWeaponBallista(struct BattleUnit *bu)
{
	bu->weapon = GetBallistaItemAt(bu->unit.x, bu->unit.y);

	bu->weapon_before = bu->weapon;
	bu->weapon_attributes = GetItemAttributes(bu->weapon);
	bu->weapon_kind = GetItemKind(bu->weapon);

	bu->has_inventory_weapon = FALSE;
}

void BattleInitTargetCanCounter(void)
{
	// Target cannot counter if either units are using "uncounterable" weapons

	if ((gBattleUnitA.weapon_attributes | gBattleUnitB.weapon_attributes) & ITEM_ATTR_UNCOUNTERABLE) {
		gBattleUnitB.weapon = 0;
		gBattleUnitB.has_inventory_weapon = FALSE;
	}

	// Target cannot counter if a berserked player unit is attacking another player unit

	if (gBattleUnitA.unit.status == UNIT_STATUS_BERSERK) {
		if ((UNIT_FACTION(&gBattleUnitA.unit) == FACTION_BLUE) && (UNIT_FACTION(&gBattleUnitB.unit) == FACTION_BLUE)) {
			gBattleUnitB.weapon = 0;
			gBattleUnitB.has_inventory_weapon = FALSE;
		}
	}
}

void BattleUnitTargetSetEquippedWeapon(struct BattleUnit *bu)
{
	int i;

	if (bu->weapon_before)
		return;

	bu->weapon_before = GetUnitEquippedWeapon(&bu->unit);

	if (bu->weapon_before)
		return;

	if (!UnitKnowsMagic(&bu->unit))
		return;

	for (i = 0; i < ITEMSLOT_INV_COUNT; ++i) {
		if (CanUnitUseStaff(&bu->unit, bu->unit.items[i]) == TRUE) {
			bu->weapon_before = bu->unit.items[i];
			break;
		}
	}
}

void BattleUnitTargetCheckCanCounter(struct BattleUnit *bu)
{
	if (!bu->has_inventory_weapon) {
		bu->battle_attack = 0xFF;
		bu->battle_hit = 0xFF;
		bu->battle_effective_hit = 0xFF;
		bu->battle_crit = 0xFF;
		bu->battle_effective_crit = 0xFF;
	}
}

void BattleInitItemEffect(struct Unit *unit, int item_slot)
{
	int item = GetItemFromSlot(unit, item_slot);

	gBattleSt.flags = 0;

	InitBattleUnit(&gBattleUnitA, unit);

	/*
	 * Only the user is initialized here; the target is added by
	 * BattleInitItemEffectTarget().
	 */
	SetupBattleUnitSkillList(&gBattleUnitA);

	SetBattleUnitTerrainBonusesAuto(&gBattleUnitA);
	ComputeBattleUnitBaseDefense(&gBattleUnitA);
	ComputeBattleUnitSupportBonuses(&gBattleUnitA, NULL);

	gBattleUnitA.battle_attack = 0xFF;
	gBattleUnitA.battle_effective_hit = 100;
	gBattleUnitA.battle_effective_crit = 0xFF;

	gBattleUnitA.weapon = item;
	gBattleUnitA.weapon_before = item;
	gBattleUnitA.weapon_inventory_slot = item_slot;
	gBattleUnitA.weapon_kind = GetItemKind(item);
	gBattleUnitA.weapon_attributes = GetItemAttributes(item);

	/*
	 * Only the inventory range has a slot in Unit::items[]; a misc action
	 * (-1) carries no item of its own, and BattleApplyItemEffect() writes
	 * the slot back, so claiming an inventory weapon there would corrupt
	 * whatever follows the item array.
	 */
	gBattleUnitA.has_inventory_weapon =
		(item_slot >= ITEMSLOT_INV0 && item_slot < ITEMSLOT_INV_COUNT);
	gBattleUnitA.has_item_effect_target = FALSE;

	gBattleUnitA.output_status = -1;
	gBattleUnitB.output_status = -1;

	ClearBattleHits();
}

void BattleInitItemEffectTarget(struct Unit *unit)
{
	InitBattleUnit(&gBattleUnitB, unit);

	/* User and target are both ready now; complete the snapshot. */
	SetupBattleSkillList();

	SetBattleUnitTerrainBonusesAuto(&gBattleUnitB);
	ComputeBattleUnitBaseDefense(&gBattleUnitB);
	ComputeBattleUnitSupportBonuses(&gBattleUnitB, NULL);

	gBattleUnitB.battle_attack = 0xFF;
	gBattleUnitB.battle_effective_hit = 0xFF;
	gBattleUnitB.battle_effective_crit = 0xFF;

	gBattleUnitB.weapon_before = 0;

	BattleUnitTargetSetEquippedWeapon(&gBattleUnitB);

	gBattleUnitA.has_item_effect_target = TRUE;

	if (GetItemAttributes(gBattleUnitB.weapon_before) & ITEM_ATTR_LOCK_DRAGON)
		if (gBattleUnitB.unit.jinfo->id != JID_DEMONDRAGON)
			gBattleUnitB.weapon_before = 0;
}
