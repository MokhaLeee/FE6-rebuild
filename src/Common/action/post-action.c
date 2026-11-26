#include "prelude.h"
#include "skill-sys.h"
#include "klib.h"

#include "skill-effects.h"

static bool PostActionPadFunc(ProcPtr proc)
{
	return false;
}

static bool PostAction_OnEnd(ProcPtr proc)
{
	return false;
}

static const HookProcFunc_t gPostActionFuncs[] = {
	PostActionSkill_AlertStance,
	PostActionSkill_HealAfterAction,
	PostActionPadFunc,

	/* end */
	PostAction_ResetSkillList,
	PostAction_OnEnd,
	NULL
};


void CallPostActionHook(ProcPtr proc)
{
	SpawnHookProc(gPostActionFuncs, proc);
}
