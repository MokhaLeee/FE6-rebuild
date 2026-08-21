#include "prelude.h"
#include "battle.h"

#include "skill-sys.h"
#include "str-mag.h"
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
		case SID_BlowDarting:
			if (IsBattleActor(attacker))
				attacker->battle_speed += SKILL_EFF0(SID_BlowDarting);

			break;

		case SID_BlowDeath:
			if (IsBattleActor(attacker) && !IsMagicAttack(attacker))
				attacker->battle_attack += SKILL_EFF0(SID_BlowDeath);

			break;

		case SID_BlowFiendish:
			if (IsBattleActor(attacker) && IsMagicAttack(attacker))
				attacker->battle_attack += SKILL_EFF0(SID_BlowFiendish);

			break;

		case SID_BlowArmored:
			if (IsBattleActor(attacker) && !IsMagicAttack(defender))
				attacker->battle_defense += SKILL_EFF0(SID_BlowArmored);

			break;

		case SID_BlowWarding:
			if (IsBattleActor(attacker) && IsMagicAttack(defender))
				attacker->battle_defense += SKILL_EFF0(SID_BlowWarding);

			break;

		case SID_BlowDuelist:
			if (IsBattleActor(attacker))
				attacker->battle_avoid += SKILL_EFF0(SID_BlowDuelist);

			break;

		case SID_BlowUncanny:
			if (IsBattleActor(attacker))
				attacker->battle_hit += SKILL_EFF0(SID_BlowUncanny);

			break;

		case SID_BlowKilling:
			if (IsBattleActor(attacker))
				attacker->battle_crit += SKILL_EFF0(SID_BlowKilling);

			break;

		default:
			break;
		}
	}
}
