#include "statscreen.h"

#include <stdlib.h>

#include "armfunc.h"
#include "hardware.h"
#include "oam.h"
#include "sound.h"
#include "proc.h"
#include "icon.h"
#include "sprite.h"
#include "text.h"
#include "face.h"
#include "msg.h"
#include "util.h"
#include "item.h"
#include "unit.h"
#include "bm.h"
#include "faction.h"
#include "unitsprite.h"
#include "battle.h"
#include "bmio.h"
#include "support.h"
#include "ui.h"
#include "mu.h"
#include "helpbox.h"
#include "systemlabels.h"
#include "save_stats.h"

#include "constants/videoalloc_global.h"
#include "constants/songs.h"
#include "constants/msg.h"

#include "klib.h"

EWRAM_DATA struct StatScreenInfo gStatScreenInfo;
EWRAM_OVERLAY(0) struct StatScreenSt gStatScreenSt;

// EWRAM_OVERLAY(0) u16 gUiTmScratchC[0x240];
// EWRAM_OVERLAY(0) u16 gUiTmScratchB[0x280];
// EWRAM_OVERLAY(0) u16 gUiTmScratchA[0x280];

int GetLastStatScreenUnitId(void)
{
	return gStatScreenInfo.unit_id;
}

void SetStatScreenLastUnitId(int unit_id)
{
	gStatScreenInfo.unit_id = unit_id;
}

void SetStatScreenExcludedUnitFlags(int flags)
{
	gStatScreenInfo.excluded_unit_flags = flags;
}

struct TextInitInfo CONST_DATA gStatScreenTextList[] = {
	{ gStatScreenSt.text + STATSCREEN_TEXT_PNAME, 7 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_JNAME, 7 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_UNUSED, 3 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_POW, 5 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_MAG, 5 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_SKL, 5 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_SPD, 5 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_LCK, 5 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_DEF, 5 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_RES, 5 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_MOV, 5 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_CON, 5 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_AID, 5 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_TALK, 9 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_AFFIN, 7 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_TOTAL, 5 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_STAT, 9 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_ITEM_A, 7 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_ITEM_B, 7 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_ITEM_C, 7 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_ITEM_D, 7 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_ITEM_E, 7 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_EQUIPRANGE, 6 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_EQUIPATTACK, 3 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_EQUIPHIT, 3 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_EQUIPCRIT, 3 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_EQUIPAVOID, 3 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_WEXP_A, 2 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_WEXP_B, 2 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_WEXP_C, 2 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_WEXP_D, 2 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_SUPPORT_A, 7 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_SUPPORT_B, 7 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_SUPPORT_C, 7 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_SUPPORT_D, 7 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_SUPPORT_E, 7 },
	{ gStatScreenSt.text + STATSCREEN_TEXT_BWL, 16 },

	{ 0 }, // end!
};

void InitStatScreenText(void)
{
	InitTextList(gStatScreenTextList);
}

void PutStatScreenText(struct StatScreenTextInfo const * list)
{
	while (list->text != NULL) {
		if (list->str != NULL)
			PutDrawText(list->text, list->tm, list->color, list->x_offset, 0, list->str);
		else
			PutText(list->text, list->tm);

		list++;
	}
}

struct Unit *FindNextStatScreenUnit(struct Unit *current_unit, int iter_step)
{
	int faction = UNIT_FACTION(current_unit);
	int i = current_unit->id;

	struct Unit *unit;

	while (TRUE)
	{
		i = (i + iter_step) & 0x3F;

		unit = GetUnit(faction + i);

		if (unit == NULL)
			continue;

		if (unit->pinfo == NULL)
			continue;

		STATIC_ASSERT(sizeof(gStatScreenInfo.excluded_unit_flags) == sizeof(unit->flags));

		if ((unit->flags & gStatScreenInfo.excluded_unit_flags) != 0)
			continue;

		return unit;
	}
}

i8 CONST_DATA gStatScreenPageSlideOffsetLut[] =
{
	// transition page out
	-4, -7, -10, -12, -14,

	INT8_MAX, // draw new page

	// transition page in
	13, 9, 7, 5, 3, 2, 1, 0,

	INT8_MIN, // end
};

