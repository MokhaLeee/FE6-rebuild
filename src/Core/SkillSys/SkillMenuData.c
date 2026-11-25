#include "prelude.h"
#include "menu.h"
#include "skill-sys.h"
#include "skill-effects.h"
#include "constants/skills.h"

/*
 * Per-skill menu entries, indexed by skill id.
 *
 * This is kernel data, not part of the movable gameinfo area, so SkillMenu.c
 * can reference the table directly.
 *
 * A skill shows up in the unit "特技" sub menu only if it registers an entry
 * here with a non-NULL `available` callback.  `msg_help` is the help box text;
 * leave it 0 to fall back to the skill description.
 *
 * Entries left out stay NULL and the corresponding slot is hidden.
 */
const struct MenuEntInfo *const gSkillMenuInfos[MAX_SKILL_NUM + 1] = {
	[SID_HealingFocus] = &(const struct MenuEntInfo) {
		.label = TEXT("　瞑想", " Meditate"),
		.msg_help = 0,
		.available = HealingFocus_Usability,
		.on_select = HealingFocus_OnSelected,
	},
};
