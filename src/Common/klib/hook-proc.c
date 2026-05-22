#include "prelude.h"
#include "proc.h"

#include "klib.h"

struct HookProc {
	PROC_HEADER;
	HookProcFunc_t const *hook_list;
	int index;
};

static void HookProc_Main(struct HookProc *proc)
{
	int ret;
	HookProcFunc_t it;

	while (1) {
		it = proc->hook_list[proc->index++];
		if (!it) {
			Proc_Goto(proc, 2);
			return;
		}

		ret = it(proc);
		if (ret != false)
			return;
	}
}

static const struct ProcScr ProcScr_HookCommon[] = {
	PROC_YIELD,

PROC_LABEL(1),
	PROC_CALL(HookProc_Main),
	PROC_YIELD,
	PROC_GOTO(1),

PROC_LABEL(2),
	PROC_YIELD,
	PROC_END
};

void SpawnHookProc(HookProcFunc_t const *hook_list, ProcPtr parent)
{
	struct HookProc *proc;

	proc = SpawnProcLocking(ProcScr_HookCommon, parent);
	proc->index = 0;
	proc->hook_list = hook_list;
}
