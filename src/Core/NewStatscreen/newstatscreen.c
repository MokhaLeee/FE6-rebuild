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
#include "constants/songs.h"
#include "constants/videoalloc_global.h"

#include "klib.h"

extern const u16 Tsa_Mss_Upper[];
extern const u16 Tsa_Mss_Left[];
extern const u8 Img_MssUI[];
extern const u16 Pal_MssUI[0x10];
extern const u8 Img_MssUI2[];
extern const u16 Pal_MssUI2[0x10];
extern const u8 Img_MssSprites[];

static EWRAM_OVERLAY(0) u16 TmBuff_MssU0[0xC0] = {}; // 24 * 6
static EWRAM_OVERLAY(0) u16 TmBuff_MssU1[0xC0] = {}; // 24 * 6
static EWRAM_OVERLAY(0) u16 TmBuff_MssL0[0x1C0] = {}; // 18 * 14
static EWRAM_OVERLAY(0) u16 TmBuff_MssL1[0x1C0] = {}; // 18 * 14
static EWRAM_OVERLAY(0) u16 TmBuff_MssL2[0x1C0] = {}; // 18 * 14
static EWRAM_OVERLAY(0) u16 TmBuff_MssR0[0x200] = {}; // 16 * 14
static EWRAM_OVERLAY(0) u16 TmBuff_MssR2[0x200] = {}; // 16 * 14

static const struct ProcScr proc_mss_sprites[];

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


	OBCHR_MSS_SPRITES = 0x7000 / 0x20,
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

	u8 page, page_count;
};
static EWRAM_DATA struct ModStatScreenSt mss_st = {};

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

static void mss_hide_mapui(ProcPtr proc)
{
	ProcPtr ui_proc;

	ui_proc = FindProc(ProcScr_UnitMapUi);
	if (ui_proc)
		Proc_Goto(ui_proc, 3);

	ui_proc = FindProc(ProcScr_TerrainMapUi);
	if (ui_proc)
		Proc_Break(ui_proc);

	CallDelayed(EndMapUi, 3);
	StartTemporaryLock(proc, 3);
}

static void mss_init(ProcPtr proc)
{
	struct Unit *unit = mss_st.unit;

	gDispIo.bg0_ct.priority = 1;
	gDispIo.bg1_ct.priority = 3;
	gDispIo.bg2_ct.priority = 2;
	gDispIo.bg3_ct.priority = 3;

	SetBlendAlpha(15, 4);
	SetBlendTargetA(0, 1, 0, 0, 0);
	SetBlendBackdropA(0);
	SetBlendTargetB(0, 0, 1, 1, 1);

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
	CpuFastFill(0, TmBuff_MssU1, sizeof(TmBuff_MssU1));

	CpuFastFill(0, TmBuff_MssL0, sizeof(TmBuff_MssL0));
	CpuFastFill(0, TmBuff_MssL1, sizeof(TmBuff_MssL1));
	CpuFastFill(0, TmBuff_MssL2, sizeof(TmBuff_MssL2));

	CpuFastFill(0, TmBuff_MssR0, sizeof(TmBuff_MssR0));
	CpuFastFill(0, TmBuff_MssR2, sizeof(TmBuff_MssR2));

	SpawnProc(proc_mss_sprites, proc);
}

static void mss_put_page_upper(ProcPtr proc)
{
	int x_offset, x_text;
	char *str;
	struct Unit *unit = mss_st.unit;

	Decompress(Tsa_Mss_Upper, gBuf);
	TmApplyTsa(TmBuff_MssU1, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));

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
	TmApplyTsa(TmBuff_MssL1, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));
}

static void mss_put_stat(int num, int x, int y, int base, int total, int max, u16 *tm)
{
	int bonus = total - base;

	if (total > 30) {
		total = 30;
		bonus = total - base;
	}

	PutDrawUiGauge(
		BGCHR_MSS_STATBAR + 1 + num * 6, 6,
		tm + TM_OFFSET(x - 2, y + 1),
		TILEREF(0, BGPAL_MSS_STATBAR),
		k_udiv(max * 41, 30),
		k_udiv(base * 41, 30),
		bonus > 0 ? k_udiv(bonus * 41, 30) : -k_udiv(-bonus * 41, 30));
}

