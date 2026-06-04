#include "prelude.h"
#include "hardware.h"
#include "unit.h"
#include "battle.h"
#include "item.h"
#include "bmio.h"
#include "ui.h"
#include "icon.h"
#include "statscreen.h"
#include "sound.h"
#include "util.h"
#include "mapui.h"
#include "save_stats.h"
#include "armfunc.h"
#include "text.h"
#include "msg.h"
#include "mu.h"
#include "unitsprite.h"
#include "constants/songs.h"
#include "constants/videoalloc_global.h"

#include "klib.h"

EWRAM_OVERLAY(0) u16 TmBuff_MssU0[MSS_U_HIGHT * 0x20] = {}; // 24 * 6
EWRAM_OVERLAY(0) u16 TmBuff_MssU2[MSS_U_HIGHT * 0x20] = {}; // 24 * 6
EWRAM_OVERLAY(0) u16 TmBuff_MssL0[MSS_L_HIGHT * 0x20] = {}; // 18 * 14
EWRAM_OVERLAY(0) u16 TmBuff_MssL2[MSS_L_HIGHT * 0x20] = {}; // 18 * 14
EWRAM_OVERLAY(0) u16 TmBuff_MssL1[MSS_L_HIGHT * 0x20] = {}; // 18 * 14
EWRAM_OVERLAY(0) u16 TmBuff_MssR0[MSS_R_HIGHT * 0x20] = {}; // 16 * 32
EWRAM_OVERLAY(0) u16 TmBuff_MssR1[MSS_R_HIGHT * 0x20] = {}; // 16 * 32
EWRAM_OVERLAY(0) u16 TmBuff_MssR2[MSS_R_HIGHT * 0x20] = {}; // 18 * 32
EWRAM_OVERLAY(0) struct ModStatScreenSt gMssSt = {};

static const struct ProcScr ProcScr_mss_sprites[];

static const struct TextInitInfo mss_text_init_info[] = {
	{ &gMssSt.texts[MSS_TEXT_PNAME], 7 },
	{ &gMssSt.texts[MSS_TEXT_JNAME], 7 },
	{ &gMssSt.texts[MSS_TEXT_POW], 3 },
	{ &gMssSt.texts[MSS_TEXT_MAG], 5 },
	{ &gMssSt.texts[MSS_TEXT_SKL], 3 },
	{ &gMssSt.texts[MSS_TEXT_SPD], 3 },
	{ &gMssSt.texts[MSS_TEXT_LCK], 3 },
	{ &gMssSt.texts[MSS_TEXT_DEF], 3 },
	{ &gMssSt.texts[MSS_TEXT_RES], 3 },
	{ &gMssSt.texts[MSS_TEXT_MOV], 3 },
	{ &gMssSt.texts[MSS_TEXT_ITEM1], 7 },
	{ &gMssSt.texts[MSS_TEXT_ITEM2], 7 },
	{ &gMssSt.texts[MSS_TEXT_ITEM3], 7 },
	{ &gMssSt.texts[MSS_TEXT_ITEM4], 7 },
	{ &gMssSt.texts[MSS_TEXT_ITEM5], 7 },
	{ &gMssSt.texts[MSS_TEXT_P2_ATK], 4 },
	{ &gMssSt.texts[MSS_TEXT_P2_HIT], 5 },
	{ &gMssSt.texts[MSS_TEXT_P2_CRT], 3 },
	{ &gMssSt.texts[MSS_TEXT_P2_AVO], 3 },
	{ &gMssSt.texts[MSS_TEXT_P2_DDG], 5 },
	{ &gMssSt.texts[MSS_TEXT_P2_SIL], 5 },
	{ &gMssSt.texts[MSS_TEXT_P2_RNG], 7 },
	{ &gMssSt.texts[MSS_TEXT_P3_WEXP1], 2 },
	{ &gMssSt.texts[MSS_TEXT_P3_WEXP2], 2 },
	{ &gMssSt.texts[MSS_TEXT_P3_WEXP3], 2 },
	{ &gMssSt.texts[MSS_TEXT_P3_WEXP4], 2 },
	{ &gMssSt.texts[MSS_TEXT_P3_WEXP5], 2 },
	{ &gMssSt.texts[MSS_TEXT_P3_WEXP6], 2 },
	{ &gMssSt.texts[MSS_TEXT_P3_WEXP7], 2 },
	{ &gMssSt.texts[MSS_TEXT_P3_WEXP8], 2 },

	{}
};

