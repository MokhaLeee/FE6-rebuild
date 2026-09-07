#include "prelude.h"
#include "banim.h"

static void efxmagidummy_loop(struct ProcEfxMagic *proc)
{
	struct Anim *anim_other = GetAnimAnotherSide(proc->anim);
	int frame = EfxGetCamMovDuration();
	int time = proc->timer++;

	if (time == 0) {
		NewEfxSpellCast();
		NewEfxFarAttackWithDistance(proc->anim, -1);
	}

	if (time == (frame + 4)) {
		int hitted = CheckRoundMiss(GetAnimRoundType(anim_other));

		anim_other->flags3 |= ANIM_BIT3_C02_BLOCK_END | ANIM_BIT3_C01_BLOCK_END_INBATTLE;
		StartBattleAnimHitEffectsDefault(anim_other, hitted);

		if (hitted == EKR_HITTED)
			EfxPlayHittedSFX(anim_other);

		return;
	}

	if (time == (frame + 0x30)) {
		if (GetAnimNextRoundType(anim_other) != ANIM_ROUND_INVALID)
			anim_other->flags3 |= ANIM_BIT3_NEXT_ROUND_START;

		EndEfxSpellCastAsync();
		SpellFx_Finish();
		Proc_Break(proc);
		return;
	}
}

static const struct ProcScr ProcScr_efxmagidummy[] =
{
	PROC_REPEAT(efxmagidummy_loop),
	PROC_END,
};

void NewEfxDummyMagic(struct Anim *anim)
{
	struct ProcEfx *proc;

	SpellFx_Begin();
	SpellFx_ClearBG1Position();

	proc = SpawnProc(ProcScr_efxmagidummy, PROC_TREE_3);
	proc->anim = anim;
	proc->timer = 0;
}
