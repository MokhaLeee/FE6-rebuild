#include "prelude.h"
#include "action.h"
#include "menu.h"
#include "unit.h"

#include "klib.h"
#include "map-anim.h"
#include "skill-sys.h"
#include "skill-effects.h"
#include "constants/skills.h"
#include "constants/msg.h"

/*
 * "瞑想" (Heal Focus), ported from fe8u-cskillsys-kernel MenuSkills/HealingFocus.c
 *
 * fe8 uses CallMapAnim_HealExt() for the map animation, which fe6 does not
 * have.  StartMapHealAnim() is the equivalent here: the unit plays the
 * vulnerary "use item" pose, the heal glow blooms on it and the hp comes back,
 * without touching the battle unit snapshot or the manim state.
 */
fu8 HealingFocus_Usability(const struct MenuEntInfo *self, int number)
{
	if (GetUnitCurrentHp(gActiveUnit) == GetUnitMaxHp(gActiveUnit))
		return MENU_ENTRY_DISABLED;

	return MENU_ENTRY_ENABLED;
}

fu8 HealingFocus_OnSelected(struct MenuProc *menu, struct MenuEntProc *ent)
{
	if (ent->availability == MENU_ENTRY_DISABLED) {
		MenuFrozenHelpBox(menu, MSG_SKILL_HealingFocus_FR);
		return MENU_ACTION_SE_6B;
	}

	gAction.skill_sid = SID_HealingFocus;
	gAction.id = ACTION_SKILL;

	return MENU_ACTION_NOCURSOR | MENU_ACTION_END | MENU_ACTION_SE_6A | MENU_ACTION_CLEAR;
}

bool Action_HealingFocus(ProcPtr parent)
{
	int amount;

	amount = perc_of(GetUnitMaxHp(gActiveUnit), SKILL_EFF0(SID_HealingFocus));

	StartMapHealAnim(parent, gActiveUnit, amount);

	return false;
}