static void mss_main(struct ProcMss *proc)
{
	if (gKeySt->pressed & KEY_BUTTON_B) {
		Proc_Goto(proc, PL_MSS_END);
		PlaySe(SONG_6B);
		return;
	}

	if (gKeySt->repeated & KEY_DPAD_LEFT) {
		proc->page--;
		if (proc->page < 0)
			proc->page = proc->page_count - 1;

		Proc_Goto(proc, PL_MSS_SLIDE_PAGE);
		return;
	}

	if (gKeySt->repeated & KEY_DPAD_RIGHT) {
		proc->page++;
		if (proc->page >= proc->page_count)
			proc->page = 0;

		Proc_Goto(proc, PL_MSS_SLIDE_PAGE);
		return;
	}
}

static void mss_init(ProcPtr proc)
{
	struct Unit *unit = gMssSt.unit;

	gDispIo.bg0_ct.priority = 0;
	gDispIo.bg1_ct.priority = 1;
	gDispIo.bg2_ct.priority = 1;
	gDispIo.bg3_ct.priority = 3;

	SetBlendAlpha(15, 4);
	SetBlendTargetA(0, 0, 1, 0, 0);
	SetBlendBackdropA(0);
	SetBlendTargetB(0, 1, 0, 1, 1);

	SetBgOffset(BG_0, 0, 0);
	SetBgOffset(BG_1, 0, 0);
	SetBgOffset(BG_2, 0, 0);

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);
	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	ResetTextFont();
	InitTextFont(&gDefaultFont,
		(u8 *)(VRAM + BGCHR_MSS_TEXT * CHR_SIZE),
		BGCHR_MSS_TEXT, BGPAL_MSS_TEXT);

	InitIcons();
	InitTextList(mss_text_init_info);

	ApplyIconPalettes(BGPAL_MSS_ICON0);
	ApplyPalette(Pal_MssUI, BGPAL_MSS_UI);
	ApplyPalette(Pal_MssUI2, BGPAL_MSS_STATBAR);
	Decompress(Img_MssUI, (u8 *)BG_VRAM + BGCHR_MSS_UI * CHR_SIZE);
	Decompress(Img_MssUI2, (u8 *)BG_VRAM + BGCHR_MSS_UI2 * CHR_SIZE);

	BattleGenerateDisplayStats(unit, GetUnitEquippedWeaponSlot(unit));

	SpawnProc(ProcScr_mss_sprites, proc);
}

static void mss_end(ProcPtr proc)
{
	SetBlendNone();

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);
	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	Proc_End(FindProc(ProcScr_mss_sprites));
}

/**
 * sprites
 */
static void mss_sprites_init(ProcPtr proc)
{
	Decompress(Img_MssSprites, OBJ_VRAM0 + OBCHR_MSS_SPRITES * CHR_SIZE);
	ApplyIconPalette(1, 0x10 + OBPAL_MSS_SPRITES);
}

static void mss_sprites_loop(ProcPtr proc)
{
}

static const struct ProcScr ProcScr_mss_sprites[] = {
	PROC_CALL(mss_sprites_init),
	PROC_YIELD,
	PROC_REPEAT(mss_sprites_loop),
	PROC_END
};

/**
 * slide
 */
enum mss_slide_ops {
	MSS_SLIDE_IN,
	MSS_SLIDE_OUT,
	MSS_SLIDE_NONE,
};

static void mss_init_slide(struct ProcMss *proc)
{
	proc->slide_step = 0;
}

