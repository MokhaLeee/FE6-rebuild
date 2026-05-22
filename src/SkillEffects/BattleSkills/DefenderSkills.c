#include "prelude.h"
#include "battle.h"

#include "skill-sys.h"
#include "constants/skills.h"

void PreBattleCalc_DefenderSkills(struct BattleUnit *attacker, struct BattleUnit *defender)
{
	u32 sid_i;
	struct SkillList *list;

	if (gBattleSt.flags & BATTLE_FLAG_ARENA)
		return;

	list = GetSkillList(&defender->unit);

	for (sid_i = 0; sid_i < list->amt; sid_i++) {
		switch (list->sid[sid_i]) {
		default:
			break;
		}
	}
}