void StatScreenPageSlide_Loop(struct StatScreenPageSlideProc *proc)
{
	int off;
	int len, dst_offset, src_offset;

	// clear page frame on bg0, bg1, bg2
	TmFillRect(gBg0Tm + TM_OFFSET(PAGE_FRAME_SCREEN_X, PAGE_FRAME_SCREEN_Y), 18, 18, 0);
	TmFillRect(gBg1Tm + TM_OFFSET(PAGE_FRAME_SCREEN_X, PAGE_FRAME_SCREEN_Y), 18, 18, 0);
	TmFillRect(gBg2Tm + TM_OFFSET(PAGE_FRAME_SCREEN_X, PAGE_FRAME_SCREEN_Y), 18, 18, 0);

	off = gStatScreenPageSlideOffsetLut[proc->clock];

	if (off == INT8_MAX)
	{
		// INT8_MAX offset means switch to displaying next page

		PutStatScreenPage(proc->new_page);

		proc->clock++;
		off = gStatScreenPageSlideOffsetLut[proc->clock];
	}

	// compute len, dst_offset and src_offset
	// len is the length of the display bit of the page
	// dst_offset is the x offset to which to copy the page to
	// src_offset is the x offset from which to copy the page from

	if (proc->key_bit & KEY_DPAD_LEFT)
		off = -off;

	len = 18 - abs(off);

	if (off < 0)
	{
		dst_offset = 0;
		src_offset = -off;
	}
	else
	{
		dst_offset = off;
		src_offset = 0;
	}

	TmCopyRect(gUiTmScratchA + src_offset,
		gBg0Tm + dst_offset + TM_OFFSET(PAGE_FRAME_SCREEN_X, PAGE_FRAME_SCREEN_Y),
		len, 18);

	TmCopyRect(gUiTmScratchB + src_offset,
		gBg1Tm + dst_offset + TM_OFFSET(PAGE_FRAME_SCREEN_X, PAGE_FRAME_SCREEN_Y),
		len, 18);

	TmCopyRect(gUiTmScratchC + src_offset,
		gBg2Tm + dst_offset + TM_OFFSET(PAGE_FRAME_SCREEN_X, PAGE_FRAME_SCREEN_Y),
		len, 18);

	EnableBgSync(BG0_SYNC_BIT + BG1_SYNC_BIT + BG2_SYNC_BIT);

	proc->clock++;
	off = gStatScreenPageSlideOffsetLut[proc->clock];

	if (off == INT8_MIN)
		Proc_Break(proc);
}

void StatScreenPageSlide_End(struct StatScreenPageSlideProc *proc)
{
	gStatScreenSt.is_transitioning = FALSE;
}

struct ProcScr CONST_DATA ProcScr_StatScreenPageSlide[] =
{
	PROC_REPEAT(StatScreenPageSlide_Loop),
	PROC_CALL(StatScreenPageSlide_End),
	PROC_END,
};

void StartStatScreenPageSlide(fu16 key_bit, int new_page, ProcPtr parent)
{
	struct StatScreenPageSlideProc *proc;

	if (FindProc(ProcScr_StatScreenPageSlide) != NULL)
		return;

	PlaySe(SONG_6F);

	proc = SpawnProcLocking(ProcScr_StatScreenPageSlide, parent);

	proc->clock = 0;
	proc->new_page = new_page;
	proc->key_bit = key_bit;

	gStatScreenSt.page_slide_key_bit = key_bit;
	gStatScreenSt.help = NULL;
	gStatScreenSt.is_transitioning = TRUE;
}

