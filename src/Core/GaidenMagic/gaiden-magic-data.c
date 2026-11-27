#include "prelude.h"
#include "unit.h"

#include "gaiden-magic.h"

#include "constants/iids.h"
#include "constants/pids.h"

/*
 * HP cost per cast, indexed by iid.  An unlisted item costs nothing.
 *
 * The values are placeholders for the port; tune them once the battle side
 * can actually spend the HP.
 */
const u8 gGaidenWeaponCostList[0x100] = {
	[IID_IRONSWORD] = 2,
	[IID_FIRE] = 2,
	[IID_THUNDER] = 3,
	[IID_FLUX] = 2,
	[IID_HEALSTAFF] = 2,
	[IID_MENDSTAFF] = 3,
	[IID_PHYSICSTAFF] = 5,
};

/*
 * Per-character magic list, keyed by PInfo::id.
 *
 * A debug spread that covers the three cases the loader has to tell apart:
 * a plain weapon (Roy), a real magic weapon (Lilina) and a staff (Clarine).
 * Every entry is gated on the unit level, so Lilina's Thunder appears at 5.
 */
struct GaidenPinfoConfig const gGaidenPinfoConfigList[0x100] = {
	[PID_ROY] = { .ent = (const struct GaidenPinfoConfigEnt []) {
		{ 1, IID_IRONSWORD },
		{ 0 }
	}},

	[PID_LILINA] = { .ent = (const struct GaidenPinfoConfigEnt []) {
		{ 1, IID_FIRE },
		{ 5, IID_THUNDER },
		{ 5, IID_FLUX },
		{ 0 }
	}},

	[PID_CLARINE] = { .ent = (const struct GaidenPinfoConfigEnt []) {
		{ 1, IID_HEALSTAFF },
		{ 3, IID_MENDSTAFF },
		{ 0 }
	}},
};
