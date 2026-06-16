#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "skill-sys.h"
#include "klib.h"

IWRAM_FUNC
bool JudgeSkillFast(struct Unit *unit, int sid)
{
	int i, pid, jid;

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

	for (i = 0; i < UNIT_DYNAMIC_SKILLS_COUNT; i++)
		if (unlikely(unit->skills[i] == sid))
			return true;

	return false;
}

IWRAM_FUNC
bool JudgeSkillInBattle(struct BattleUnit *bu, int sid)
{
	return check_bit(bu->skills_bitfile, sid);
}