void StatScreenUnitSlide_FadeOutInit(struct StatScreenUnitSlideProc *proc)
{
	gStatScreenSt.is_transitioning = TRUE;

	proc->clock = 4;

	// TODO: macro?
	gDispIo.bg0_ct.priority = 1;
	gDispIo.bg1_ct.priority = 3;
	gDispIo.bg2_ct.priority = 2;
	gDispIo.bg3_ct.priority = 0;

	SetBlendTargetA(0, 0, 0, 1, 0);
	SetBlendTargetB(1, 1, 1, 0, 1); SetBlendBackdropB(0);

	if (proc->direction > 0)
	{
		proc->y_disp_init = 0;
		proc->y_disp_fini = -60;
	}
	else
	{
		proc->y_disp_init = 0;
		proc->y_disp_fini = +60;
	}
}

void StatScreenUnitSlide_FadeOutLoop(struct StatScreenUnitSlideProc *proc)
{
	enum { CLOCK_STEP = 3, CLOCK_END = 0x10 };

	SetBlendAlpha(proc->clock * 0x10 / CLOCK_END, (CLOCK_END - proc->clock) * 0x10 / CLOCK_END);

	SetMuScreenPosition(gStatScreenSt.mu, 80, 138 + gStatScreenSt.y_disp_off);

	gStatScreenSt.y_disp_off = Interpolate(INTERPOLATE_CUBIC, proc->y_disp_init, proc->y_disp_fini, proc->clock, CLOCK_END);

	proc->clock += CLOCK_STEP;

	if (proc->clock > CLOCK_END)
		Proc_Break(proc);
}

void StatScreenUnitSlide_FadeInInit(struct StatScreenUnitSlideProc *proc)
{
	proc->clock = 1;

	// TODO: macro?
	gDispIo.bg0_ct.priority = 1;
	gDispIo.bg1_ct.priority = 3;
	gDispIo.bg2_ct.priority = 2;
	gDispIo.bg3_ct.priority = 0;

	SetBlendTargetA(0, 0, 0, 1, 0);
	SetBlendTargetB(1, 1, 1, 0, 1);

	if (proc->direction > 0)
	{
		proc->y_disp_init = +60;
		proc->y_disp_fini = 0;
	}
	else
	{
		proc->y_disp_init = -60;
		proc->y_disp_fini = 0;
	}
}

void StatScreenUnitSlide_FadeInLoop(struct StatScreenUnitSlideProc *proc)
{
	enum { CLOCK_STEP = 3, CLOCK_END = 0x10 };

	SetBlendAlpha((CLOCK_END - proc->clock) * 0x10 / CLOCK_END, proc->clock * 0x10 / CLOCK_END);

	SetMuScreenPosition(gStatScreenSt.mu, 80, 138 + gStatScreenSt.y_disp_off);

	gStatScreenSt.y_disp_off = Interpolate(INTERPOLATE_RCUBIC, proc->y_disp_init, proc->y_disp_fini, proc->clock, CLOCK_END);

	proc->clock += CLOCK_STEP;

	if (proc->clock >= CLOCK_END)
		Proc_Break(proc);
}

void StatScreenUnitSlide_ChangeUnit(struct StatScreenUnitSlideProc *proc)
{
	gStatScreenSt.unit = GetUnit(proc->new_unit_id);
	StatScreen_InitUnit(NULL);
	Proc_Break(proc);
}

void StatScreenUnitSlide_End(struct StatScreenUnitSlideProc *proc)
{
	if (gStatScreenSt.mu != NULL)
	{
		SetMuScreenPosition(gStatScreenSt.mu, 80, 138);
	}

	// TODO: macro?
	gDispIo.bg0_ct.priority = 1;
	gDispIo.bg1_ct.priority = 3;
	gDispIo.bg2_ct.priority = 2;
	gDispIo.bg3_ct.priority = 3;

	SetBlendTargetA(0, 0, 1, 0, 0);
	SetBlendTargetB(0, 0, 0, 1, 0);
	SetBlendAlpha(6, 8);

	gStatScreenSt.is_transitioning = FALSE;
}

struct ProcScr CONST_DATA ProcScr_StatScreenUnitSlide[] =
{
	PROC_YIELD,
	PROC_CALL(StatScreenUnitSlide_FadeOutInit),
	PROC_REPEAT(StatScreenUnitSlide_FadeOutLoop),
	PROC_CALL(StatScreenUnitSlide_ChangeUnit),
	PROC_CALL(StatScreenUnitSlide_FadeInInit),
	PROC_REPEAT(StatScreenUnitSlide_FadeInLoop),
	PROC_CALL(StatScreenUnitSlide_End),
	PROC_END,
};

