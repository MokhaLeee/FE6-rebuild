#include "prelude.h"
#include "hardware.h"
#include "unit.h"
#include "battle.h"
#include "support.h"
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
#include "face.h"
#include "text.h"
#include "msg.h"
#include "sprite.h"
#include "oam.h"
#include "mu.h"
#include "unitsprite.h"
#include "constants/songs.h"
#include "constants/videoalloc_global.h"

#include "klib.h"

extern const u16 Tsa_Mss_Upper[];
extern const u16 Tsa_Mss_Left[];
extern const u16 Tsa_Mss_Right[];
extern const u8 Img_MssUI[];
extern const u16 Pal_MssUI[0x10];
extern const u8 Img_MssUI2[];
extern const u16 Pal_MssUI2[0x10];
extern const u8 Img_MssSprites[];

enum mss_rect {
	MSS_U_WIDTH = 20,
	MSS_U_HIGHT = 6,
	MSS_U_X = 0,
	MSS_U_Y = 0,

	MSS_L_WIDTH = 20,
	MSS_L_HIGHT = 14,
	MSS_L_X = 0,
	MSS_L_Y = 6,

	MSS_R_WIDTH = 10,
	MSS_R_HIGHT = 19,
	MSS_R_X = 20,
	MSS_R_Y = 0,
};

static EWRAM_OVERLAY(0) u16 TmBuff_MssU0[MSS_U_HIGHT * 0x20] = {}; // 24 * 6
static EWRAM_OVERLAY(0) u16 TmBuff_MssU2[MSS_U_HIGHT * 0x20] = {}; // 24 * 6

static EWRAM_OVERLAY(0) u16 TmBuff_MssL0[MSS_L_HIGHT * 0x20] = {}; // 18 * 14
static EWRAM_OVERLAY(0) u16 TmBuff_MssL2[MSS_L_HIGHT * 0x20] = {}; // 18 * 14
static EWRAM_OVERLAY(0) u16 TmBuff_MssL1[MSS_L_HIGHT * 0x20] = {}; // 18 * 14

static EWRAM_OVERLAY(0) u16 TmBuff_MssR0[MSS_R_HIGHT * 0x20] = {}; // 16 * 32
static EWRAM_OVERLAY(0) u16 TmBuff_MssR1[MSS_R_HIGHT * 0x20] = {}; // 16 * 32
static EWRAM_OVERLAY(0) u16 TmBuff_MssR2[MSS_R_HIGHT * 0x20] = {}; // 18 * 32

static const struct ProcScr ProcScr_mss_sprites[];

enum videoalloc_mss {
	BGCHR_MSS_TEXT = 0,
	BGCHR_MSS_FACE = 0x3000 / 0x20,
	BGCHR_MSS_UI = 0x3400 / 0x20,
	BGCHR_MSS_UI2 = 0x3C00 / 0x20,
	BGCHR_MSS_STATBAR = 0x4400 / 0x20,

	BGPAL_MSS_TEXT = 0,
	BGPAL_MSS_UI = 1, // .. 2
	BGPAL_MSS_FACE = 3,
	BGPAL_MSS_ICON0 = 4,
	BGPAL_MSS_ICON1 = 5,
	BGPAL_MSS_TILESET = 6, // .. 15

	BGPAL_MSS_STATBAR = BGPAL_MSS_UI + 1,


	OBCHR_MSS_SPRITES = 0x5800 / 0x20,
	OBPAL_MSS_SPRITES = 2,
};

enum mss_text_index {
	MSS_TEXT_PNAME,
	MSS_TEXT_JNAME,
	MSS_TEXT_POW,
	MSS_TEXT_MAG,
	MSS_TEXT_SKL,
	MSS_TEXT_SPD,
	MSS_TEXT_LCK,
	MSS_TEXT_DEF,
	MSS_TEXT_RES,
	MSS_TEXT_MOV,

	MSS_TEXT_MAX,
};

struct ModStatScreenSt {
	struct Unit *unit;
	const struct HelpBoxInfo *help;
	struct Text texts[MSS_TEXT_MAX];
};
static EWRAM_DATA struct ModStatScreenSt mss_st = {};

