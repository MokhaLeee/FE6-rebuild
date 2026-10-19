#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "action.h"
#include "bmio.h"

#include "demo-promotion.h"

static const struct ProcScr ProcScr_PromotionMain[] = {
	PROC_YIELD,
	PROC_END
};

static void promo_main_bmcallback(ProcPtr proc)
{
	UnlockBmDisplay();
	InitBmDisplay();
}

void StartBmPromotion(ProcPtr parent)
{
	struct ProcPromoMain *proc;

	proc = SpawnProcLocking(ProcScr_PromotionMain, parent);
	proc->unit = GetUnit(gAction.instigator);
	proc->pid = UNIT_PID(proc->unit);
	proc->item_slot = gAction.item_slot;

	LockBmDisplay();
	Proc_SetEndFunc(proc, promo_main_bmcallback);
}