void StartStatScreenUnitSlide(struct Unit *unit, int direction, ProcPtr parent)
{
	struct StatScreenUnitSlideProc *proc;

	proc = SpawnProcLocking(ProcScr_StatScreenUnitSlide, parent);

	proc->new_unit_id = unit->id;
	proc->direction = direction;

	PlaySe(SONG_C8);
}

void StatScreenSprites_Init(struct StatScreenSpritesProc *proc)
{
	proc->x_left = 101;
	proc->x_right = 198;
	proc->clock_right = 0;
	proc->clock_left = 0;
	proc->anim_speed_right = 4;
	proc->anim_speed_left = 4;
}

void StatScreenSprites_BumpCheck(struct StatScreenSpritesProc *proc)
{
	if (gStatScreenSt.page_slide_key_bit & KEY_DPAD_LEFT) {
		proc->anim_speed_left = 31;
		proc->x_left = 101 - 6;
	}

	if (gStatScreenSt.page_slide_key_bit & KEY_DPAD_RIGHT) {
		proc->anim_speed_right = 31;
		proc->x_right = 198 + 6;
	}

	gStatScreenSt.page_slide_key_bit = 0;
}

void StatScreenSprites_PutArrows(struct StatScreenSpritesProc *proc)
{
	int base_oam2 = OAM2_CHR(OBCHR_STATSCREEN_240) + OAM2_PAL(OBPAL_STATSCREEN_SPRITES) + OAM2_LAYER(3);

	proc->clock_left += proc->anim_speed_left;
	proc->clock_right += proc->anim_speed_right;

	if (proc->anim_speed_left > 4)
		proc->anim_speed_left--;

	if (proc->anim_speed_right > 4)
		proc->anim_speed_right--;

	if ((GetGameTime() % 4) == 0)
	{
		if (proc->x_left < 101)
			proc->x_left++;

		if (proc->x_right > 198)
			proc->x_right--;
	}

	PutSprite(
		4, gStatScreenSt.x_disp_off + proc->x_left,
		gStatScreenSt.y_disp_off + 6, Sprite_8x16,
		base_oam2 + 0x4A + k_umod(proc->clock_left >> 5, 6));

	PutSprite(
		4, gStatScreenSt.x_disp_off + proc->x_right,
		gStatScreenSt.y_disp_off + 6, Sprite_8x16_HFlipped,
		base_oam2 + 0x4A + k_umod(proc->clock_right >> 5, 6));
}

void StatScreenSprites_PutNumberLabel(struct StatScreenSpritesProc *proc)
{
	enum {
		PAGENUM_X = 214,
		PAGENUM_Y = 12
	};

	// page amt
	PutSprite(
		2, gStatScreenSt.x_disp_off + PAGENUM_X + 13,
		gStatScreenSt.y_disp_off + PAGENUM_Y, Sprite_8x8,
		OAM2_CHR(OBCHR_STATSCREEN_240 + 0x64) + OAM2_PAL(OBPAL_STATSCREEN_SPRITES) +
			OAM2_LAYER(3) + gStatScreenSt.page_count);

	// '/'
	PutSprite(
		2, gStatScreenSt.x_disp_off + PAGENUM_X + 7,
		gStatScreenSt.y_disp_off + PAGENUM_Y, Sprite_8x8,
		OAM2_CHR(OBCHR_STATSCREEN_240 + 0x05) + OAM2_PAL(OBPAL_STATSCREEN_SPRITES) +
			OAM2_LAYER(3));

	// page num
	PutSprite(
		2, gStatScreenSt.x_disp_off + PAGENUM_X,
		gStatScreenSt.y_disp_off + PAGENUM_Y, Sprite_8x8,
		OAM2_CHR(OBCHR_STATSCREEN_240 + 0x64) + OAM2_PAL(OBPAL_STATSCREEN_SPRITES) +
			OAM2_LAYER(3) + gStatScreenSt.page + 1);
}

