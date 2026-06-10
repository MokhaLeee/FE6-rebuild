#pragma once

#include "prelude.h"

#include "proc.h"
#include "text.h"
#include "unit.h"
#include "save.h"

enum
{
	STATSCREEN_TEXT_PNAME,
	STATSCREEN_TEXT_JNAME,
	STATSCREEN_TEXT_UNUSED,
	STATSCREEN_TEXT_POW,
	STATSCREEN_TEXT_MAG,
	STATSCREEN_TEXT_SKL,
	STATSCREEN_TEXT_SPD,
	STATSCREEN_TEXT_LCK,
	STATSCREEN_TEXT_DEF,
	STATSCREEN_TEXT_RES,
	STATSCREEN_TEXT_MOV,
	STATSCREEN_TEXT_CON,
	STATSCREEN_TEXT_AID,
	STATSCREEN_TEXT_AFFIN,
	STATSCREEN_TEXT_TALK,
	STATSCREEN_TEXT_STAT,
	STATSCREEN_TEXT_TOTAL,
	// TODO: assert that there are as many items here than in inv
	STATSCREEN_TEXT_ITEM_A,
	STATSCREEN_TEXT_ITEM_B,
	STATSCREEN_TEXT_ITEM_C,
	STATSCREEN_TEXT_ITEM_D,
	STATSCREEN_TEXT_ITEM_E,
	STATSCREEN_TEXT_EQUIPRANGE,
	STATSCREEN_TEXT_EQUIPATTACK,
	STATSCREEN_TEXT_EQUIPHIT,
	STATSCREEN_TEXT_EQUIPCRIT,
	STATSCREEN_TEXT_EQUIPAVOID,
	STATSCREEN_TEXT_WEXP_A,
	STATSCREEN_TEXT_WEXP_B,
	STATSCREEN_TEXT_WEXP_C,
	STATSCREEN_TEXT_WEXP_D,
	STATSCREEN_TEXT_SUPPORT_A,
	STATSCREEN_TEXT_SUPPORT_B,
	STATSCREEN_TEXT_SUPPORT_C,
	STATSCREEN_TEXT_SUPPORT_D,
	STATSCREEN_TEXT_SUPPORT_E,
	STATSCREEN_TEXT_BWL,

	MAX_STATSCREEN_TEXT,
};

enum
{
	STATSCREEN_PAGE_PERSONALINFO,
	STATSCREEN_PAGE_ITEMS,
	STATSCREEN_PAGE_WEXPANDSUPPORTS,
	STATSCREEN_PAGE_SKILLS,

	STATSCREEN_PAGE_MAX
};

enum
{
	PAGE_FRAME_SCREEN_X = 12,
	PAGE_FRAME_SCREEN_Y = 2,
};

// TODO: rename (the use of "Info" in this name doesn't fit convention used elsewhere in the source)
// (tl;dr "Info" should imply const)
struct StatScreenInfo
{
	/* 00 */ u8 unk_00;
	/* 01 */ u8 unit_id;
	/* 02 */ u16 excluded_unit_flags;
};

struct StatScreenSt
{
	/* 00 */ u8 page;
	/* 01 */ u8 page_count;
	/* 02 */ u16 page_slide_key_bit;
	/* 04 */ i16 x_disp_off; // Note: Always 0, not properly taked into account by most things
	/* 06 */ i16 y_disp_off;
	/* 08 */ bool8 is_transitioning;
	/* 0C */ struct Unit * unit;
	/* 10 */ struct MuProc * mu;
	/* 14 */ struct HelpBoxInfo const * help;
	/* 18 */ struct Text text[MAX_STATSCREEN_TEXT];
};

struct StatScreenTextInfo
{
	/* 00 */ struct Text * text;
	/* 04 */ u16 * tm;
	/* 08 */ u8 color;
	/* 09 */ u8 x_offset;
	/* 0C */ char const *str;
};

struct MuralBackgroundProc
{
	/* 00 */ PROC_HEADER;
	/* 29 */ u8 pad_29[0x4C - 0x29];
	/* 4C */ i16 offset;
};

struct StatScreenPageSlideProc
{
	/* 00 */ PROC_HEADER;

	/* 29 */ u8 pad_29[0x4A - 0x29];
	/* 4A */ i16 new_page;
	/* 4C */ i16 clock;
	/* 4E */ u8 pad_4E[0x52 - 0x4E];
	/* 52 */ u16 key_bit;
};

struct StatScreenUnitSlideProc
{
	/* 00 */ PROC_HEADER;

	/* 29 */ u8 pad_29[0x38 - 0x29];
	/* 38 */ i32 direction;
	/* 3C */ i32 y_disp_init;
	/* 40 */ i32 y_disp_fini;
	/* 44 */ u8 pad_44[0x4A - 0x44];
	/* 4A */ i16 new_unit_id;
	/* 4C */ i16 clock;
};

struct StatScreenSpritesProc
{
	/* 00 */ PROC_HEADER;

