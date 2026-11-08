#include "prelude.h"
#include "proc.h"
#include "banim.h"
#include "battle.h"
#include "face.h"
#include "hardware.h"
#include "macro.h"
#include "efx-skill.h"

#include "constants/videoalloc_banim.h"

/**
 * Jester-style critical cut-in:
 * a horizontal electric band across the middle of the screen, with the
 * attacker's portrait over it. Started from C07 after the skill box.
 */

extern u16 const Img_CritCutinOpen0[];
extern u16 const Img_CritCutinOpen1[];
extern u16 const Img_CritCutinOpen2[];
extern u16 const Img_CritCutinLoop0[];
extern u16 const Img_CritCutinLoop1[];
extern u16 const Img_CritCutinLoop2[];
extern u16 const Img_CritCutinLoop3[];
extern u16 const Img_CritCutinLoop4[];
extern u16 const Img_CritCutinLoop5[];
extern u16 const Img_CritCutinClose0[];
extern u16 const Img_CritCutinClose1[];

extern u16 const Tsa_CritCutinOpen0[];
extern u16 const Tsa_CritCutinOpen1[];
extern u16 const Tsa_CritCutinOpen2[];
extern u16 const Tsa_CritCutinLoop0[];
extern u16 const Tsa_CritCutinLoop1[];
extern u16 const Tsa_CritCutinLoop2[];
extern u16 const Tsa_CritCutinLoop3[];
extern u16 const Tsa_CritCutinLoop4[];
extern u16 const Tsa_CritCutinLoop5[];
extern u16 const Tsa_CritCutinClose0[];
extern u16 const Tsa_CritCutinClose1[];

extern u16 const Pal_CritCutinOpen0[];
extern u16 const Pal_CritCutinOpen1[];
extern u16 const Pal_CritCutinOpen2[];
extern u16 const Pal_CritCutinLoop0[];
extern u16 const Pal_CritCutinLoop1[];
extern u16 const Pal_CritCutinLoop2[];
extern u16 const Pal_CritCutinLoop3[];
extern u16 const Pal_CritCutinLoop4[];
extern u16 const Pal_CritCutinLoop5[];
extern u16 const Pal_CritCutinClose0[];
extern u16 const Pal_CritCutinClose1[];

struct ProcCritCutin {
	PROC_HEADER;
	struct Anim *anim;
	struct FaceProc *face;
	s16 timer, frame;
	int clock;
	u16 hidden_anims;
	u16 face_pal[0x10];
	u8 face_slot;
	u16 old_face_palid;
};

/* open0..2, loop0..5 x4, close0..1; each frame lasts 2 ticks. */
static const s16 CritCutinFrames[] = {
	0, 2, 1, 2, 2, 2,
	3, 2, 4, 2, 5, 2, 6, 2, 7, 2, 8, 2,
	3, 2, 4, 2, 5, 2, 6, 2, 7, 2, 8, 2,
	3, 2, 4, 2, 5, 2, 6, 2, 7, 2, 8, 2,
	3, 2, 4, 2, 5, 2, 6, 2, 7, 2, 8, 2,
	9, 2, 10, 2,
	-1
};

static u16 const *const CritCutinImgs[] = {
	Img_CritCutinOpen0, Img_CritCutinOpen1, Img_CritCutinOpen2,
	Img_CritCutinLoop0, Img_CritCutinLoop1, Img_CritCutinLoop2,
	Img_CritCutinLoop3, Img_CritCutinLoop4, Img_CritCutinLoop5,
	Img_CritCutinClose0, Img_CritCutinClose1,
};

static u16 const *const CritCutinTsas[] = {
	Tsa_CritCutinOpen0, Tsa_CritCutinOpen1, Tsa_CritCutinOpen2,
	Tsa_CritCutinLoop0, Tsa_CritCutinLoop1, Tsa_CritCutinLoop2,
	Tsa_CritCutinLoop3, Tsa_CritCutinLoop4, Tsa_CritCutinLoop5,
	Tsa_CritCutinClose0, Tsa_CritCutinClose1,
};

static u16 const *const CritCutinPals[] = {
	Pal_CritCutinOpen0, Pal_CritCutinOpen1, Pal_CritCutinOpen2,
	Pal_CritCutinLoop0, Pal_CritCutinLoop1, Pal_CritCutinLoop2,
	Pal_CritCutinLoop3, Pal_CritCutinLoop4, Pal_CritCutinLoop5,
	Pal_CritCutinClose0, Pal_CritCutinClose1,
};

static const struct EfxAnimConf EfxCritCutin = {
	CritCutinFrames,
	CritCutinTsas,
	CritCutinImgs,
	CritCutinPals,
	0,
};

static int CritCutinPortrait(struct Anim *anim)
{
	int round = anim->nextRoundId - 1;
	const struct BattleUnit *bu;

	if (round < 0 || round >= BATTLE_HIT_MAX)
		return 0;

#if !CONFIG_DEBUG_CRIT_CUTIN
	if (!(gBattleHits[round].attributes & BATTLE_HIT_ATTR_CRIT))
		return 0;
#endif

	bu = (GetAnimPosition(anim) == POS_L) ? gpEkrBattleUnitLeft : gpEkrBattleUnitRight;
	return bu->unit.pinfo ? bu->unit.pinfo->fid : 0;
}

