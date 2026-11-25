#include "prelude.h"
#include "menu.h"
#include "skill-sys.h"

/*
 * Per-skill menu entries, indexed by skill id.
 *
 * This is kernel data, not part of the movable gameinfo area, so SkillMenu.c
 * can reference the table directly.
 *
 * A skill shows up in the unit "特技" sub menu only if it registers an entry
 * here with a non-NULL `available` callback.  The callbacks are the skill's
 * own menu behaviour, for example:
 *
 *	[SID_HealingFocus] = &(const struct MenuEntInfo) {
 *		.label = TEXT("　", " "),
 *		.msg_help = MSG_SKILL_HealingFocus,
 *		.available = HealingFocus_Usability,
 *		.on_select = HealingFocus_OnSelected,
 *	},
 *
 * Entries left out stay NULL and the corresponding slot is hidden.
 */
const struct MenuEntInfo *const gSkillMenuInfos[MAX_SKILL_NUM + 1] = { 0 };