struct ProcMss {
	PROC_HEADER;
	int slide_step;
	u8 page, next_page, page_count;
};

static const struct TextInitInfo mss_text_init_info[] = {
	{ &mss_st.texts[MSS_TEXT_PNAME], 7 },
	{ &mss_st.texts[MSS_TEXT_JNAME], 7 },

	{ &mss_st.texts[MSS_TEXT_POW], 5 },
	{ &mss_st.texts[MSS_TEXT_MAG], 5 },
	{ &mss_st.texts[MSS_TEXT_SKL], 5 },
	{ &mss_st.texts[MSS_TEXT_SPD], 5 },
	{ &mss_st.texts[MSS_TEXT_LCK], 5 },
	{ &mss_st.texts[MSS_TEXT_DEF], 5 },
	{ &mss_st.texts[MSS_TEXT_RES], 5 },
	{ &mss_st.texts[MSS_TEXT_MOV], 5 },

	{}
};

static void mss_main(ProcPtr proc)
{
	if (gKeySt->pressed & KEY_BUTTON_B) {
		Proc_Break(proc);
		PlaySe(SONG_6B);
		return;
	}
}

static void mss_init(ProcPtr proc)
{
	struct Unit *unit = mss_st.unit;

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

	CpuFastFill(0, TmBuff_MssU0, sizeof(TmBuff_MssU0));
	CpuFastFill(0, TmBuff_MssU2, sizeof(TmBuff_MssU2));

	CpuFastFill(0, TmBuff_MssL0, sizeof(TmBuff_MssL0));
	CpuFastFill(0, TmBuff_MssL2, sizeof(TmBuff_MssL2));
	CpuFastFill(0, TmBuff_MssL1, sizeof(TmBuff_MssL1));

	CpuFastFill(0, TmBuff_MssR0, sizeof(TmBuff_MssR0));
	CpuFastFill(0, TmBuff_MssR1, sizeof(TmBuff_MssR1));
	CpuFastFill(0, TmBuff_MssR2, sizeof(TmBuff_MssR2));

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
 * draw page
 */
static void mss_put_page_upper(ProcPtr proc)
{
	int x_offset, x_text;
	char *str;
	struct Unit *unit = mss_st.unit;

	Decompress(Tsa_Mss_Upper, gBuf);
	TmApplyTsa(TmBuff_MssU2, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));

	PutFaceChibi(GetUnitChibiId(unit),
		TmBuff_MssU0 + TM_OFFSET(1, 1),
		BGCHR_MSS_FACE, BGPAL_MSS_FACE, FALSE);

	/* level & exp */
	x_offset = 5;

	PutTwoSpecialChar(TmBuff_MssU0 + TM_OFFSET(x_offset + 0, 1), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_LV_A, TEXT_SPECIAL_LV_B);
	PutNumberOrBlank(TmBuff_MssU0 + TM_OFFSET(x_offset + 3, 1), TEXT_COLOR_SYSTEM_BLUE, unit->level);
	PutSpecialChar(TmBuff_MssU0 + TM_OFFSET(x_offset + 4, 1), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_EXP_E);
	PutNumberOrBlank(TmBuff_MssU0 + TM_OFFSET(x_offset + 6, 1), TEXT_COLOR_SYSTEM_BLUE, unit->exp);

	/* HP */
	PutTwoSpecialChar(TmBuff_MssU0 + TM_OFFSET(x_offset + 0, 3), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_HP_A, TEXT_SPECIAL_HP_B);
	PutSpecialChar(TmBuff_MssU0 + TM_OFFSET(x_offset + 4, 3), TEXT_COLOR_SYSTEM_GOLD, TEXT_SPECIAL_SLASH);
	PutNumberOrBlank(TmBuff_MssU0 + TM_OFFSET(x_offset + 3, 3), TEXT_COLOR_SYSTEM_BLUE, GetUnitCurrentHp(unit));
	PutNumberOrBlank(TmBuff_MssU0 + TM_OFFSET(x_offset + 6, 3), TEXT_COLOR_SYSTEM_BLUE, GetUnitMaxHp(unit));

	/* p/j name */
	x_offset = 12;

	str = DecodeMsg(unit->pinfo->msg_name);
	x_text = GetStringTextCenteredPos(8 * 7, str);

	PutDrawText(
		&mss_st.texts[MSS_TEXT_PNAME],
		TmBuff_MssU0 + TM_OFFSET(x_offset, 1),
		TEXT_COLOR_SYSTEM_WHITE,
		x_text, 0, str);

	str = DecodeMsg(unit->jinfo->msg_name);
	x_text = GetStringTextCenteredPos(8 * 7, str);

	PutDrawText(
		&mss_st.texts[MSS_TEXT_JNAME],
		TmBuff_MssU0 + TM_OFFSET(x_offset, 3),
		TEXT_COLOR_SYSTEM_WHITE,
		x_text, 0, str);
}