	// sprites proc only
	/* 2A */ i16 x_left;
	/* 2C */ i16 x_right;
	/* 2E */ u16 clock_left;
	/* 30 */ u16 clock_right;
	/* 32 */ i16 anim_speed_left;
	/* 34 */ i16 anim_speed_right;

	// name sprite proc only
	/* 36 */ u8 page_id;
	/* 38 */ i16 vertical_scale; // int 6 == 1:1 (1.0) scale
};

void PutDrawUiGauge(int chr, int width, u16 * tm, int tileref, int dot_width, int dot_plain, int dot_bonus);

void BackgroundSlide_Init(struct MuralBackgroundProc * proc);
void BackgroundSlide_Loop(struct MuralBackgroundProc * proc);
ProcPtr StartMuralBackground(ProcPtr parent, void * vram, int pal);
void EndMuralBackground(void);

int GetLastStatScreenUnitId(void);
void SetStatScreenLastUnitId(int unit_id);
void SetStatScreenExcludedUnitFlags(int flags);
void InitStatScreenText(void);
void PutStatScreenText(struct StatScreenTextInfo const * list);
void PutStatScreenLeftPanelInfo(void);
void PutStatScreenStatWithBar(int num, int x, int y, int base, int total, int max);
void PutStatScreenPersonalInfoPage(void);
void PutStatScreenItemsPage(void);
void PutStatScreenWeaponExpAndSupportsPage(void);
void PutStatScreenPage(int page_id);
struct Unit * FindNextStatScreenUnit(struct Unit * current_unit, int iter_step);
void StatScreenPageSlide_Loop(struct StatScreenPageSlideProc * proc);
void StatScreenPageSlide_End(struct StatScreenPageSlideProc * proc);
void StartStatScreenPageSlide(fu16 key_bit, int new_page, ProcPtr parent);
void StatScreenUnitSlide_FadeOutInit(struct StatScreenUnitSlideProc * proc);
void StatScreenUnitSlide_FadeOutLoop(struct StatScreenUnitSlideProc * proc);
void StatScreenUnitSlide_FadeInInit(struct StatScreenUnitSlideProc * proc);
void StatScreenUnitSlide_FadeInLoop(struct StatScreenUnitSlideProc * proc);
void StatScreenUnitSlide_ChangeUnit(struct StatScreenUnitSlideProc * proc);
void StatScreenUnitSlide_End(struct StatScreenUnitSlideProc * proc);
void StartStatScreenUnitSlide(struct Unit * unit, int direction, ProcPtr parent);
void PutUpdateStatScreenPageName(int page_id);
void StatScreenPageName_Init(struct StatScreenSpritesProc * proc);
void StatScreenPageName_Main(struct StatScreenSpritesProc * proc);
void StatScreenPageName_CloseMain(struct StatScreenSpritesProc * proc);
void StatScreenPageName_OpenMain(struct StatScreenSpritesProc * proc);
void StatScreenSprites_Init(struct StatScreenSpritesProc * proc);
void StatScreenSprites_BumpCheck(struct StatScreenSpritesProc * proc);
void StatScreenSprites_PutArrows(struct StatScreenSpritesProc * proc);
void StatScreenSprites_PutNumberLabel(struct StatScreenSpritesProc * proc);
void StatScreenSprites_PutMuAreaSprites(struct StatScreenSpritesProc * proc);
void StatScreenSprites_PutRescueMarkers(struct StatScreenSpritesProc * proc);
void StatScreen_DisableScreen(ProcPtr proc);
void StatScreen_Init(ProcPtr proc);
void StatScreen_InitUnit(ProcPtr proc);
void StatScreen_Main(ProcPtr proc);
void StatScreen_BackUpStatus(ProcPtr proc);
void StatScreen_UpdateLastHelpInfo(ProcPtr proc);
void SyncStatScreenBgOffset(void);
void StatScreen_CleanUp(ProcPtr proc);
void StartStatScreen(struct Unit * unit, ProcPtr parent);
void StartStatScreenHelp(int page_id, ProcPtr proc);

void HelpBoxPopulateStatScreenItem(struct HelpBoxProc * proc);
void HelpBoxPopulateStatScreenStatus(struct HelpBoxProc * proc);
void HelpBoxPopulateStatScreenPower(struct HelpBoxProc * proc);
void HelpBoxRedirectStatScreenItem(struct HelpBoxProc * proc);
void HelpBoxPopulateStatScreenWeaponExp(struct HelpBoxProc * proc);
void HelpBoxPopulateStatScreenPInfo(struct HelpBoxProc * proc);
void HelpBoxPopulateStatScreenJInfo(struct HelpBoxProc * proc);
void HelpBoxRedirectStatScreenSupports(struct HelpBoxProc * proc);

