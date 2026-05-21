#include "prelude.h"
#include "battle.h"

#include "skillsys.h"
#include "constants/skills.h"

void PreBattleCalc_AttackerSkills(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	u32 sid_i;
	struct SkillList *list;

	if (gBattleSt.flags & BATTLE_FLAG_ARENA)
		return;

	list = GetSkillList(&attacker->unit);

	for (sid_i = 0; sid_i < list->amt; sid_i++) {
		switch (list->sid[sid_i]) {
		case SID_BlowDeath:
			attacker->battle_attack += SKILL_EFF0(SID_BlowDeath);
			break;

		default:
			break;
		}
	}
}