static void slide_up(int step, enum mss_slide_ops ops)
{
	int hight, src_off, dst_off;

	if (step > MSS_U_HIGHT)
		step = MSS_U_HIGHT;

	switch (ops) {
	case MSS_SLIDE_IN:
		src_off = MSS_U_HIGHT - step;
		dst_off = 0;
		hight = MSS_U_HIGHT - src_off;
		break;

	case MSS_SLIDE_OUT:
		src_off = step;
		dst_off = 0;
		hight = MSS_U_HIGHT - src_off;
		break;

	case MSS_SLIDE_NONE:
	default:
		src_off = 0;
		dst_off = 0;
		hight = MSS_U_HIGHT;
		break;
	}

	TmCopyRect(
		TmBuff_MssU0 + TM_OFFSET(0, src_off),
		gBg0Tm + TM_OFFSET(MSS_U_X, MSS_U_Y + dst_off),
		MSS_U_WIDTH, hight);

	TmCopyRect(
		TmBuff_MssU2 + TM_OFFSET(0, src_off),
		gBg2Tm + TM_OFFSET(MSS_U_X, MSS_U_Y + dst_off),
		MSS_U_WIDTH, hight);
}

static void slide_left(int step, enum mss_slide_ops ops)
{
	int len, src_off, dst_off;

	step = step * 2;

	if (step > MSS_L_WIDTH)
		step = MSS_L_WIDTH;

	switch (ops) {
	case MSS_SLIDE_IN:
		src_off = MSS_L_WIDTH - step;
		dst_off = 0;
		len = MSS_L_WIDTH - src_off;
		break;

	case MSS_SLIDE_OUT:
		src_off = step;
		dst_off = 0;
		len = MSS_L_WIDTH - src_off;
		break;

	case MSS_SLIDE_NONE:
	default:
		src_off = 0;
		dst_off = 0;
		len = MSS_L_WIDTH;
		break;
	}

	TmCopyRect(
		TmBuff_MssL0 + TM_OFFSET(src_off, 0),
		gBg0Tm + TM_OFFSET(MSS_L_X + dst_off, MSS_L_Y),
		len, MSS_L_HIGHT);

	TmCopyRect(
		TmBuff_MssL1 + TM_OFFSET(src_off, 0),
		gBg1Tm + TM_OFFSET(MSS_L_X + dst_off, MSS_L_Y),
		len, MSS_L_HIGHT);

	TmCopyRect(
		TmBuff_MssL2 + TM_OFFSET(src_off, 0),
		gBg2Tm + TM_OFFSET(MSS_L_X + dst_off, MSS_L_Y),
		len, MSS_L_HIGHT);
}

static void slide_right(int step, enum mss_slide_ops ops)
{
	int len, src_off, dst_off;

	if (step > MSS_R_WIDTH)
		step = MSS_R_WIDTH;

	switch (ops) {
	case MSS_SLIDE_IN:
		src_off = 0;
		dst_off = MSS_R_WIDTH - step;
		len = MSS_R_WIDTH - dst_off;
		break;

	case MSS_SLIDE_OUT:
		src_off = 0;
		dst_off = step;
		len = MSS_R_WIDTH - dst_off;
		break;

	case MSS_SLIDE_NONE:
	default:
		src_off = 0;
		dst_off = 0;
		len = MSS_R_WIDTH;
		break;
	}

	TmCopyRect(
		TmBuff_MssR0 + TM_OFFSET(src_off, 0),
		gBg0Tm + TM_OFFSET(MSS_R_X + dst_off, MSS_R_Y),
		len, MSS_R_HIGHT);

	TmCopyRect(
		TmBuff_MssR1 + TM_OFFSET(src_off, 0),
		gBg1Tm + TM_OFFSET(MSS_R_X + dst_off, MSS_R_Y),
		len, MSS_R_HIGHT);

	TmCopyRect(
		TmBuff_MssR2 + TM_OFFSET(src_off, 0),
		gBg2Tm + TM_OFFSET(MSS_R_X + dst_off, MSS_R_Y),
		len, MSS_R_HIGHT);
}