extern struct ProcScr CONST_DATA ProcScr_BackgroundSlide[];
extern struct ProcScr CONST_DATA ProcScr_StatScreenPageSlide[];
extern struct ProcScr CONST_DATA ProcScr_StatScreenUnitSlide[];
extern struct ProcScr CONST_DATA ProcScr_StatScreenPageName[];
extern struct ProcScr CONST_DATA ProcScr_StatScreenSprites[];
extern struct ProcScr CONST_DATA ProcScr_SyncStatScreenBgOffset[];
extern struct ProcScr CONST_DATA ProcScr_StatScreen[];

extern struct StatScreenInfo gStatScreenInfo;
extern struct StatScreenSt gStatScreenSt;

/**
 * statscreenfx
 */
enum {
	STATSCREEN_BG1_WIDTH  = 19,
	STATSCREEN_BG1_HEIGHT = 19,

	STATSCREEN_LEFT_WIDTH  = 12,
	STATSCREEN_LEFT_HEIGHT = 13,
};

struct StatScreenBg1Tsa {
	u8 width, height;
	u16 data[STATSCREEN_BG1_WIDTH * STATSCREEN_BG1_HEIGHT + 1];
};

extern struct StatScreenBg1Tsa const *const TsaLut_StatScreenBgPlayer[5];
extern struct StatScreenBg1Tsa const *const TsaLut_StatScreenBgNonePlayer[5];

void InstallExpandedTextPal(void);

/**
 * modern statscreen
 */
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

enum mss_proc_label {
	PL_MSS_IDLE,
	PL_MSS_SLIDE_UNIT_IN,
	PL_MSS_SLIDE_UNIT_OUT,
	PL_MSS_SLIDE_PAGE,

	PL_MSS_END,
};

struct ProcMssSprite {
	PROC_HEADER;

	u16 clock_left;
	u16 clock_right;
	i16 anim_speed_left;
	i16 anim_speed_right;
};

struct ProcMss {
	PROC_HEADER;
	struct ProcMssSprite *proc_sprite;

	int slide_step;
	i8 page, page_count;
	u16 excluded_unit_flags;
};

void StartModernStatScreen(struct Unit *unit, ProcPtr parent);

void Mss_PreparePage(struct ProcMss *proc);

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

	MSS_TEXT_P1_SKILLS,
	MSS_TEXT_P1_BMAGS,

	MSS_TEXT_P2_ATK,
	MSS_TEXT_P2_HIT,
	MSS_TEXT_P2_CRT,
	MSS_TEXT_P2_AVO,
	MSS_TEXT_P2_DDG,
	MSS_TEXT_P2_SIL,
	MSS_TEXT_P2_RNG,

	MSS_TEXT_ITEM1,
	MSS_TEXT_ITEM2,
	MSS_TEXT_ITEM3,
	MSS_TEXT_ITEM4,
	MSS_TEXT_ITEM5,

	MSS_TEXT_P3_WEXP1,
	MSS_TEXT_P3_WEXP2,
	MSS_TEXT_P3_WEXP3,
	MSS_TEXT_P3_WEXP4,
	MSS_TEXT_P3_WEXP5,
	MSS_TEXT_P3_WEXP6,
	MSS_TEXT_P3_WEXP7,
	MSS_TEXT_P3_WEXP8,

	MSS_TEXT_MAX,
};

struct ModStatScreenSt {
	struct Unit *unit;
	const struct HelpBoxInfo *help;
	struct Text texts[MSS_TEXT_MAX];
};
extern struct ModStatScreenSt gMssSt;

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
	MSS_R_HIGHT = 20,
	MSS_R_X = 20,
	MSS_R_Y = 0,
};

extern EWRAM_OVERLAY(0) u16 TmBuff_MssU0[MSS_U_HIGHT * 0x20];
extern EWRAM_OVERLAY(0) u16 TmBuff_MssU2[MSS_U_HIGHT * 0x20];

extern EWRAM_OVERLAY(0) u16 TmBuff_MssL0[MSS_L_HIGHT * 0x20];
extern EWRAM_OVERLAY(0) u16 TmBuff_MssL2[MSS_L_HIGHT * 0x20];
extern EWRAM_OVERLAY(0) u16 TmBuff_MssL1[MSS_L_HIGHT * 0x20];

extern EWRAM_OVERLAY(0) u16 TmBuff_MssR0[MSS_R_HIGHT * 0x20];
extern EWRAM_OVERLAY(0) u16 TmBuff_MssR1[MSS_R_HIGHT * 0x20];
extern EWRAM_OVERLAY(0) u16 TmBuff_MssR2[MSS_R_HIGHT * 0x20];

#define gUiTmScratchA TmBuff_MssR0
#define gUiTmScratchB TmBuff_MssR1
#define gUiTmScratchC TmBuff_MssR2

extern const u16 Tsa_Mss_Upper[];
extern const u16 Tsa_Mss_Left[];
extern const u16 Tsa_Mss_Right[];
extern const u8 Img_MssUI[];
extern const u16 Pal_MssUI[0x10];
extern const u8 Img_MssUI2[];
extern const u16 Pal_MssUI2[0x10];
extern const u8 Img_MssSprites[];
