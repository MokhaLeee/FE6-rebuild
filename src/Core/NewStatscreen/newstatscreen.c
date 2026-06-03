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
#include "constants/songs.h"
#include "constants/videoalloc_global.h"

#include "klib.h"

extern const u16 Tsa_Mss_Upper[];
extern const u16 Tsa_Mss_Left[];
extern const u16 Tsa_Mss_Right[];
extern const u8 Img_MssUI[];
extern const u16 Pal_MssUI[0x10];

static EWRAM_OVERLAY(0) u16 TmBuff_MssR2[0x1C0] = {}; // 12 * 14
static EWRAM_OVERLAY(0) u16 TmBuff_MssR1[0x1C0] = {}; // 12 * 14
static EWRAM_OVERLAY(0) u16 TmBuff_MssR0[0x1C0] = {}; // 12 * 14
static EWRAM_OVERLAY(0) u16 TmBuff_MssL2[0x1C0] = {}; // 18 * 14
static EWRAM_OVERLAY(0) u16 TmBuff_MssL1[0x1C0] = {}; // 18 * 14
static EWRAM_OVERLAY(0) u16 TmBuff_MssL0[0x1C0] = {}; // 18 * 14
static EWRAM_OVERLAY(0) u16 TmBuff_MssU1[0xC0] = {}; // 24 * 6
static EWRAM_OVERLAY(0) u16 TmBuff_MssU0[0xC0] = {}; // 24 * 6

enum videoalloc_mss {
	BGCHR_MSS_TEXT = 0,
	BGCHR_MSS_FACE = 0x2400 / 0x20,
	BGCHR_MSS_UI = 0x2800 / 0x20,
	BGCHR_MSS_STATBAR = 0x3000 / 0x20,

	BGPAL_MSS_TEXT = 0,
	BGPAL_MSS_UI = 1,
	BGPAL_MSS_STATBAR = 2,
	BGPAL_MSS_FACE = 3,
	BGPAL_MSS_ICON0 = 4,
	BGPAL_MSS_ICON1 = 5,
	BGPAL_MSS_TILESET = 6, // .. 15
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
	ApplyUiStatBarPal(BGPAL_MSS_STATBAR);
	ApplyPalette(Pal_MssUI, BGPAL_MSS_UI);
	Decompress(Img_MssUI, (u8 *)BG_VRAM + BGCHR_MSS_UI * CHR_SIZE);

	BattleGenerateDisplayStats(unit, GetUnitEquippedWeaponSlot(unit));

	CpuFastFill(0, TmBuff_MssU0, sizeof(TmBuff_MssU0));
	CpuFastFill(0, TmBuff_MssU1, sizeof(TmBuff_MssU1));

	CpuFastFill(0, TmBuff_MssL0, sizeof(TmBuff_MssL0));
	CpuFastFill(0, TmBuff_MssL1, sizeof(TmBuff_MssL1));
	CpuFastFill(0, TmBuff_MssL2, sizeof(TmBuff_MssL2));

	CpuFastFill(0, TmBuff_MssR0, sizeof(TmBuff_MssR0));
	CpuFastFill(0, TmBuff_MssR1, sizeof(TmBuff_MssR1));
	CpuFastFill(0, TmBuff_MssR2, sizeof(TmBuff_MssR2));
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
	x_offset = 6;

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
	x_offset = 15;

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

	/* affin */
	x_offset = 24;

	if (unit->pinfo->affinity)
		PutIcon(TmBuff_MssU0 + TM_OFFSET(x_offset, 1),
			GetUnitAffinityIcon(unit), TILEREF(0, BGPAL_ICONS + 1));
}

static struct StatScreenTextInfo const mss_textinfo_page1_left[] = {
	{ mss_st.texts + MSS_TEXT_POW, TmBuff_MssL0 + TM_OFFSET(1, 1),  TEXT_COLOR_SYSTEM_GOLD, 0, "Str" },
	{ mss_st.texts + MSS_TEXT_MAG, TmBuff_MssL0 + TM_OFFSET(1, 3),  TEXT_COLOR_SYSTEM_GOLD, 0, "Mag" },
	{ mss_st.texts + MSS_TEXT_SKL, TmBuff_MssL0 + TM_OFFSET(1, 5),  TEXT_COLOR_SYSTEM_GOLD, 0, "Skl" },
	{ mss_st.texts + MSS_TEXT_SPD, TmBuff_MssL0 + TM_OFFSET(1, 7),  TEXT_COLOR_SYSTEM_GOLD, 0, "Spd" },
	{ mss_st.texts + MSS_TEXT_DEF, TmBuff_MssL0 + TM_OFFSET(1, 9),  TEXT_COLOR_SYSTEM_GOLD, 0, "Def" },
	{ mss_st.texts + MSS_TEXT_RES, TmBuff_MssL0 + TM_OFFSET(1, 11), TEXT_COLOR_SYSTEM_GOLD, 0, "Res" },

