#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "skill-sys.h"

/**
 * Per-round battle-hit extension data.
 *
 * gBattleHitExpa is part of the battle module (battle.c / battle.h), and
 * ClearBattleHits() resets it together with gBattleHits.
 *
 * Automatic registration is intentionally not implemented for now; callers
 * can use RegisterActorEfxSkill() / RegisterTargetEfxSkill() once the
 * registration policy is decided.
 */

static int GetEfxSkillPriority(const u16 sid)
{
	(void)sid;
	return 0;
}

void RegisterActorEfxSkill(int round, const u16 sid)
{
	u16 sid_old;

	if (round < 0 || round >= BATTLE_HIT_MAX)
		return;

	sid_old = gBattleHitExpa[round].sid_actor;

	if (GetEfxSkillPriority(sid_old) > GetEfxSkillPriority(sid))
		return;

	gBattleHitExpa[round].sid_actor = sid;
}

void RegisterTargetEfxSkill(int round, const u16 sid)
{
	u16 sid_old;

	if (round < 0 || round >= BATTLE_HIT_MAX)
		return;

	sid_old = gBattleHitExpa[round].sid_target;

	if (GetEfxSkillPriority(sid_old) > GetEfxSkillPriority(sid))
		return;

	gBattleHitExpa[round].sid_target = sid;
}

u16 GetActorEfxSkill(int round)
{
	if (round < 0 || round >= BATTLE_HIT_MAX)
		return 0;

	return gBattleHitExpa[round].sid_actor;
}

u16 GetTargetEfxSkill(int round)
{
	if (round < 0 || round >= BATTLE_HIT_MAX)
		return 0;

	return gBattleHitExpa[round].sid_target;
}