u16 CONST_DATA Sprite_StatScreenMuAreaBackground[] =
{
	12,
	OAM0_SHAPE_32x8  + OAM0_Y(128) + OAM0_BLEND, OAM1_SIZE_32x8  + OAM1_X(8), OAM2_CHR(0x45),
	OAM0_SHAPE_32x8  + OAM0_Y(128) + OAM0_BLEND, OAM1_SIZE_32x8  + OAM1_X(32), OAM2_CHR(0x46),
	OAM0_SHAPE_32x8  + OAM0_Y(144) + OAM0_BLEND, OAM1_SIZE_32x8  + OAM1_X(8), OAM2_CHR(0x45),
	OAM0_SHAPE_32x8  + OAM0_Y(144) + OAM0_BLEND, OAM1_SIZE_32x8  + OAM1_X(32), OAM2_CHR(0x46),
	OAM0_SHAPE_32x32 + OAM0_Y(104) + OAM0_BLEND, OAM1_SIZE_32x32, 0,
	OAM0_SHAPE_32x32 + OAM0_Y(104) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(32), 0,
	OAM0_SHAPE_32x32 + OAM0_Y(104) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(64), 0,
	OAM0_SHAPE_32x32 + OAM0_Y(120) + OAM0_BLEND, OAM1_SIZE_32x32, 0,
	OAM0_SHAPE_32x32 + OAM0_Y(120) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(32), 0,
	OAM0_SHAPE_32x32 + OAM0_Y(120) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(64), 0,
	OAM0_SHAPE_8x32  + OAM0_Y(104) + OAM0_BLEND, OAM1_SIZE_8x32  + OAM1_X(96), OAM2_CHR(0x4),
	OAM0_SHAPE_8x32  + OAM0_Y(120) + OAM0_BLEND, OAM1_SIZE_8x32  + OAM1_X(96) + OAM1_VFLIP, OAM2_CHR(0x4),
};

void StatScreenSprites_PutMuAreaSprites(struct StatScreenSpritesProc *proc)
{
	PutSprite(12,
		gStatScreenSt.x_disp_off,
		gStatScreenSt.y_disp_off,
		Sprite_StatScreenMuAreaBackground,
		OAM2_CHR(OBCHR_STATSCREEN_240 + 0x00) + OAM2_PAL(OBPAL_STATSCREEN_WINDOWFRAME) + OAM2_LAYER(3));

	PutSprite(11,
		gStatScreenSt.x_disp_off + 64,
		gStatScreenSt.y_disp_off + 131,
		Sprite_32x16,
		OAM2_CHR(OBCHR_STATSCREEN_240 + 0x50) + OAM2_PAL(OBPAL_STATSCREEN_SPRITES) + OAM2_LAYER(3));
}

struct ProcScr CONST_DATA ProcScr_StatScreenSprites[] =
{
	PROC_CALL(StatScreenSprites_Init),

PROC_LABEL(0),
	PROC_YIELD,

	PROC_CALL(StatScreenSprites_BumpCheck),
	PROC_CALL(StatScreenSprites_PutArrows),
	PROC_CALL(StatScreenSprites_PutNumberLabel),
	PROC_CALL(StatScreenSprites_PutMuAreaSprites),
	PROC_CALL(StatScreenSprites_PutRescueMarkers),

	PROC_GOTO(0),

	PROC_END,
};

void StatScreen_DisableScreen(ProcPtr proc)
{
	SetDispEnable(0, 0, 0, 0, 0);
	SetBlendDarken(0x10);
	SetBlendTargetA(0, 0, 0, 0, 0);
	SetBlendBackdropA(1);
	SetBackdropColor(0);
}

