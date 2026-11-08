#include "prelude.h"
#include "proc.h"
#include "banim.h"
#include "skill-sys.h"

#if defined(CONFIG_USE_DEBUG) && CONFIG_DEBUG_EFXSKILL
#include "constants/skills.h"
#endif

/**
 * C07 handler
 *
 * The kernel splits the old vanilla EkrSkill lock/unlock logic into this
 * handler.  FE6's BasRunScript() advances scrCur before dispatching a
 * command, so C07 has to rewind it manually and advance it again when the
 * handler is done.
 *
 * Reference:
 *   ~/fe8u-cskillsys-kernel/Kernel/Wizardry/Common/BanimHack/Source/C07.c
 */

struct ProcC07Handler {
	PROC_HEADER;
	struct Anim *anim;
};

static void LockSetAnimState(struct Anim *anim)
{
	struct Anim *anim1, *anim2;

	anim1 = gAnims[GetAnimPosition(anim) * 2];
	anim2 = gAnims[GetAnimPosition(anim) * 2 + 1];

	anim->flags3 |= ANIM_BIT3_BLOCKING;
	anim->flags |= BAS_BIT_FROZEN;

	if (anim1) {
		anim1->flags3 |= ANIM_BIT3_BLOCKING;
		anim1->flags |= BAS_BIT_FROZEN;
	}

	if (anim2) {
		/**
		 * Freeze the back layer, but do not set BLOCKING on it.
		 *
		 * FE6 back-layer scripts may be reset before they reach C07, in
		 * which case the eager BLOCKING flag would never be consumed by
		 * Banim_C07() and would stay set across rounds.
		 */
		anim2->flags |= BAS_BIT_FROZEN;
	}
}

static void UnlockAnimState(struct Anim *anim)
{
	struct Anim *anim1, *anim2;

	anim1 = gAnims[GetAnimPosition(anim) * 2];
	anim2 = gAnims[GetAnimPosition(anim) * 2 + 1];

	anim->flags3 |= ANIM_BIT3_BLOCKEND;
	anim->flags &= ~BAS_BIT_FROZEN;

	if (anim1) {
		anim1->flags3 |= ANIM_BIT3_BLOCKEND;
		anim1->flags &= ~BAS_BIT_FROZEN;
	}

	if (anim2) {
		anim2->flags3 |= ANIM_BIT3_BLOCKEND;
		anim2->flags &= ~BAS_BIT_FROZEN;
	}
}

static void C07Handler_Init(struct ProcC07Handler *proc)
{
	LockSetAnimState(proc->anim);
}

static void C07Handler_EkrSkill(struct ProcC07Handler *proc)
{
	NewEkrSkill(proc->anim);
}

static void C07Handler_End(struct ProcC07Handler *proc)
{
	UnlockAnimState(proc->anim);
}

static const struct ProcScr ProcScr_BanimC07Handler[] = {
	PROC_NAME_DEBUG("C07Handler"),
	PROC_YIELD,
	PROC_CALL(C07Handler_Init),

	/**
	 * Ekr-skill
	 */
	PROC_YIELD,
	PROC_CALL(C07Handler_EkrSkill),
	PROC_YIELD,
	PROC_WHILE(EkrSkillExists),

	PROC_YIELD,
	PROC_CALL(C07Handler_End),
	PROC_END
};

/**
 * EkrSkill
 *
 * Requests the attacker's EfxSkill, waits for it, then requests the
 * defender's EfxSkill and waits again.  The actual visual implementation
 * lives in EfxSkill.c (Phase 2).
 *
 * Reference:
 *   ~/fe8u-cskillsys-kernel/Kernel/Wizardry/Core/SkillSys/EfxSkill/EkrSkill.c
 */

struct ProcEkrSkill {
	PROC_HEADER;
	struct Anim *anim;
	u16 sid_atk;
	u16 sid_def;
};

static void EkrSkillOnInit(struct ProcEkrSkill *proc) {}

static void EkrSkillOnEnd(struct ProcEkrSkill *proc) {}

static void NewEfxSkillForAttacker(struct ProcEkrSkill *proc)
{
	if (SKILL_IS_VALID(proc->sid_atk))
		NewEfxSkill(proc->anim, proc->sid_atk);
}

static void NewEfxSkillForDefener(struct ProcEkrSkill *proc)
{
	struct Anim *anim_other;

	/* For now, far-far anim is not supported */
	if (gEkrDistanceType == EKR_DISTANCE_FARFAR)
		return;

	anim_other = GetAnimAnotherSide(proc->anim);
	if (anim_other && SKILL_IS_VALID(proc->sid_def))
		NewEfxSkill(anim_other, proc->sid_def);
}

static const struct ProcScr ProcScr_EkrSkill[] = {
	PROC_NAME_DEBUG("EkrSkill"),
	PROC_YIELD,
	PROC_CALL(EkrSkillOnInit),
	PROC_YIELD,
	PROC_CALL(NewEfxSkillForAttacker),
	PROC_WHILE(EfxSkillExists),
	PROC_YIELD,
	PROC_CALL(NewEfxSkillForDefener),
	PROC_WHILE(EfxSkillExists),
	PROC_YIELD,
	PROC_CALL(EkrSkillOnEnd),
	PROC_END
};

void NewEkrSkill(struct Anim *anim)
{
	int round;
	struct ProcEkrSkill *proc;

	proc = SpawnProc(ProcScr_EkrSkill, PROC_TREE_3);
	proc->anim = anim;

	round = anim->nextRoundId - 1;

	if (round >= 0) {
		proc->sid_atk = GetActorEfxSkill(round);
		proc->sid_def = GetTargetEfxSkill(round);
	} else {
		proc->sid_atk = 0;
		proc->sid_def = 0;
	}

#if defined(CONFIG_USE_DEBUG) && CONFIG_DEBUG_EFXSKILL
	proc->sid_atk = SID_PowBonus;
	proc->sid_def = SID_MagBonus;
#endif
}

bool EkrSkillExists(void)
{
	return Proc_Exists(ProcScr_EkrSkill);
}

/**
 * C07: skill animation trigger
 *
 * FE6's vanilla banim scripts already contain ANIMSCR_CMD 0x07 at the start
 * of most attack animations; until this port it was silently ignored.
 */
bool Banim_C07(struct Anim *anim)
{
	struct ProcC07Handler *proc;

	/* We need to block the script */
	anim->scrCur--;

	if (!(anim->flags3 & ANIM_BIT3_BLOCKING)) {
		anim->flags3 |= ANIM_BIT3_BLOCKING;

		if (GetAnimLayer(anim) == 0) {
			proc = SpawnProc(ProcScr_BanimC07Handler, PROC_TREE_3);
			proc->anim = anim;
		}
	}

	if (anim->flags3 & ANIM_BIT3_BLOCKING) {
		if (anim->flags3 & ANIM_BIT3_BLOCKEND) {
			anim->flags3 &= ~ANIM_BIT3_BLOCKING;
			anim->flags3 &= ~ANIM_BIT3_BLOCKEND;
			anim->scrCur++;
		}
	}

	return false;
}
