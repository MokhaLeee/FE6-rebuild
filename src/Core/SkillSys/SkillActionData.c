#include "prelude.h"
#include "proc.h"
#include "skill-sys.h"

/*
 * Per-skill action entry, indexed by skill id.
 *
 * This is kernel data, same as SkillMenuData.c: SkillAction.c references the
 * table directly.
 *
 * A skill that is usable from the unit "特技" menu registers its action
 * function here, for example:
 *
 *	[SID_HealingFocus] = Action_HealingFocus,
 *
 * Entries left out stay NULL, and ActionExecSkill() treats them as a no-op.
 */
const SkillActionFunc_t gSkillActionFuncTable[MAX_SKILL_NUM + 1] = { 0 };
