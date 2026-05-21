#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "skillsys.h"

IWRAM_FUNC
bool JudgeSkillFast(struct Unit *unit, int sid)
{
	int pid, jid;

	if (unlikely(sid == 0))
		return false;
	if (unlikely(unit == NULL))
		return false;
	if (unlikely(unit->pinfo == NULL))
		return false;

	pid = UNIT_PID(unit);
	if (unlikely(gpSkillPTable[pid].sid[0] == sid))
		return true;
	if (unlikely(gpSkillPTable[pid].sid[1] == sid))
		return true;

	jid = UNIT_JID(unit);
	if (unlikely(gpSkillJTable[jid].sid[0] == sid))
		return true;
	if (unlikely(gpSkillJTable[jid].sid[1] == sid))
		return true;

	return false;
}

IWRAM_FUNC
bool JudgeSkillInBattle(struct BattleUnit *bu, int sid)
{
	int lo = sid & 0x1F;
	int hi = sid >> 6;

	return !!(bu->skills_bitfile[hi] & (1 << lo));
}