static void CritCutin_HideAnims(struct ProcCritCutin *proc)
{
	int i;

	proc->hidden_anims = 0;
	for (i = 0; i < 4; i++) {
		if (!gAnims[i] || (gAnims[i]->flags & BAS_BIT_HIDDEN))
			continue;

		gAnims[i]->flags |= BAS_BIT_HIDDEN;
		proc->hidden_anims |= 1 << i;
	}
}

static void CritCutin_ShowAnims(struct ProcCritCutin *proc)
{
	int i;

	for (i = 0; i < 4; i++)
		if (proc->hidden_anims & (1 << i))
			gAnims[i]->flags &= ~BAS_BIT_HIDDEN;
}

static void CritCutin_StartFace(struct ProcCritCutin *proc)
{
	int slot, disp, x, fid;

	fid = CritCutinPortrait(proc->anim);
	if (!fid)
		return;

	for (slot = 0; slot < FACE_SLOT_COUNT; slot++)
		if (!gFaces[slot])
			break;

	if (slot == FACE_SLOT_COUNT)
		return;

	x = proc->anim->xPosition;
	disp = FACE_DISP_KIND(FACE_96x80) | FACE_DISP_HLAYER(FACE_HLAYER_0);

	if (GetAnimPosition(proc->anim) == POS_L) {
		disp |= FACE_DISP_FLIPPED;
		x -= 8;
	} else {
		x += 8;
	}

	if (x < 56)
		x = 56;
	if (x > 184)
		x = 184;

	proc->face_slot = slot;
	proc->old_face_palid = gFaceConfig[slot].palid;
	gFaceConfig[slot].palid = OBPAL_EFX_FACE;
	proc->face = StartFace(slot, fid, x, 15, disp);
	if (!proc->face)
		gFaceConfig[slot].palid = proc->old_face_palid;
}

static void CritCutin_OnInit(struct ProcCritCutin *proc)
{
	proc->timer = 0;
	proc->frame = 0;
	proc->clock = 0;
	proc->face = NULL;

	SpellFx_ClearBG1Position();
	SpellFx_ClearColorEffects();
	CritCutin_HideAnims(proc);

	CpuCopy16(
		gPal + 0x100 + 0x10 * OBPAL_EFX_FACE,
		proc->face_pal,
		sizeof(proc->face_pal));

	SpellFx_Begin();
	gEfxBgSemaphore++;
}

static void CritCutin_DrawBand(struct ProcCritCutin *proc, int frame)
{
	SpellFx_WriteBgMap(proc->anim, EfxCritCutin.tsas[frame], EfxCritCutin.tsas[frame]);
	SpellFx_RegisterBgGfx(EfxCritCutin.imgs[frame], 0x2000);
	SpellFx_RegisterBgPal(EfxCritCutin.pals[frame], 0x20);
}

static void CritCutin_Loop(struct ProcCritCutin *proc)
{
	int ret = EfxAdvanceFrameLut(&proc->timer, &proc->frame, CritCutinFrames);

	if (ret >= 0) {
		int i;

		CritCutin_DrawBand(proc, ret);

		for (i = 0; i < 0x14; i++) {
			gBg1Tm[0x20 * i + 0x1E] = gBg1Tm[0];
			gBg1Tm[0x20 * i + 0x1F] = gBg1Tm[0];
		}
		EnableBgSync(BG1_SYNC_BIT);
		SetBgOffset(BG_1, 0, 10);
	}

	if (proc->clock == 6)
		CritCutin_StartFace(proc);

	proc->clock++;

	if (ret == -1)
		Proc_Break(proc);
}

static void CritCutin_OnEnd(struct ProcCritCutin *proc)
{
	if (proc->face) {
		EndFace(proc->face);
		gFaceConfig[proc->face_slot].palid = proc->old_face_palid;
	}

	CpuCopy16(
		proc->face_pal,
		gPal + 0x100 + 0x10 * OBPAL_EFX_FACE,
		sizeof(proc->face_pal));
	EnablePalSync();

	SpellFx_ClearBG1();
	SpellFx_ClearBG1Position();
	SpellFx_ClearColorEffects();
	gEfxBgSemaphore--;
	SpellFx_Finish();

	CritCutin_ShowAnims(proc);
}

static const struct ProcScr ProcScr_CritCutin[] = {
	PROC_NAME_DEBUG("CritCutin"),
	PROC_YIELD,
	PROC_CALL(CritCutin_OnInit),
	PROC_REPEAT(CritCutin_Loop),
	PROC_CALL(CritCutin_OnEnd),
	PROC_END
};

void NewCritCutin(struct Anim *anim)
{
	struct ProcCritCutin *proc;

#if !defined(CONFIG_CRIT_CUTIN) || !CONFIG_CRIT_CUTIN
	return;
#endif

	if (!anim)
		return;

	if (gEkrDistanceType == EKR_DISTANCE_FARFAR)
		return;

	if (CritCutinPortrait(anim) == 0)
		return;

	proc = SpawnProc(ProcScr_CritCutin, PROC_TREE_3);
	if (!proc)
		return;

	proc->anim = anim;
}

bool CritCutinExists(void)
{
	return Proc_Exists(ProcScr_CritCutin);
}