void StatScreen_Init(ProcPtr proc)
{
	static u16 const bg_config[12] = {
		0x0000, 0x6000, 0,
		0x0000, 0x6800, 0,
		0x8000, 0x7000, 0,
		0x8000, 0x7800, 0,
	};

	InitBgs(bg_config);

	SetBlankChr(0x400);
	TmFill(gBg2Tm, 0);
	EnableBgSync(BG2_SYNC_BIT);

	ApplySystemGraphics();
	ApplyUnitSpritePalettes();

	StartMuralBackground(NULL, ((void *) VRAM) + 0x8000 + BGCHR_STATSCREEN_BACKMURAL * CHR_SIZE, -1);

	Decompress(gpImg_StatScreenSprites, ((void *) VRAM + 0x10000) + OBCHR_STATSCREEN_240 * CHR_SIZE);

	ApplyIconPalettes(BGPAL_ICONS);
	ApplyUiStatBarPal(BGPAL_STATSCREEN_STATBAR);
	ApplyIconPalette(1, 0x10 + OBPAL_STATSCREEN_PAGENAME);

	Decompress(Tsa_Statscreen_08307CEC, gBuf);
	TmApplyTsa(gBg1Tm, gBuf, TILEREF(BGCHR_WINDOWFRAME, BGPAL_WINDOWFRAME));

	Decompress(Img_Statscreen_08307ED4, ((void *) VRAM) + 0x8000 + BGCHR_STATSCREEN_EQUIPSTATFRAME * CHR_SIZE);
	ApplyPalette(Pal_Statscreen_08308050, BGPAL_STATSCREEN_EQUIPSTATFRAME);

	CpuFastCopy(gPal + 0x10 * BGPAL_WINDOWFRAME, gPal + 0x100 + 0x10 * OBPAL_STATSCREEN_WINDOWFRAME, 0x20);

	ApplyIconPalette(1, 0x10 + OBPAL_STATSCREEN_SPRITES);

	Decompress(Img_Statscreen_08308920, ((void *) VRAM) + BGCHR_STATSCREEN_EQUIPMENTLABEL * CHR_SIZE);

	gStatScreenSt.mu = NULL;

	StatScreenUnitSlide_End(proc);
}

void StatScreen_InitUnit(ProcPtr proc)
{
	/* update statscreen page */
	gStatScreenSt.page_count = STATSCREEN_PAGE_MAX;

	/* reset helpbox info */
	gStatScreenSt.help = NULL;

	ResetText();
	InitIcons();
	InitStatScreenText();

	PutFace80x72(gBg2Tm + TM_OFFSET(1, 1),
		GetUnitFid(gStatScreenSt.unit),
		0x400 + BGCHR_STATSCREEN_FACE, BGPAL_STATSCREEN_FACE);

	EndAllMus();
	gStatScreenSt.mu = StartUiMu(gStatScreenSt.unit, 80, 138);

	PutStatScreenLeftPanelInfo();
	PutStatScreenPage(gStatScreenSt.page);

	TmCopyRect(gUiTmScratchA, gBg0Tm + TM_OFFSET(PAGE_FRAME_SCREEN_X, PAGE_FRAME_SCREEN_Y), 18, 18);
	TmCopyRect(gUiTmScratchB, gBg1Tm + TM_OFFSET(PAGE_FRAME_SCREEN_X, PAGE_FRAME_SCREEN_Y), 18, 18);
	TmCopyRect(gUiTmScratchC, gBg2Tm + TM_OFFSET(PAGE_FRAME_SCREEN_X, PAGE_FRAME_SCREEN_Y), 18, 18);
	EnableBgSync(BG0_SYNC_BIT + BG1_SYNC_BIT + BG2_SYNC_BIT);
}

