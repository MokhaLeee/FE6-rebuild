#pragma once

#include "prelude.h"
#include "unit.h"

/*
 * Gaiden magic reach.
 *
 * Kept out of GetUnitWeaponReach() / GetUnitStaffReach() on purpose: those
 * two also feed the unit action menu hover, which only ever lists inventory
 * items.  Adding books there would paint a range for a book the menu will
 * never offer.  The global range display (cursor over a unit) ORs these in
 * instead, so a book that only exists in the gaiden list still shows up as
 * a threat.
 */
u32 GetGaidenMagicWeaponReach(struct Unit *unit);
u32 GetGaidenMagicStaffReach(struct Unit *unit);
