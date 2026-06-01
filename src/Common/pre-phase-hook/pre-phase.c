#include "prelude.h"
#include "proc.h"
#include "klib.h"

static const HookProcFunc_t PrePhaseFuncs[] = {
    NULL
};

void BMapMain_PrePhaseHook(ProcPtr proc)
{
    SpawnHookProc(PrePhaseFuncs, proc);
}
