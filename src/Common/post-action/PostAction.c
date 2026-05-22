#include "prelude.h"
#include "skill-sys.h"
#include "klib.h"

static bool PostActionPadFunc(ProcPtr proc)
{
	return false;
}

static bool PostAction_OnEnd(ProcPtr proc)
{
	return false;
}

const HookProcFunc_t gPostActionFuncs[] = {
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
