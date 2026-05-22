#include "prelude.h"
#include "unit.h"
#include "action.h"
#include "mu.h"
#include "unitsprite.h"
#include "util.h"
#include "masseffect.h"

#include "klib.h"
#include "skill-sys.h"
#include "skill-effects.h"
#include "constants/skills.h"

static void callback_anim(ProcPtr proc)
{
	struct MuProc *mu;

	mu = GetUnitMu(gActiveUnit);
	if (mu)
		EndMu(mu);

	StartStatusHealEffect(gActiveUnit, proc);
}

static void callback_refrain(ProcPtr proc)
{
	struct MuProc *mu;

	HideUnitSprite(gActiveUnit);

	mu = GetUnitMu(gActiveUnit);
	if (mu)
		EndMu(mu);

	mu = StartMu(gActiveUnit);
	SetMuDefaultFacing(mu);
	StartTemporaryLock(proc, 15);
}

static const struct ProcScr proc_alert_stance[] = {
	PROC_YIELD,
	PROC_CALL(MapAnim_CommonInit),
	PROC_YIELD,
	PROC_CALL(callback_anim),
	PROC_YIELD,
	PROC_CALL(callback_refrain),
	PROC_YIELD,
	PROC_CALL(MapAnim_CommonEnd),
	PROC_YIELD,
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