void StatScreen_Main(ProcPtr proc)
{
	struct Unit *unit;

	if (gKeySt->pressed & KEY_BUTTON_B) {
		SetDispEnable(0, 0, 0, 0, 0);
		SetBlendDarken(0x10);
		SetBlendTargetA(0, 0, 0, 0, 0);
		SetBlendBackdropA(1);
		SetBackdropColor(0);

		Proc_Break(proc);
		PlaySe(SONG_6B);
		return;
	}

	if (gKeySt->repeated & KEY_DPAD_LEFT) {
		gStatScreenSt.page = k_umod(gStatScreenSt.page + gStatScreenSt.page_count - 1, gStatScreenSt.page_count);
		StartStatScreenPageSlide(KEY_DPAD_LEFT, gStatScreenSt.page, proc);
		return;
	}

	if (gKeySt->repeated & KEY_DPAD_RIGHT) {
		gStatScreenSt.page = k_umod(gStatScreenSt.page + gStatScreenSt.page_count + 1, gStatScreenSt.page_count);
		StartStatScreenPageSlide(KEY_DPAD_RIGHT, gStatScreenSt.page, proc);
		return;
	}

	if (gKeySt->repeated & KEY_DPAD_UP) {
		unit = FindNextStatScreenUnit(gStatScreenSt.unit, -1);
		StartStatScreenUnitSlide(unit, -1, proc);
		return;
	}

	if (gKeySt->repeated & KEY_DPAD_DOWN) {
		unit = FindNextStatScreenUnit(gStatScreenSt.unit, +1);
		StartStatScreenUnitSlide(unit, +1, proc);
		return;
	}

	if ((gKeySt->repeated & KEY_BUTTON_A) && (gStatScreenSt.unit->rescue != 0)) {
		unit = GetUnit(gStatScreenSt.unit->rescue);
		StartStatScreenUnitSlide(unit, (gStatScreenSt.unit->flags & UNIT_FLAG_RESCUING) ? +1 : -1, proc);
		return;
	}

	if (gKeySt->pressed & KEY_BUTTON_R) {
		Proc_Goto(proc, 0); // goto help idle
		StartStatScreenHelp(gStatScreenSt.page, proc);
		return;
	}
}

void StatScreen_BackUpStatus(ProcPtr proc)
{
	gPlaySt.flags = (gPlaySt.flags & ~PLAY_FLAG_STATSCREENPAGE_MASK) | (gStatScreenSt.page & PLAY_FLAG_STATSCREENPAGE_MASK);
	gStatScreenInfo.unit_id = gStatScreenSt.unit->id;
	SetOnVMatch(NULL);
}

void StatScreen_UpdateLastHelpInfo(ProcPtr proc)
{
	gStatScreenSt.help = GetLastHelpBoxInfo();
}

void SyncStatScreenBgOffset(void)
{
	int y_bg = 0xFF & -gStatScreenSt.y_disp_off;

	SetBgOffset(0, 0, y_bg);
	SetBgOffset(1, 0, y_bg);
	SetBgOffset(2, 0, y_bg);
}

struct ProcScr CONST_DATA ProcScr_SyncStatScreenBgOffset[] = {
	PROC_REPEAT(SyncStatScreenBgOffset),
	PROC_END,
};

void StatScreen_CleanUp(ProcPtr proc)
{
	EndMuralBackground();
}

struct ProcScr CONST_DATA ProcScr_StatScreen[] = {
	PROC_ONEND(StatScreen_CleanUp),

	PROC_CALL(StatScreen_DisableScreen),
	PROC_CALL(LockBmDisplay),
	PROC_SLEEP(1),

	PROC_CALL(StatScreen_Init),
	PROC_CALL(StartGreenText),
	PROC_CALL(StatScreen_InitUnit),

	PROC_START_CHILD(ProcScr_StatScreenPageName),
	PROC_START_CHILD(ProcScr_StatScreenSprites),
	PROC_START_CHILD(ProcScr_SyncStatScreenBgOffset),

	PROC_GOTO(1),

PROC_LABEL(0),
	PROC_CALL(StatScreen_UpdateLastHelpInfo),

PROC_LABEL(1),
	PROC_REPEAT(StatScreen_Main),

	PROC_CALL(StatScreen_BackUpStatus),
	PROC_CALL(UnlockBmDisplay),
	PROC_CALL(EndAllMus),
	PROC_CALL(EndGreenText),
	PROC_END,
};

