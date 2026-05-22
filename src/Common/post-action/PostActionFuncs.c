#include "prelude.h"
#include "skill-effects.h"
#include "skill-sys.h"
#include "post-action.h"

static bool PostActionPadFunc(ProcPtr proc)
{
	return false;
}

static bool PostAction_OnEnd(ProcPtr proc)
{
	return false;
}

const HookProcFunc_t gPostActionFuncs[] = {
	PostActionSkill_AlertStance,
	PostActionPadFunc,

	/* end */
	PostAction_ResetSkillList,
	PostAction_OnEnd,
	NULL
};
