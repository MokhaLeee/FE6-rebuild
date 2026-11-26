#include "prelude.h"
#include "unit.h"
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
 * - Lifetaker: heal 25% of max hp after the unit acts.  Upstream also gates
 *   this on having defeated an enemy during the action; that flag is not
 *   tracked here yet, so it heals after every action.
 * - Endless Vitality: heal 20% of max hp after the unit acts.
 *
 * The animation is the self-contained map heal (map-anim.h), so this needs no
 * battle unit snapshot.
 */
bool PostActionSkill_HealAfterAction(ProcPtr parent)
{
	struct Unit *unit = gActiveUnit;
	int hp_cur, hp_max, heal;

	if (!UnitAvailable(unit) || UNIT_STONED(unit))
		return false;

	hp_cur = GetUnitCurrentHp(unit);
	hp_max = GetUnitMaxHp(unit);

	heal = 0;

	if (SkillTester(unit, SID_Lifetaker))
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
