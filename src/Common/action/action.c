#include "prelude.h"
#include "action.h"
#include "unit.h"

typedef bool (*UnitActionFunc_t)(ProcPtr proc);

extern bool DoRescueAction(ProcPtr proc);
extern bool DoRescueDropAction(ProcPtr proc);
extern bool DoVisitAction(ProcPtr proc);
extern bool DoCombatAction(ProcPtr proc);
extern bool DoRefreshAction(ProcPtr proc);
extern bool DoTalkAction(ProcPtr proc);
extern bool DoSupportAction(ProcPtr proc);
extern bool DoStealAction(ProcPtr proc);
extern bool DoArenaAction(ProcPtr proc);
extern void DoItemAction(ProcPtr proc);

static bool local_item_action(ProcPtr proc)
{
	DoItemAction(proc);
	return false;
}

static bool local_staff_action(ProcPtr proc)
{
	DoItemAction(proc);
	return false;
}

static bool local_wait_action(ProcPtr proc)
{
	gActiveUnit->flags |= UNIT_FLAG_HAD_ACTION;
	return false;
}

static const UnitActionFunc_t UnitActionTable[ACTION_AMT] = {
	[ACTION_WAIT] = local_wait_action,
	[ACTION_TRAPPED] = local_wait_action,
	[ACTION_RESCUE] = DoRescueAction,
	[ACTION_DROP] = DoRescueDropAction,
	[ACTION_VISIT] = DoVisitAction,
	[ACTION_SEIZE] = DoVisitAction,
	[ACTION_COMBAT] = DoCombatAction,
	[ACTION_STAFF] = local_staff_action,
	[ACTION_REFRESH] = DoRefreshAction,
	[ACTION_TALK] = DoTalkAction,
	[ACTION_SUPPORT] = DoSupportAction,
	[ACTION_DOOR] = local_item_action,
	[ACTION_CHEST] = local_item_action,
	[ACTION_STEAL] = DoStealAction,
	[ACTION_ARENA] = DoArenaAction,
	[ACTION_USEITEM] = local_item_action,
};

bool DoAction(ProcPtr proc)
{
	gActiveUnit = GetUnit(gAction.instigator);

	if (UnitActionTable[gAction.id])
		return UnitActionTable[gAction.id](proc);

	return true;
}