static void mss_put_page_left(ProcPtr proc)
{
	Decompress(Tsa_Mss_Left, gBuf);
	TmApplyTsa(TmBuff_MssL2, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));
}

static void mss_PutNumberBonus(int number, u16 *tm)
{
	if (number == 0)
		return;

	if (number < 0) {
		u16 tileref = gActiveFont->tileref;

		gActiveFont->tileref |= BGPAL_MSS_STATBAR << 0xC;
		PutSpecialChar(tm, 3, TEXT_SPECIAL_DASH);
		PutNumberSmall(tm + ((number >= 10) ? 2 : 1), 3, -number);
		gActiveFont->tileref = tileref;
		return;
	}

	PutSpecialChar(tm, TEXT_COLOR_SYSTEM_GREEN, TEXT_SPECIAL_PLUS);
	PutNumberSmall(tm + ((number >= 10) ? 2 : 1), TEXT_COLOR_SYSTEM_GREEN, number);
}

static void mss_put_stat(int num, int x, int y, int base, int total, int max)
{
	int bonus = total - base;

	PutNumberOrBlank(TmBuff_MssR0 + TM_OFFSET(x, y),
		(base == max) ? TEXT_COLOR_SYSTEM_GREEN : TEXT_COLOR_SYSTEM_BLUE, base);

	mss_PutNumberBonus(bonus, TmBuff_MssR0 + TM_OFFSET(x + 1, y));

	if (total > 30) {
		total = 30;
		bonus = total - base;
	}

	PutDrawUiGauge(
		BGCHR_MSS_STATBAR + 1 + num * 6, 6,
		TmBuff_MssR1 + TM_OFFSET(x - 2, y + 1),
		TILEREF(0, BGPAL_MSS_STATBAR),
		k_udiv(max * 41, 30),
		k_udiv(base * 41, 30),
		bonus > 0 ? k_udiv(bonus * 41, 30) : -k_udiv(-bonus * 41, 30));
}

static struct StatScreenTextInfo const mss_textinfo_page1_right[] = {
	{ mss_st.texts + MSS_TEXT_POW, TmBuff_MssR0 + TM_OFFSET(1, 2),  TEXT_COLOR_SYSTEM_GOLD, 0, "Str" },
	{ mss_st.texts + MSS_TEXT_MAG, TmBuff_MssR0 + TM_OFFSET(1, 4),  TEXT_COLOR_SYSTEM_GOLD, 0, "Mag" },
	{ mss_st.texts + MSS_TEXT_SKL, TmBuff_MssR0 + TM_OFFSET(1, 6),  TEXT_COLOR_SYSTEM_GOLD, 0, "Skl" },
	{ mss_st.texts + MSS_TEXT_SPD, TmBuff_MssR0 + TM_OFFSET(1, 8),  TEXT_COLOR_SYSTEM_GOLD, 0, "Spd" },
	{ mss_st.texts + MSS_TEXT_DEF, TmBuff_MssR0 + TM_OFFSET(1, 10),  TEXT_COLOR_SYSTEM_GOLD, 0, "Def" },
	{ mss_st.texts + MSS_TEXT_RES, TmBuff_MssR0 + TM_OFFSET(1, 12), TEXT_COLOR_SYSTEM_GOLD, 0, "Res" },
	{ mss_st.texts + MSS_TEXT_LCK, TmBuff_MssR0 + TM_OFFSET(1, 14),  TEXT_COLOR_SYSTEM_GOLD, 0, "Lck" },
	{ mss_st.texts + MSS_TEXT_MOV, TmBuff_MssR0 + TM_OFFSET(1, 16),  TEXT_COLOR_SYSTEM_GOLD, 0, "Mov" },
	{ 0 }, // end
};

