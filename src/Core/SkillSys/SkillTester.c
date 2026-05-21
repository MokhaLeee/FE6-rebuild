#include "prelude.h"
#include "unit.h"
#include "skillsys.h"

bool JudgeSkillViaList(struct Unit *unit, int sid)
{
	u32 i;
	struct SkillList *list = GetSkillList(unit);

	if (unlikely(sid == 0))
		return false;
	if (unlikely(unit == NULL))
		return false;
	if (unlikely(unit->pinfo == NULL))
		return false;

	for (i = 0; i < list->amt; i++)
		if (unlikely(list->sid[i] == sid))
			return true;

	return false;
}
