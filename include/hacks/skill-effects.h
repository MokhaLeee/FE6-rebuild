#pragma once

#include "prelude.h"
#include "menu.h"
#include "proc.h"

/* Post-action skills */
bool PostActionSkill_AlertStance(ProcPtr parent);
bool PostActionSkill_HealAfterAction(ProcPtr parent);

/* Menu skills */
fu8 HealingFocus_Usability(const struct MenuEntInfo *self, int number);
fu8 HealingFocus_OnSelected(struct MenuProc *menu, struct MenuEntProc *ent);
bool Action_HealingFocus(ProcPtr proc);
