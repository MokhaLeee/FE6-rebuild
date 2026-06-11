#include "prelude.h"
#include "constants/pids.h"
#include "lvup.h"

GAMEINFO_DATA
const struct UnitMaxStatusConfig gUnitMaxStatusConfigTable[0x100] = {
	[PID_LILINA] = {
		.mag = +5,
		.skl = +2,
		.spd = -3,
		.def = -3,
		.res = -3,
	},
};
