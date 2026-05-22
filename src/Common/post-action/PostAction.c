#include "prelude.h"
#include "skillsys.h"
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
