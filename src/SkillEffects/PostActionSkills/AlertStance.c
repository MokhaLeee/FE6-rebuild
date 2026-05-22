#include "prelude.h"
#include "unit.h"
#include "action.h"
#include "mu.h"
#include "masseffect.h"

#include "klib.h"
#include "skill-sys.h"
#include "skill-effects.h"
#include "constants/skills.h"

static void callback_anim(ProcPtr proc)
{
#if 0
	EndMu(getmu(gActiveUnit));
	StartStatusHealEffect(gActiveUnit, proc);
#endif
}

static void callback_refrain(ProcPtr proc)
{
#if 0
	struct MuProc *mu;

	HideUnitSprite(gActiveUnit);

	mu = GetUnitMu(gActiveUnit);
	if (!mu)
		mu = StartMu(gActiveUnit);

	SetMuDefaultFacing(mu);
	StartTemporaryLock(proc, 15);
#endif
}

static const struct ProcScr proc_alert_stance[] = {
	PROC_YIELD,
	PROC_CALL(callback_anim),
	PROC_YIELD,
	PROC_CALL(callback_refrain),
	PROC_END
};

bool PostActionSkill_AlertStance(ProcPtr parent)
{
	struct Unit *unit = gActiveUnit;

	if (!UnitAvailable(unit) || UNIT_STONED(unit))
		return false;

	if (gAction.id == ACTION_WAIT) {
		if (SkillTester(unit, SID_AlertStance)) {
			SpawnProcLocking(proc_alert_stance, parent);
			return true;
		}
	}

	return false;
}
