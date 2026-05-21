#include "prelude.h"
#include "unit.h"
#include "skillsys.h"

IWRAM_FUNC
bool JudgeSkillFast(struct Unit *unit, int sid)
{
	int pid, jid;

	if (sid == 0)
		return false;
	if (unit == NULL || unit->pinfo == NULL)
		return false;

	pid = UNIT_PID(unit);
	if (gpSkillPTable[pid].sid[0] == sid || gpSkillPTable[pid].sid[1] == sid)
		return true;

	jid = UNIT_JID(unit);
	if (gpSkillJTable[jid].sid[0] == sid || gpSkillJTable[jid].sid[1] == sid)
		return true;

	return false;
}
