#include "prelude.h"
#include "unit.h"
#include "bm.h"
#include "faction.h"
#include "constants/chapters.h"

void CleanupUnitsBeforeChapter(void)
{
	// Clear non-blue units

	FOR_UNITS(FACTION_GREEN + 1, FACTION_RED + 0x40, unit, {
		ClearUnit(unit);
	})

	// Cleanup blue unit states

	if (gPlaySt.chapter != CHAPTER_FINAL) {
		FOR_UNITS(FACTION_BLUE + 1, FACTION_BLUE + 0x40, unit, {
			SetUnitHp(unit, GetUnitMaxHp(unit));
			SetUnitStatus(unit, UNIT_STATUS_NONE);

			unit->torch = 0;
			unit->barrier = 0;

			unit->flags &= UNIT_FLAG_DEAD | UNIT_FLAG_SOLOANIM_1 | UNIT_FLAG_SOLOANIM_2;

			if (UNIT_ATTRIBUTES(unit) & UNIT_ATTR_SUPPLY)
				unit->flags &= ~UNIT_FLAG_DEAD;

			unit->flags |= UNIT_FLAG_HIDDEN | UNIT_FLAG_NOT_DEPLOYED;

			unit->rescue = 0;
		})

		gPlaySt.flags &= ~PLAY_FLAG_PREP;
	} else {
		FOR_UNITS(FACTION_BLUE + 1, FACTION_BLUE + 0x40, unit, {
			unit->x = -1;
			unit->y = +1;

			SetUnitHp(unit, GetUnitMaxHp(unit));
			SetUnitStatus(unit, UNIT_STATUS_NONE);

			unit->torch = 0;
			unit->barrier = 0;

			unit->flags &= UNIT_FLAG_DEAD | UNIT_FLAG_NOT_DEPLOYED | UNIT_FLAG_SOLOANIM_1 | UNIT_FLAG_SOLOANIM_2;

			if (UNIT_ATTRIBUTES(unit) & UNIT_ATTR_SUPPLY)
				unit->flags &= ~UNIT_FLAG_DEAD;

			unit->flags |= UNIT_FLAG_HIDDEN;

			unit->rescue = 0;
		})

		gPlaySt.flags &= ~PLAY_FLAG_PREP;
	}
}
