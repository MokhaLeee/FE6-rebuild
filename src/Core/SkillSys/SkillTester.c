#include "prelude.h"
#include "unit.h"
#include "skill-sys.h"

bool JudgeSkillViaList(struct Unit *unit, int sid)
{
	u32 i;
	struct SkillList *list;

	if (unlikely(sid == 0))
		return false;
	if (unlikely(unit == NULL))
		return false;
	if (unlikely(unit->pinfo == NULL))
		return false;

	list = GetSkillList(unit);

	for (i = 0; i < list->amt; i++)
		if (unlikely(list->sid[i] == sid))
			return true;

	return false;
}
