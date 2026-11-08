#include "prelude.h"
#include "proc.h"
#include "banim.h"
#include "hardware.h"
#include "efx-skill.h"

/**
 * EfxSkill BG animation
 *
 * Ported from the kernel's EfxSkill.c, which is itself a generalized version
 * of FE8 vanilla src/banim-efxskill.c.  FE6 uses the same SpellFx_* helpers,
 * so the only differences are the FE6 Anim field names and the 32-wide
 * gBg1Tm tilemap buffer.
 */

struct ProcEfxSkill {
	PROC_HEADER;
	i16 timer;
	i16 frame;
	u16 sid;
	struct Anim *anim;
	u16 const *const *imgs;
	u16 const *const *pals;
	u16 const *const *tsas;
	const s16 *frames;
};

static void EfxSkillOnEnd(struct ProcEfxSkill *proc)
{
	SpellFx_ClearBG1();
	SpellFx_ClearBG1Position();
	SpellFx_ClearColorEffects();
	gEfxBgSemaphore--;
	SpellFx_Finish();
}

static void EfxSkillMain(struct ProcEfxSkill *proc)
{
	int i;
	int ret = EfxAdvanceFrameLut(&proc->timer, &proc->frame, proc->frames);

	if (ret >= 0) {
		SpellFx_WriteBgMap(proc->anim, proc->tsas[ret], proc->tsas[ret]);
		SpellFx_RegisterBgGfx(proc->imgs[ret], 0x2000);
		SpellFx_RegisterBgPal(proc->pals[ret], 0x20);

		for (i = 0; i < 0x14; i++) {
			gBg1Tm[0x20 * i + 0x1E] = 0;
			gBg1Tm[0x20 * i + 0x1F] = 0;
		}
		EnableBgSync(BG1_SYNC_BIT);

		SpellFx_SetSomeColorEffect();
	}

	if (ret == -1)
		Proc_Break(proc);
}

static const struct ProcScr ProcScr_EfxSkill[] = {
	PROC_NAME_DEBUG("EfxSkill"),
	PROC_ONEND(EfxSkillOnEnd),
	PROC_YIELD,
	PROC_REPEAT(EfxSkillMain),
	PROC_END
};

void NewEfxSkill(struct Anim *anim, int sid)
{
	struct ProcEfxSkill *proc;
	const struct EfxAnimConf *conf;
	u16 sfx;

	if (!anim)
		return;

	if (!SKILL_IS_VALID(sid) || sid >= MAX_SKILL_NUM)
		return;

	conf = gpEfxSkillAnims[sid];
	if (!conf)
		conf = &EfxSkillVanilla;

	if (gEfxBgSemaphore != 0)
		return;

	SpellFx_Begin();
	gEfxBgSemaphore++;

	proc = SpawnProc(ProcScr_EfxSkill, PROC_TREE_3);
	if (!proc) {
		gEfxBgSemaphore--;
		SpellFx_Finish();
		return;
	}

	proc->anim = anim;
	proc->sid = sid;
	proc->timer = 0;
	proc->frame = 0;
	proc->frames = conf->frames;
	proc->tsas = conf->tsas;
	proc->imgs = conf->imgs;
	proc->pals = conf->pals;

	sfx = conf->sfx;
	if (sfx)
		PlaySFX(sfx, 0x100, anim->xPosition, 1);

	if (gEkrDistanceType != EKR_DISTANCE_CLOSE) {
		if (GetAnimPosition(anim) == POS_L)
			SetBgOffset(BG_1, 0x18, 0);
		else
			SetBgOffset(BG_1, 0xE8, 0);
	}
}

bool EfxSkillExists(void)
{
	return Proc_Exists(ProcScr_EfxSkill);
}