	{ mss_st.texts + MSS_TEXT_LCK, TmBuff_MssL0 + TM_OFFSET(9, 1),  TEXT_COLOR_SYSTEM_GOLD, 0, "Luck" },
	{ mss_st.texts + MSS_TEXT_MOV, TmBuff_MssL0 + TM_OFFSET(9, 3),  TEXT_COLOR_SYSTEM_GOLD, 0, "Move" },
	{ 0 }, // end
};

static void mss_put_stat(int num, int x, int y, int base, int total, int max)
{
	int bonus = total - base;

	if (total > 30) {
		total = 30;
		bonus = total - base;
	}

	PutDrawUiGauge(
		BGCHR_MSS_STATBAR + 1 + num * 6, 6,
		TmBuff_MssL2 + TM_OFFSET(x - 2, y + 1),
		TILEREF(0, BGPAL_MSS_STATBAR),
		k_udiv(max * 41, 30),
		k_udiv(base * 41, 30),
		bonus > 0 ? k_udiv(bonus * 41, 30) : -k_udiv(-bonus * 41, 30));
}

static void mss_put_page_left(ProcPtr proc)
{
	struct Unit *unit = mss_st.unit;

	Decompress(Tsa_Mss_Left, gBuf);
	TmApplyTsa(TmBuff_MssL1, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));

	PutStatScreenText(mss_textinfo_page1_left);

	mss_put_stat(0, 5, 1, unit->pow, GetUnitPower(unit), GetUnitMaxStatusPow(unit));
	mss_put_stat(1, 5, 3, unit->mag, GetUnitMagic(unit), GetUnitMaxStatusMag(unit));
	mss_put_stat(2, 5, 5, unit->skl, GetUnitSkill(unit), GetUnitMaxStatusSkl(unit));
	mss_put_stat(3, 5, 7, unit->spd, GetUnitSpeed(unit), GetUnitMaxStatusSpd(unit));
	mss_put_stat(4, 5, 9, unit->def, GetUnitDefense(unit), GetUnitMaxStatusDef(unit));
	mss_put_stat(5, 5, 11, unit->res, GetUnitResistance(unit), GetUnitMaxStatusRes(unit));
	mss_put_stat(6, 13, 1, unit->lck, GetUnitLuck(unit), GetUnitMaxStatusLck(unit));
}

static void mss_put_page_right(ProcPtr proc)
{
	Decompress(Tsa_Mss_Right, gBuf);
	TmApplyTsa(TmBuff_MssR1, gBuf, TILEREF(BGCHR_MSS_UI, BGPAL_MSS_UI));
}

static void mss_prepare_display(ProcPtr proc)
{

	mss_put_page_upper(proc);
	mss_put_page_left(proc);
	mss_put_page_right(proc);

	TmCopyRect(TmBuff_MssU0, gBg0Tm + TM_OFFSET(0, 0), 30, 6);
	TmCopyRect(TmBuff_MssU1, gBg1Tm + TM_OFFSET(0, 0), 30, 6);
	TmCopyRect(TmBuff_MssL0, gBg0Tm + TM_OFFSET(0, 6), 18, 14);
	TmCopyRect(TmBuff_MssL1, gBg1Tm + TM_OFFSET(0, 6), 18, 14);
	TmCopyRect(TmBuff_MssL2, gBg2Tm + TM_OFFSET(0, 6), 18, 14);
	TmCopyRect(TmBuff_MssR0, gBg0Tm + TM_OFFSET(18, 6), 12, 14);
	TmCopyRect(TmBuff_MssR1, gBg1Tm + TM_OFFSET(18, 6), 12, 14);
	TmCopyRect(TmBuff_MssR2, gBg2Tm + TM_OFFSET(18, 6), 12, 14);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);
}

static void mss_end(ProcPtr proc)
{
	SetBlendNone();

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);
	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);
}

/**
 * main
 */
static const struct ProcScr procscr_modern_statscreen[] = {
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

	SpawnProcLocking(procscr_modern_statscreen, parent);
}
