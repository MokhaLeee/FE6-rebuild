#include "prelude.h"
#include "hardware.h"
#include "proc.h"
#include "oam.h"
#include "sprite.h"
#include "statscreen.h"
#include "constants/videoalloc_global.h"

#include "klib.h"

static u16 const Sprite_StatScreenPageName[] = {
	3,
	OAM0_SHAPE_32x16 + OAM0_AFFINE_ENABLE, OAM1_SIZE_32x16 + OAM1_X(0)  + OAM1_AFFINE_ID(8), OAM2_CHR(0),
	OAM0_SHAPE_32x16 + OAM0_AFFINE_ENABLE, OAM1_SIZE_32x16 + OAM1_X(32) + OAM1_AFFINE_ID(8), OAM2_CHR(4),
	OAM0_SHAPE_32x16 + OAM0_AFFINE_ENABLE, OAM1_SIZE_32x16 + OAM1_X(64) + OAM1_AFFINE_ID(8), OAM2_CHR(8),
};

static u16 const gStatScreenPageNameChrOffsetLut[] = {
	OAM2_CHR(0x14),
	OAM2_CHR(0x08),
	OAM2_CHR(0x54),
	OAM2_CHR(0x14),
};

void PutUpdateStatScreenPageName(int page_id)
{
	int color_num;

	PutSprite(4,
		105 + gStatScreenSt.x_disp_off,
		5 + gStatScreenSt.y_disp_off,
		Sprite_StatScreenPageName,
		OAM2_CHR(OBCHR_STATSCREEN_240) + OAM2_PAL(OBPAL_STATSCREEN_PAGENAME) + gStatScreenPageNameChrOffsetLut[page_id] + OAM2_LAYER(3));

	color_num = (GetGameTime() / 4) & 0x3F;

	CpuCopy16(
		gpPal_StatscreenPageNameFlashing + color_num,
		gPal + (0x10 + OBPAL_STATSCREEN_PAGENAME) * 0x10 + 4,
		sizeof(u16) * 11);

	EnablePalSync();
}

enum { STATSCREEN_PAGE_NAME_SCALE_STEPS = 6 };

void StatScreenPageName_Init(struct StatScreenSpritesProc *proc)
{
	SetObjAffineAuto(8, 0, 0x100, 0x100);
	proc->page_id = gStatScreenSt.page;
}

void StatScreenPageName_Main(struct StatScreenSpritesProc *proc)
{
	PutUpdateStatScreenPageName(proc->page_id);

	if (gStatScreenSt.page_slide_key_bit != 0) {
		proc->vertical_scale = STATSCREEN_PAGE_NAME_SCALE_STEPS - 1;
		Proc_Break(proc);
		return;
	}

	proc->page_id = gStatScreenSt.page;
}

void StatScreenPageName_CloseMain(struct StatScreenSpritesProc *proc)
{
	SetObjAffineAuto(8, 0, 0x100, k_udiv(proc->vertical_scale * 0x100, STATSCREEN_PAGE_NAME_SCALE_STEPS));
	PutUpdateStatScreenPageName(proc->page_id);

	proc->vertical_scale--;

	if (proc->vertical_scale == 0) {
		proc->vertical_scale = 1;
		Proc_Break(proc);
	}
}

void StatScreenPageName_OpenMain(struct StatScreenSpritesProc *proc)
{
	SetObjAffineAuto(8, 0, 0x100, k_udiv(proc->vertical_scale * 0x100, STATSCREEN_PAGE_NAME_SCALE_STEPS));
	PutUpdateStatScreenPageName(gStatScreenSt.page);

	proc->vertical_scale++;

	if (proc->vertical_scale > STATSCREEN_PAGE_NAME_SCALE_STEPS) {
		proc->page_id = gStatScreenSt.page;
		Proc_Break(proc);
	}
}

struct ProcScr CONST_DATA ProcScr_StatScreenPageName[] =
{
	PROC_CALL(StatScreenPageName_Init),

PROC_LABEL(0),
	PROC_REPEAT(StatScreenPageName_Main),

	PROC_REPEAT(StatScreenPageName_CloseMain),
	PROC_SLEEP(1),
	PROC_REPEAT(StatScreenPageName_OpenMain),

	PROC_GOTO(0),

	PROC_END,
};
