#include "prelude.h"
#include "skill-sys.h"
#include "klib.h"
#include "post-action.h"

void CallPostActionHook(ProcPtr proc)
{
	SpawnHookProc(gPostActionFuncs, proc);
}