static struct StatScreenTextInfo const mss_textinfo_page1_right[] = {
	{ mss_st.texts + MSS_TEXT_POW, TmBuff_MssR0 + TM_OFFSET(1, 0),  TEXT_COLOR_SYSTEM_GOLD, 0, "Str" },
	{ mss_st.texts + MSS_TEXT_MAG, TmBuff_MssR0 + TM_OFFSET(1, 2),  TEXT_COLOR_SYSTEM_GOLD, 0, "Mag" },
	{ mss_st.texts + MSS_TEXT_SKL, TmBuff_MssR0 + TM_OFFSET(1, 4),  TEXT_COLOR_SYSTEM_GOLD, 0, "Skl" },
	{ mss_st.texts + MSS_TEXT_SPD, TmBuff_MssR0 + TM_OFFSET(1, 6),  TEXT_COLOR_SYSTEM_GOLD, 0, "Spd" },
	{ mss_st.texts + MSS_TEXT_DEF, TmBuff_MssR0 + TM_OFFSET(1, 8),  TEXT_COLOR_SYSTEM_GOLD, 0, "Def" },
	{ mss_st.texts + MSS_TEXT_RES, TmBuff_MssR0 + TM_OFFSET(1, 10), TEXT_COLOR_SYSTEM_GOLD, 0, "Res" },

	{ mss_st.texts + MSS_TEXT_LCK, TmBuff_MssR0 + TM_OFFSET(1, 12),  TEXT_COLOR_SYSTEM_GOLD, 0, "Lck" },
	{ mss_st.texts + MSS_TEXT_MOV, TmBuff_MssR0 + TM_OFFSET(1, 14),  TEXT_COLOR_SYSTEM_GOLD, 0, "Mov" },
	{ 0 }, // end
};

static void mss_put_page_right(ProcPtr proc)
{
	struct Unit *unit = mss_st.unit;

	PutStatScreenText(mss_textinfo_page1_right);

	mss_put_stat(0, 5, 0,  unit->pow, GetUnitPower(unit), GetUnitMaxStatusPow(unit), TmBuff_MssR2);
	mss_put_stat(1, 5, 2,  unit->mag, GetUnitMagic(unit), GetUnitMaxStatusMag(unit), TmBuff_MssR2);
	mss_put_stat(2, 5, 4,  unit->skl, GetUnitSkill(unit), GetUnitMaxStatusSkl(unit), TmBuff_MssR2);
	mss_put_stat(3, 5, 6,  unit->spd, GetUnitSpeed(unit), GetUnitMaxStatusSpd(unit), TmBuff_MssR2);
	mss_put_stat(4, 5, 8,  unit->def, GetUnitDefense(unit), GetUnitMaxStatusDef(unit), TmBuff_MssR2);
	mss_put_stat(5, 5, 10, unit->res, GetUnitResistance(unit), GetUnitMaxStatusRes(unit), TmBuff_MssR2);
	mss_put_stat(6, 5, 12, unit->lck, GetUnitLuck(unit), GetUnitMaxStatusLck(unit), TmBuff_MssR2);
}

static void mss_prepare_display(ProcPtr proc)
{

	mss_put_page_upper(proc);
	mss_put_page_left(proc);
	mss_put_page_right(proc);

	TmCopyRect(TmBuff_MssU0, gBg0Tm + TM_OFFSET(0, 0), 30, 6);
	TmCopyRect(TmBuff_MssU1, gBg1Tm + TM_OFFSET(0, 0), 30, 6);
	TmCopyRect(TmBuff_MssL0, gBg0Tm + TM_OFFSET(0, 6), 20, 14);
	TmCopyRect(TmBuff_MssL1, gBg1Tm + TM_OFFSET(0, 6), 20, 14);
	TmCopyRect(TmBuff_MssL2, gBg2Tm + TM_OFFSET(0, 6), 20, 14);
	TmCopyRect(TmBuff_MssR0, gBg0Tm + TM_OFFSET(20, 2), 12, 16);
	TmCopyRect(TmBuff_MssR2, gBg2Tm + TM_OFFSET(20, 2), 12, 16);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);
}

static void mss_end(ProcPtr proc)
{
	SetBlendNone();

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);
	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	Proc_End(FindProc(proc_mss_sprites));
}

/**
 * sprites
 */
static void mss_sprites_init(ProcPtr proc)
{
	Decompress(Img_MssSprites, OBJ_VRAM0 + OBCHR_MSS_SPRITES * CHR_SIZE);
	ApplyIconPalette(1, 0x10 + OBPAL_MSS_SPRITES);
}

