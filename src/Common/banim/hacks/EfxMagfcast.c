#include "prelude.h"
#include "hardware.h"
#include "banim.h"

static void EfxMagfcastBG_Loop(struct ProcEfxBG *proc)
{
	i16 ret = EfxAdvanceFrameLut(
		(void *)&proc->timer,
		(void *)&proc->frame,
		(const i16 *)proc->frame_config
	);

	if (ret >= 0) {
		u16 **tsa1;
		u16 **tsa2;

		tsa1 = proc->tsal;
		tsa2 = proc->tsar;

		SpellFx_WriteBgMap(
			proc->anim,
			tsa1[ret],
			tsa2[ret]
		);

		return;
	}

	if (ret == -1) {
		SpellFx_ClearBG1();
		gEfxBgSemaphore--;
		SpellFx_ClearColorEffects();
		Proc_End(proc);
	}
}

static const struct ProcScr ProcScr_EfxMagfcastBG[] = {
	PROC_NAME_DEBUG("efxMagfcastBG"),
	PROC_REPEAT(EfxMagfcastBG_Loop),
	PROC_END,
};

static CONST_DATA u16 *tsa_lut1[] = {
	Tsa1_EfxMagfcastBG,
	Tsa2_EfxMagfcastBG,
	Tsa3_EfxMagfcastBG,
	Tsa4_EfxMagfcastBG,
	Tsa5_EfxMagfcastBG,
	Tsa6_EfxMagfcastBG,
};

static CONST_DATA u16 *tsa_lut2[] = {
	Tsa7_EfxMagfcastBG,
	Tsa8_EfxMagfcastBG,
	Tsa9_EfxMagfcastBG,
	Tsa10_EfxMagfcastBG,
	Tsa11_EfxMagfcastBG,
	Tsa12_EfxMagfcastBG,
	Tsa13_EfxMagfcastBG,
	Tsa14_EfxMagfcastBG,
	Tsa15_EfxMagfcastBG,
	Tsa16_EfxMagfcastBG,
	Tsa17_EfxMagfcastBG,
	Tsa18_EfxMagfcastBG,
	Tsa19_EfxMagfcastBG,
	Tsa20_EfxMagfcastBG,
	Tsa21_EfxMagfcastBG,
	Tsa22_EfxMagfcastBG,
};

void NewEfxMagfcastBG(struct Anim *anim, u32 type)
{
	static const u16 frame_conf1[] = {
		0, 3,
		1, 4,
		2, 8,
		3, 4,
		4, 3,

		-1
	};

	static const u16 frame_conf2[] = {
		5, 3,

		-1
	};

	static const u16 frame_conf3[] = {
		0, 7,
		1, 7,
		2, 8,
		3, 11,
		4, 2,
		5, 2,
		6, 2,
		7, 2,

		-1
	};

	static const u16 frame_conf4[] = {
		8, 3,
		9, 23,
		10, 4,
		11, 23,
		12, 4,
		13, 26,
		14, 4,
		15, 4,

		-1
	};

	struct ProcEfxBG *proc;

	gEfxBgSemaphore++;
	proc = SpawnProc(ProcScr_EfxMagfcastBG, PROC_TREE_3);
	proc->anim = anim;
	proc->timer = 0;
	proc->frame = 0;

	switch (type) {
	case 0:
		proc->frame_config = frame_conf1;
		proc->tsal = tsa_lut1;
		proc->tsar = tsa_lut1;
		break;

	case 1:
		proc->frame_config = frame_conf2;
		proc->tsal = tsa_lut1;
		proc->tsar = tsa_lut1;
		break;

	case 2:
		proc->frame_config = frame_conf3;
		proc->tsal = tsa_lut2;
		proc->tsar = tsa_lut2;
		break;

	case 3:
		proc->frame_config = frame_conf4;
		proc->tsal = tsa_lut2;
		proc->tsar = tsa_lut2;
		break;

	default:
		break;
	}

	SpellFx_RegisterBgGfx(Img_EfxMagfcastBG, 0x2000);
	SpellFx_RegisterBgPal(Pal_EfxMagfcastBG, 0x20);
	SpellFx_SetSomeColorEffect();

	if (gEkrDistanceType != EKR_DISTANCE_CLOSE) {
		if (GetAnimPosition(proc->anim) == POS_L)
			SetBgOffset(BG_1, 0x18, 0x0);
		else
			SetBgOffset(BG_1, 0xE8, 0x0);
	}
}

static void EfxMagfcast_Loop(struct ProcEfx *proc)
{
	if (++proc->timer == 0x14)
		Proc_Break(proc);
}

static const struct ProcScr ProcScr_EfxMagfcast[] = {
	PROC_NAME_DEBUG("efxMagfcast"),
	PROC_REPEAT(EfxMagfcast_Loop),
	PROC_END,
};

void NewEfxMagfcast(struct Anim *anim, int type)
{
	i16 banim_index;
	struct ProcEfx *proc;

	if (gEfxBgSemaphore != 0)
		return;

	SpellFx_ClearBG1Position();
	proc = SpawnProc(ProcScr_EfxMagfcast, PROC_TREE_3);

	proc->anim = anim;
	proc->timer = 0;

	banim_index = gBanimIdx[GetAnimPosition(anim)];

	/**
	 * todo: hardcoded banim index
	 */
	if (banim_index != 0x11) {
		if (banim_index <= 0x11) {
			switch (banim_index) {
			case 0xC:
			case 0xD:
				NewEfxMagfcastBG(proc->anim, type);
				return;
			}
		}
	}

	NewEfxMagfcastBG(proc->anim, type + 2);
}
