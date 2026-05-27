#include "prelude.h"
#include "unit.h"
#include "bm.h"
#include "faction.h"
#include "constants/chapters.h"

static void unit_cleanup_hooks(struct Unit *unit)
{
	unit->torch = 0;
	unit->rescue = 0;
	SetUnitHp(unit, GetUnitMaxHp(unit));
	SetUnitStatus(unit, UNIT_STATUS_NONE);

	CleanupDuraStatus(unit);
}

void CleanupUnitsBeforeChapter(void)
{
	// Clear non-blue units

	FOR_UNITS(FACTION_GREEN + 1, FACTION_RED + 0x40, unit, {
		ClearUnit(unit);
	})

	// Cleanup blue unit states

	if (gPlaySt.chapter != CHAPTER_FINAL) {
		FOR_UNITS(FACTION_BLUE + 1, FACTION_BLUE + 0x40, unit, {
			unit_cleanup_hooks(unit);

			unit->flags &= UNIT_FLAG_DEAD | UNIT_FLAG_SOLOANIM_1 | UNIT_FLAG_SOLOANIM_2;

			if (UNIT_ATTRIBUTES(unit) & UNIT_ATTR_SUPPLY)
				unit->flags &= ~UNIT_FLAG_DEAD;

			unit->flags |= UNIT_FLAG_HIDDEN | UNIT_FLAG_NOT_DEPLOYED;
		})

		gPlaySt.flags &= ~PLAY_FLAG_PREP;
	} else {
		FOR_UNITS(FACTION_BLUE + 1, FACTION_BLUE + 0x40, unit, {
			unit->x = -1;
			unit->y = +1;

			unit_cleanup_hooks(unit);

			unit->flags &= UNIT_FLAG_DEAD | UNIT_FLAG_NOT_DEPLOYED | UNIT_FLAG_SOLOANIM_1 | UNIT_FLAG_SOLOANIM_2;

			if (UNIT_ATTRIBUTES(unit) & UNIT_ATTR_SUPPLY)
				unit->flags &= ~UNIT_FLAG_DEAD;

			unit->flags |= UNIT_FLAG_HIDDEN;
		})

		gPlaySt.flags &= ~PLAY_FLAG_PREP;
	}
}