static const u16 sprite_left_window[] = {
	20,
	OAM0_SHAPE_8x32  + OAM0_Y(0) + OAM0_BLEND, OAM1_SIZE_8x32 + OAM1_HFLIP + OAM1_X(-8), OAM2_CHR(0x4),
	OAM0_SHAPE_8x32  + OAM0_Y(32) + OAM0_BLEND, OAM1_SIZE_8x32 + OAM1_HFLIP + OAM1_X(-8) + OAM1_VFLIP, OAM2_CHR(0x4),
	OAM0_SHAPE_8x32  + OAM0_Y(60) + OAM0_BLEND, OAM1_SIZE_8x32 + OAM1_HFLIP + OAM1_X(-8) + OAM1_VFLIP, OAM2_CHR(0x4),
	OAM0_SHAPE_8x32  + OAM0_Y(90) + OAM0_BLEND, OAM1_SIZE_8x32 + OAM1_HFLIP + OAM1_X(-8) + OAM1_VFLIP, OAM2_CHR(0x4),
	OAM0_SHAPE_8x32  + OAM0_Y(108) + OAM0_BLEND, OAM1_SIZE_8x32 + OAM1_HFLIP + OAM1_X(-8) + OAM1_VFLIP, OAM2_CHR(0x4),

	OAM0_SHAPE_32x32 + OAM0_Y(0) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(0), 0,
	OAM0_SHAPE_32x32 + OAM0_Y(0) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(32), 0,

	OAM0_SHAPE_32x32 + OAM0_Y(32) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(0), 0,
	OAM0_SHAPE_32x32 + OAM0_Y(32) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(32), 0,

	OAM0_SHAPE_32x32 + OAM0_Y(64) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(0), 0,
	OAM0_SHAPE_32x32 + OAM0_Y(64) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(32), 0,

	OAM0_SHAPE_32x32 + OAM0_Y(96) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(0), 0,
	OAM0_SHAPE_32x32 + OAM0_Y(96) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(32), 0,

	OAM0_SHAPE_32x32 + OAM0_Y(108) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(0), 0,
	OAM0_SHAPE_32x32 + OAM0_Y(108) + OAM0_BLEND, OAM1_SIZE_32x32 + OAM1_X(32), 0,

	OAM0_SHAPE_8x32  + OAM0_Y(0) + OAM0_BLEND, OAM1_SIZE_8x32  + OAM1_X(64), OAM2_CHR(0x4),
	OAM0_SHAPE_8x32  + OAM0_Y(32) + OAM0_BLEND, OAM1_SIZE_8x32  + OAM1_X(64) + OAM1_VFLIP, OAM2_CHR(0x4),
	OAM0_SHAPE_8x32  + OAM0_Y(60) + OAM0_BLEND, OAM1_SIZE_8x32  + OAM1_X(64) + OAM1_VFLIP, OAM2_CHR(0x4),
	OAM0_SHAPE_8x32  + OAM0_Y(90) + OAM0_BLEND, OAM1_SIZE_8x32  + OAM1_X(64) + OAM1_VFLIP, OAM2_CHR(0x4),
	OAM0_SHAPE_8x32  + OAM0_Y(108) + OAM0_BLEND, OAM1_SIZE_8x32  + OAM1_X(64) + OAM1_VFLIP, OAM2_CHR(0x4),
};

static void mss_sprites_loop(ProcPtr proc)
{
	PutSprite(
		12,
		166, 12,
		sprite_left_window,
		OAM2_CHR(OBCHR_MSS_SPRITES) + OAM2_PAL(OBPAL_MSS_SPRITES) + OAM2_LAYER(3)
	);
}

static const struct ProcScr proc_mss_sprites[] = {
	PROC_CALL(mss_sprites_init),
	PROC_YIELD,
	PROC_REPEAT(mss_sprites_loop),
	PROC_END
};

/**
 * main
 */
static const struct ProcScr proc_modern_statscreen[] = {
	PROC_CALL(LockBmDisplay),

	/* remove map-ui */
	PROC_CALL(mss_hide_mapui),
	PROC_YIELD,

	PROC_CALL(StartGreenText),
	PROC_CALL(mss_init),
	PROC_YIELD,
	PROC_CALL(mss_prepare_display),

	PROC_REPEAT(mss_main),

	PROC_CALL(mss_end),
	PROC_YIELD,
	PROC_CALL(UnlockBmDisplay),
	PROC_CALL(EndGreenText),
	PROC_END,
};

void StartModernStatScreen(struct Unit *unit, ProcPtr parent)
{
	mss_st.unit = unit;
	mss_st.help = NULL;
	mss_st.page = 0;
	mss_st.page_count = 4;

	PidStatsAddStatView(unit->pinfo->id);
	PlaySe(SONG_6A);

	SpawnProcLocking(proc_modern_statscreen, parent);
}