static void mss_put_page_right(ProcPtr proc)
{
	struct Unit *unit = mss_st.unit;

	Decompress(Tsa_Mss_Right, gBuf);
	TmApplyTsa(TmBuff_MssR2, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));

	PutStatScreenText(mss_textinfo_page1_right);

	mss_put_stat(0, 5, 2,  unit->pow, GetUnitPower(unit), GetUnitMaxStatusPow(unit));
	mss_put_stat(1, 5, 4,  unit->mag, GetUnitMagic(unit), GetUnitMaxStatusMag(unit));
	mss_put_stat(2, 5, 6,  unit->skl, GetUnitSkill(unit), GetUnitMaxStatusSkl(unit));
	mss_put_stat(3, 5, 8,  unit->spd, GetUnitSpeed(unit), GetUnitMaxStatusSpd(unit));
	mss_put_stat(4, 5, 10,  unit->def, GetUnitDefense(unit), GetUnitMaxStatusDef(unit));
	mss_put_stat(5, 5, 12, unit->res, GetUnitResistance(unit), GetUnitMaxStatusRes(unit));
	mss_put_stat(6, 5, 14, unit->lck, GetUnitLuck(unit), GetUnitMaxStatusLck(unit));
	mss_put_stat(7, 5, 16, UNIT_MOV_BASE(unit), GetUnitMovement(unit), GetUnitMaxStatusMov(unit));
}

static void mss_prepare_display(ProcPtr proc)
{

	mss_put_page_upper(proc);
	mss_put_page_left(proc);
	mss_put_page_right(proc);
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

static void slide_left(int step, enum mss_slide_ops ops)
{
	int len, src_off, dst_off;

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
		TmBuff_MssU2,
		gBg2Tm + TM_OFFSET(MSS_U_X, MSS_U_Y),
		MSS_U_WIDTH, hight);
}

static void mss_loop_slide_in(struct ProcMss *proc)
{
	int step = proc->slide_step;
	int max_step = max(MSS_U_HIGHT, max(MSS_L_WIDTH, MSS_R_WIDTH));

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);

	slide_up(step, MSS_SLIDE_IN);
	slide_left(step, MSS_SLIDE_IN);

	/* right */

	TmCopyRect(TmBuff_MssR0, gBg0Tm + TM_OFFSET(MSS_R_X, MSS_R_Y), MSS_R_WIDTH, MSS_R_HIGHT);
	TmCopyRect(TmBuff_MssR1, gBg1Tm + TM_OFFSET(MSS_R_X, MSS_R_Y), MSS_R_WIDTH, MSS_R_HIGHT);
	TmCopyRect(TmBuff_MssR2, gBg2Tm + TM_OFFSET(MSS_R_X, MSS_R_Y), MSS_R_WIDTH, MSS_R_HIGHT);

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
	PROC_YIELD,
	PROC_CALL(mss_prepare_display),

	PROC_CALL(mss_init_slide),
	PROC_REPEAT(mss_loop_slide_in),

	PROC_REPEAT(mss_main),

	PROC_CALL(mss_end),
	PROC_YIELD,
	// PROC_CALL(UnlockBmDisplay),
	PROC_CALL(EndGreenText),
	PROC_END,
};

void StartModernStatScreen(struct Unit *unit, ProcPtr parent)
{
	struct ProcMss *proc;

	mss_st.unit = unit;
	mss_st.help = NULL;

	PidStatsAddStatView(unit->pinfo->id);
	PlaySe(SONG_6A);

	EndAllMus();
	unit->flags &= ~UNIT_FLAG_HIDDEN;
	ShowUnitSprite(unit);

	proc = SpawnProcLocking(ProcScr_modern_statscreen, parent);
	proc->page = proc->next_page = 0;
	proc->page_count = 4;
}
