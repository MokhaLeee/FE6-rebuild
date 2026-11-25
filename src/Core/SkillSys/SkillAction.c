#include "prelude.h"
#include "action.h"
#include "skill-sys.h"

/*
 * Dispatch the skill chosen from the unit skill menu.
 *
 * The menu writes the skill id into gAction.skill_sid and sets
 * gAction.id = ACTION_SKILL; this runs later from DoAction().
 *
 * A registered action started a blocking child proc (map animation), so
 * return false and let the caller stop for this frame.  Anything else means
 * there is nothing to animate and the action is already complete.
 */
bool ActionExecSkill(ProcPtr proc)
{
	u16 sid = gAction.skill_sid;

	if (sid == 0 || sid >= MAX_SKILL_NUM)
		return true;

	if (gSkillActionFuncTable[sid] == NULL)
		return true;

	return gSkillActionFuncTable[sid](proc);
}
