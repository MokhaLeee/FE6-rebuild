#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "action.h"

#include "klib.h"
#include "map-anim.h"
#include "skill-sys.h"
#include "skill-effects.h"
#include "constants/skills.h"

/*
 * Post-action healing skills, ported from fe8u-cskillsys
 * Kernel/Wizardry/Misc/SkillEffects/PostActionSkills/Heal.c:
 *
 * - Lifetaker: heal 25% of max hp after the unit acts, but only if the battle
 *   of that action defeated a foe.
 * - Endless Vitality: heal 20% of max hp after the unit acts.
 *
 * "Defeated a foe" is a per-battle fact on the battle unit itself
 * (BattleUnit::result), set by the battle flow and reset by InitBattleUnit(),
 * so no skill needs to own a global flag for it.
 *
 * The animation is the self-contained map heal (map-anim.h), so this needs no
 * battle unit snapshot either.
 */
static bool action_defeated_foe(void)
{
	/* gBattleUnitA still holds the battle of this action; a wait or an item
	 * use leaves the previous battle's values behind, hence the action check. */
	return gAction.id == ACTION_COMBAT && gBattleUnitA.result.foe_defeated;
}

bool PostActionSkill_HealAfterAction(ProcPtr parent)
{
	struct Unit *unit = gActiveUnit;
	int hp_cur, hp_max, heal;

	if (!UnitAvailable(unit) || UNIT_STONED(unit))
		return false;

	hp_cur = GetUnitCurrentHp(unit);
	hp_max = GetUnitMaxHp(unit);

	heal = 0;

	if (SkillTester(unit, SID_Lifetaker) && action_defeated_foe())
		heal += perc_of(hp_max, SKILL_EFF0(SID_Lifetaker));

	if (SkillTester(unit, SID_EndlessVitality))
		heal += perc_of(hp_max, SKILL_EFF0(SID_EndlessVitality));

	if (heal > hp_max - hp_cur)
		heal = hp_max - hp_cur;

	if (heal <= 0)
		return false;

	StartMapHealAnim(parent, unit, heal);

	return true;
}
