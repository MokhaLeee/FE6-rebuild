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
 * Kernel/Wizardry/Misc/SkillEffects/PostActionSkills/Heal.c.  Upstream has two
 * hooks, one for the unit that acted and one for the unit that got attacked;
 * both live here.
 *
 * After its own action:
 * - Lifetaker: heal 25% of max hp, but only if the battle defeated a foe.
 * - Endless Vitality: heal 20% of max hp.
 * - Mystic Boost: heal a flat 6 hp (its other half, the counter to Sorcery
 *   Blade, lives in ComputeBattleUnitDefense()).
 *
 * After being attacked:
 * - Endless Vitality and Mystic Boost heal the defender as well; Lifetaker
 *   stays with the unit that won the exchange.
 *
 * "Defeated a foe" is a per-battle fact on the battle unit itself
 * (BattleUnit::result), set by the battle flow and reset by InitBattleUnit(),
 * so no skill needs to own a global flag for it.
 *
 * The heal first plays the shared skill activation animation (NewMuSkillAnim:
 * forced "use item" pose + skill icon), then its callback runs the heal effect
 * only (StartMapHealEffect), so the pose is played once.  The animation is
 * started on the healed unit, which is not necessarily the active one for the
 * defender hook.
 */

/* NewMuSkillAnim() callbacks only get the proc, so the heal parameters go
 * through here; the post-action hooks run one at a time and the animation
 * blocks the hook proc, so nothing can overwrite them mid-animation. */
static struct Unit *s_heal_unit;
static int s_heal_amount;

static void heal_after_action_anim(ProcPtr proc)
{
	StartMapHealEffect(proc, s_heal_unit, s_heal_amount);
}

static bool start_post_action_heal(struct Unit *unit, ProcPtr parent,
				   int heal, u16 sid)
{
	if (heal <= 0)
		return false;

	if (sid == 0) {
		/* No skill id to show an icon for: fall back to the plain heal. */
		StartMapHealAnim(parent, unit, heal);
		return true;
	}

	s_heal_unit = unit;
	s_heal_amount = heal;

	NewMuSkillAnim(unit, sid, parent, heal_after_action_anim, NULL);

	return true;
}

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
	u16 sid = 0;

	if (!UnitAvailable(unit) || UNIT_STONED(unit))
		return false;

	hp_cur = GetUnitCurrentHp(unit);
	hp_max = GetUnitMaxHp(unit);

	heal = 0;

	if (SkillTester(unit, SID_Lifetaker) && action_defeated_foe()) {
		heal += perc_of(hp_max, SKILL_EFF0(SID_Lifetaker));
		sid = SID_Lifetaker;
	}

	if (SkillTester(unit, SID_EndlessVitality)) {
		heal += perc_of(hp_max, SKILL_EFF0(SID_EndlessVitality));

		if (!sid)
			sid = SID_EndlessVitality;
	}

	if (SkillTester(unit, SID_MysticBoost)) {
		heal += SKILL_EFF0(SID_MysticBoost);

		if (!sid)
			sid = SID_MysticBoost;
	}

	if (heal > hp_max - hp_cur)
		heal = hp_max - hp_cur;

	return start_post_action_heal(unit, parent, heal, sid);
}

bool PostActionSkill_HealAfterActionTarget(ProcPtr parent)
{
	struct Unit *unit;
	int hp_cur, hp_max, heal;
	u16 sid = 0;

	/* Only a battle has a defender to heal; Lifetaker is not in here, it
	 * rewards the unit that defeated a foe. */
	if (gAction.id != ACTION_COMBAT)
		return false;

	unit = GetUnit(gAction.target);

	if (!UnitAvailable(unit) || UNIT_STONED(unit))
		return false;

	hp_cur = GetUnitCurrentHp(unit);
	hp_max = GetUnitMaxHp(unit);

	/* A unit killed in that battle is out of the picture. */
	if (hp_cur == 0)
		return false;

	heal = 0;

	if (SkillTester(unit, SID_EndlessVitality)) {
		heal += perc_of(hp_max, SKILL_EFF0(SID_EndlessVitality));
		sid = SID_EndlessVitality;
	}

	if (SkillTester(unit, SID_MysticBoost)) {
		heal += SKILL_EFF0(SID_MysticBoost);

		if (!sid)
			sid = SID_MysticBoost;
	}

	if (heal > hp_max - hp_cur)
		heal = hp_max - hp_cur;

	return start_post_action_heal(unit, parent, heal, sid);
}
