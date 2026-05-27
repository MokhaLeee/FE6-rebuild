#include "prelude.h"
#include "unit.h"
#include "faction.h"

int GetUnitLeaderPid(struct Unit *unit)
{
	if (UNIT_FACTION(unit) == FACTION_BLUE)
		return 0;

    /**
	 * anyone who claims himself as boss is okay
	 */
    FOR_UNITS_FACTION(UNIT_FACTION(unit), iunit, {
        if (UNIT_ATTRIBUTES(iunit) & UNIT_ATTR_BOSS)
            return UNIT_PID(unit);
    })

	return 0;
}

void SetUnitLeaderPid(struct Unit *unit, int pid)
{
}