void StartStatScreen(struct Unit *unit, ProcPtr parent)
{
	gStatScreenSt.x_disp_off = 0;
	gStatScreenSt.y_disp_off = 0;
	gStatScreenSt.page = (gPlaySt.flags >> PLAY_FLAG_STATSCREENPAGE_SHIFT) & PLAY_FLAG_STATSCREENPAGE_MASK;
	gStatScreenSt.unit = unit;
	gStatScreenSt.help = NULL;
	gStatScreenSt.page_slide_key_bit = 0;
	gStatScreenSt.is_transitioning = FALSE;

	PidStatsAddStatView(unit->pinfo->id);

	PlaySe(SONG_6A);

	SpawnProcLocking(ProcScr_StatScreen, parent);
}

void HelpBoxPopulateStatScreenItem(struct HelpBoxProc *proc)
{
	int item = gStatScreenSt.unit->items[proc->info->msg];

	proc->item = item;
	proc->msg = GetItemDescMsg(item);
}

void HelpBoxPopulateStatScreenStatus(struct HelpBoxProc *proc)
{
	switch (gStatScreenSt.unit->status) {
	case UNIT_STATUS_NONE:
		proc->msg = MSG_5A8;
		break;

	case UNIT_STATUS_POISON:
		proc->msg = MSG_5A9;
		break;

	case UNIT_STATUS_SLEEP:
		proc->msg = MSG_5AA;
		break;

	case UNIT_STATUS_SILENCED:
		proc->msg = MSG_5AC;
		break;

	case UNIT_STATUS_BERSERK:
		proc->msg = MSG_5AB;
		break;
	}
}

void HelpBoxPopulateStatScreenPower(struct HelpBoxProc *proc)
{
	if (UnitKnowsMagic(gStatScreenSt.unit))
		proc->msg = MSG_59D;
	else
		proc->msg = MSG_59C;
}

void HelpBoxRedirectStatScreenItem(struct HelpBoxProc *proc)
{
	if (gStatScreenSt.unit->items[0] == 0)
		HelpBoxTryRelocateLeft(proc);

	if (gStatScreenSt.unit->items[proc->info->msg] == 0) {
		if (proc->move_key_bit == 0 || proc->move_key_bit == KEY_DPAD_RIGHT || proc->move_key_bit == KEY_DPAD_UP)
			HelpBoxTryRelocateUp(proc);
		else if (proc->move_key_bit == KEY_DPAD_DOWN)
			HelpBoxTryRelocateDown(proc);
	}
}

void HelpBoxPopulateStatScreenWeaponExp(struct HelpBoxProc *proc)
{
	static u16 const item_kind_msg_lut[] = {
		[ITEM_KIND_SWORD] = MSG_62D,
		[ITEM_KIND_LANCE] = MSG_62E,
		[ITEM_KIND_AXE] = MSG_62F,
		[ITEM_KIND_BOW] = MSG_630,
		[ITEM_KIND_STAFF] = MSG_632,
		[ITEM_KIND_ANIMA] = MSG_633,
		[ITEM_KIND_LIGHT] = MSG_634,
		[ITEM_KIND_ELDER] = MSG_631,
	};

	int item_kind = proc->info->msg;

	if (UnitKnowsMagic(gStatScreenSt.unit))
		item_kind += 4;

	proc->msg = item_kind_msg_lut[item_kind];
}

void HelpBoxPopulateStatScreenPInfo(struct HelpBoxProc *proc)
{
	int msg_desc = gStatScreenSt.unit->pinfo->msg_desc;

	if (msg_desc != 0)
		proc->msg = msg_desc;
	else
		proc->msg = MSG_66D;
}

void HelpBoxPopulateStatScreenJInfo(struct HelpBoxProc *proc)
{
	proc->msg = gStatScreenSt.unit->jinfo->msg_desc;
}

void HelpBoxRedirectStatScreenSupports(struct HelpBoxProc *proc)
{
	if (GetUnitTotalSupportLevel(gStatScreenSt.unit) == 0)
	{
		if (proc->move_key_bit == KEY_DPAD_DOWN)
			HelpBoxTryRelocateDown(proc);
		else
			HelpBoxTryRelocateUp(proc);
	}
}