static void mss_loop_unit_slidein(struct ProcMss *proc)
{
	int step = proc->slide_step;
	int max_step = max(MSS_U_HIGHT, max(MSS_L_WIDTH / 2, MSS_R_WIDTH));

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);

	slide_up(step, MSS_SLIDE_IN);
	slide_left(step, MSS_SLIDE_IN);
	slide_right(step, MSS_SLIDE_IN);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	proc->slide_step++;
	if (proc->slide_step > max_step)
		Proc_Break(proc);
}

static void mss_loop_unit_slideout(struct ProcMss *proc)
{
	int step = proc->slide_step;
	int max_step = max(MSS_U_HIGHT, max(MSS_L_WIDTH / 2, MSS_R_WIDTH));

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);

	slide_up(step, MSS_SLIDE_OUT);
	slide_left(step, MSS_SLIDE_OUT);
	slide_right(step, MSS_SLIDE_OUT);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	proc->slide_step++;
	if (proc->slide_step > max_step)
		Proc_Break(proc);
}

static void mss_loop_page_slidein(struct ProcMss *proc)
{
	int step = proc->slide_step;
	int max_step = max(MSS_U_HIGHT, max(MSS_L_WIDTH / 2, MSS_R_WIDTH));

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);

	slide_up(step, MSS_SLIDE_NONE);
	slide_left(step, MSS_SLIDE_IN);
	slide_right(step, MSS_SLIDE_IN);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	proc->slide_step++;
	if (proc->slide_step > max_step)
		Proc_Break(proc);
}

static void mss_loop_page_slideout(struct ProcMss *proc)
{
	int step = proc->slide_step;
	int max_step = max(MSS_U_HIGHT, max(MSS_L_WIDTH / 2, MSS_R_WIDTH));

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);

	slide_up(step, MSS_SLIDE_NONE);
	slide_left(step, MSS_SLIDE_OUT);
	slide_right(step, MSS_SLIDE_OUT);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	proc->slide_step++;
	if (proc->slide_step > max_step)
		Proc_Break(proc);
}

/**
 * main
 */
static const struct ProcScr ProcScr_modern_statscreen[] = {
	// PROC_CALL(LockBmDisplay),

	PROC_CALL(StartGreenText),
	PROC_CALL(mss_init),

PROC_LABEL(PL_MSS_SLIDE_UNIT_IN),
	PROC_YIELD,
	PROC_CALL(Mss_PreparePage),
	PROC_CALL(mss_init_slide),
	PROC_REPEAT(mss_loop_unit_slidein),
	PROC_GOTO(PL_MSS_IDLE),

PROC_LABEL(PL_MSS_IDLE),
	PROC_REPEAT(mss_main),

PROC_LABEL(PL_MSS_SLIDE_PAGE),
	PROC_CALL(mss_init_slide),
	PROC_REPEAT(mss_loop_page_slideout),
	PROC_YIELD,
	PROC_CALL(Mss_PreparePage),
	PROC_CALL(mss_init_slide),
	PROC_REPEAT(mss_loop_page_slidein),
	PROC_GOTO(PL_MSS_IDLE),

PROC_LABEL(PL_MSS_END),
	PROC_CALL(mss_init_slide),
	PROC_REPEAT(mss_loop_unit_slideout),
	PROC_CALL(mss_end),
	PROC_YIELD,
	// PROC_CALL(UnlockBmDisplay),
	PROC_CALL(EndGreenText),
	PROC_END,
};

void StartModernStatScreen(struct Unit *unit, ProcPtr parent)
{
	struct ProcMss *proc;

	gMssSt.unit = unit;
	gMssSt.help = NULL;

	PidStatsAddStatView(unit->pinfo->id);
	PlaySe(SONG_6A);

	EndAllMus();
	unit->flags &= ~UNIT_FLAG_HIDDEN;
	ShowUnitSprite(unit);

	proc = SpawnProcLocking(ProcScr_modern_statscreen, parent);
	proc->page = 0;
	proc->page_count = 4;
}
