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

bool PostActionSkill_AlertStance(ProcPtr parent)
{
	struct Unit *unit = gActiveUnit;

	if (!UnitAvailable(unit) || UNIT_STONED(unit))
		return false;

	if (gAction.id == ACTION_WAIT) {
		if (SkillTester(unit, SID_AlertStance)) {
			NewMuSkillAnimOnActiveUnit(
				SID_AlertStance,
				parent,
				callback_anim,
				callback_refrain
			);
			return true;
		}
	}

	return false;
}
