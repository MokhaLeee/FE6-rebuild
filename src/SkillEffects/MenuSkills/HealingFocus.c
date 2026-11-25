#include "prelude.h"
#include "action.h"
#include "menu.h"
#include "mu.h"
#include "unit.h"
#include "masseffect.h"

#include "klib.h"
#include "skill-sys.h"
#include "skill-effects.h"
#include "constants/skills.h"
#include "constants/msg.h"

/*
 * "瞑想" (Heal Focus), ported from fe8u-cskillsys-kernel MenuSkills/HealingFocus.c
 *
 * fe8 uses CallMapAnim_HealExt() for the map animation; fe6 does not have that
 * helper, so the HP restore is applied here and the vanilla heal flash covers
 * the animation side.
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
	struct MuProc *mu;
	int amount;

	amount = perc_of(GetUnitMaxHp(gActiveUnit), SKILL_EFF0(SID_HealingFocus));
	AddUnitHp(gActiveUnit, amount);

	/*
	 * The unit is normally shown through a hover MuProc while the action menu
	 * is open.  The heal effect draws its own blended copy of the unit sprite,
	 * so the Mu must be gone first or both sprites overlap.
	 */
	mu = GetUnitMu(gActiveUnit);
	if (mu)
		EndMu(mu);

	StartStatusHealEffect(gActiveUnit, parent);

	return false;
}
