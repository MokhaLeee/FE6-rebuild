#include "prelude.h"

#include "klib.h"

static bool PostActionPadFunc(ProcPtr proc)
{
	return false;
}

const HookProcFunc_t gPostActionFuncs[] = {
    PostActionPadFunc,
    NULL
};

void CallPostActionHook(ProcPtr proc)
{
    SpawnHookProc(gPostActionFuncs, proc);
}
