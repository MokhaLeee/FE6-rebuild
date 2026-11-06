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
#include "sprite.h"
#include "oam.h"
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

enum mss_slide_ops {
	MSS_SLIDE_IN,
	MSS_SLIDE_OUT,
	MSS_SLIDE_NONE,
};

/*
 * The page label and arrows sit on top of the right panel, so they follow its
 * horizontal slide: off-screen while the panel is out, then back in with it.
 */
static int mss_page_slide_offset(struct ProcMss *mss)
{
	if (mss->slide_mode == MSS_SLIDE_OUT)
		return mss->slide_r.step * 8;

	if (mss->slide_mode == MSS_SLIDE_IN)
		return (MSS_R_WIDTH - mss->slide_r.step) * 8;

	return 0;
}

static const struct ProcScr ProcScr_mss_sprites[];

/**
 * Text slots are rebuilt for every page instead of being registered once at
 * start-up. InitText() carves each text's glyph tiles out of the font's VRAM in
 * list order, so one combined list would keep all three pages' slots reserved at
 * the same time. Clearing the counter and re-initializing per page lets each
 * page reserve only the slots it actually draws.
 */
static const struct TextInitInfo mss_text_init_info_upper[] = {
	{ &gMssSt.texts[MSS_TEXT_PNAME], 7 },
	{ &gMssSt.texts[MSS_TEXT_JNAME], 7 },

	{}
};

static const struct TextInitInfo mss_text_init_info_page0[] = {
	{ &gMssSt.texts[MSS_TEXT_P1_SKILLS], 5 },
	{ &gMssSt.texts[MSS_TEXT_P1_BMAGS], 5 },
	{ &gMssSt.texts[MSS_TEXT_POW], 3 },
	{ &gMssSt.texts[MSS_TEXT_MAG], 5 },
	{ &gMssSt.texts[MSS_TEXT_SKL], 3 },
	{ &gMssSt.texts[MSS_TEXT_SPD], 3 },
	{ &gMssSt.texts[MSS_TEXT_LCK], 3 },
	{ &gMssSt.texts[MSS_TEXT_DEF], 3 },
	{ &gMssSt.texts[MSS_TEXT_RES], 3 },
	{ &gMssSt.texts[MSS_TEXT_MOV], 3 },

	{}
};

static const struct TextInitInfo mss_text_init_info_page1[] = {
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
	{ &gMssSt.texts[MSS_TEXT_P2_RNG], 9 },

	{}
};

static const struct TextInitInfo mss_text_init_info_page2[] = {
	{ &gMssSt.texts[MSS_TEXT_SUPPORT1], 7 },
	{ &gMssSt.texts[MSS_TEXT_SUPPORT2], 7 },
	{ &gMssSt.texts[MSS_TEXT_SUPPORT3], 7 },
	{ &gMssSt.texts[MSS_TEXT_SUPPORT4], 7 },
	{ &gMssSt.texts[MSS_TEXT_SUPPORT5], 7 },
	{ &gMssSt.texts[MSS_TEXT_NOSUPPORT], 8 },
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

static const struct TextInitInfo *const mss_text_init_info_pages[] = {
	mss_text_init_info_page0,
	mss_text_init_info_page1,
	mss_text_init_info_page2,
};

void Mss_InitPageText(int page)
{
	ResetTextFont();
	InitTextList(mss_text_init_info_upper);

	if (page >= 0 && page < (int)ARRAY_COUNT(mss_text_init_info_pages))
		InitTextList(mss_text_init_info_pages[page]);
}

static void mss_main(struct ProcMss *proc)
{
	if (gKeySt->pressed & KEY_BUTTON_B) {
		Proc_Goto(proc, PL_MSS_END);
		PlaySe(SONG_6B);
		return;
	}

	if (gKeySt->repeated & KEY_DPAD_LEFT) {
		proc->page_to_change = proc->page - 1;
		if (proc->page_to_change < 0)
			proc->page_to_change = proc->page_count - 1;

		Proc_Goto(proc, PL_MSS_SLIDE_PAGE);
		return;
	}

	if (gKeySt->repeated & KEY_DPAD_RIGHT) {
		proc->page_to_change = proc->page + 1;
		if (proc->page_to_change >= proc->page_count)
			proc->page_to_change = 0;

		Proc_Goto(proc, PL_MSS_SLIDE_PAGE);
		return;
	}

	if (gKeySt->repeated & KEY_DPAD_UP) {
		proc->unit_to_change = FindNextStatScreenUnit(gMssSt.unit, -1);
		Proc_Goto(proc, PL_MSS_SLIDE_PAGEUNIT);
		return;
	}

	if (gKeySt->repeated & KEY_DPAD_DOWN) {
		proc->unit_to_change = FindNextStatScreenUnit(gMssSt.unit, +1);
		Proc_Goto(proc, PL_MSS_SLIDE_PAGEUNIT);
		return;
	}
}

static void mss_init(struct ProcMss *proc)
{
	struct Unit *unit = gMssSt.unit;

	proc->slide_mode = MSS_SLIDE_IN;
	proc->slide_u.step = 0;
	proc->slide_l.step = 0;
	proc->slide_r.step = 0;

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

	ApplyIconPalettes(BGPAL_MSS_ICON0);
	ApplyPalette(Pal_MssUI, BGPAL_MSS_UI);
	ApplyPalette(Pal_MssUI2, BGPAL_MSS_STATBAR);
	Decompress(Img_MssUI, (u8 *)BG_VRAM + BGCHR_MSS_UI * CHR_SIZE);
	Decompress(Img_MssUI2, (u8 *)BG_VRAM + BGCHR_MSS_UI2 * CHR_SIZE);

	BattleGenerateDisplayStats(unit, GetUnitEquippedWeaponSlot(unit));

	proc->proc_sprite = SpawnProc(ProcScr_mss_sprites, proc);
}

static void mss_end(struct ProcMss *proc)
{
	SetBlendNone();

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);
	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	Proc_End(proc->proc_sprite);
}

/**
 * sprites
 */
static void mss_sprites_init(struct ProcMssSprite *proc)
{
	Decompress(Img_MssSprites, OBJ_VRAM0 + OBCHR_MSS_SPRITES * CHR_SIZE);
	ApplyIconPalette(1, 0x10 + OBPAL_MSS_SPRITES);

	Decompress(Img_MssTitles, OBJ_VRAM0 + OBCHR_MSS_TITLES * CHR_SIZE);
	ApplyPalette(Pal_MssTitles, 0x10 + OBPAL_MSS_TITLES);

	proc->clock_left = 0;
	proc->clock_right = 0;
	proc->anim_speed_left = 4;
	proc->anim_speed_right = 4;
}

static const char *const s_left_titles[] = { "SKILLS", "ITEMS", "SUPPORT" };
static const char *const s_right_titles[] = { "STATS", "COMBAT", "WEAPON" };

static void mss_put_title_sprite(const char *str, int x, int y, int oam2)
{
	int i;

	for (i = 0; str[i] != '\0'; i++) {
		int idx = (str[i] == ' ') ? 26 : (str[i] - 'A');

		PutSprite(1, x + i * 8, y, Sprite_8x8, oam2 + idx * 2);
		PutSprite(1, x + i * 8, y + 8, Sprite_8x8, oam2 + idx * 2 + 1);
	}
}

static const u8 s_mss_title_wave[64] = {
	128, 140, 152, 165, 176, 188, 198, 208, 218, 226, 234, 240, 245, 250, 253, 254,
	255, 254, 253, 250, 245, 240, 234, 226, 218, 208, 198, 188, 176, 165, 152, 140,
	128, 115, 103, 90, 79, 67, 57, 47, 37, 29, 21, 15, 10, 5, 2, 1,
	0, 1, 2, 5, 10, 15, 21, 29, 37, 47, 57, 67, 79, 90, 103, 115,
};

static void mss_update_title_palette(void)
{
	u16 *pal = gPal + (0x10 + OBPAL_MSS_TITLES) * 0x10 + 2;
	int phase = (GetGameTime() / 4) & 63;
	int i;

	for (i = 0; i < 11; i++) {
		int wave = s_mss_title_wave[(phase + i * 4) & 63];
		int r = 21 + (((31 - 21) * wave) >> 8);
		int g = 13 + (((30 - 13) * wave) >> 8);
		int b = 4 + (((15 - 4) * wave) >> 8);

		pal[i] = RGB(r, g, b);
	}

	EnablePalSync();
}

static void mss_sprites_loop(struct ProcMssSprite *proc)
{
	struct ProcMss *mss = proc->proc_parent;
	int base_oam2 = OAM2_CHR(OBCHR_MSS_SPRITES) + OAM2_PAL(OBPAL_MSS_SPRITES) + OAM2_LAYER(0);
	int page_dx = mss_page_slide_offset(mss);

	proc->clock_left += proc->anim_speed_left;
	proc->clock_right += proc->anim_speed_right;

	/**
	 * page index
	 */
	PutSprite(1, 185 + page_dx, 150, Sprite_8x8, base_oam2 + 0x64 + mss->page + 1);
	PutSprite(1, 193 + page_dx, 150, Sprite_8x8, base_oam2 + 5);
	PutSprite(1, 202 + page_dx, 150, Sprite_8x8, base_oam2 + 0x64 + mss->page_count);

	/**
	 * arrow
	 */
	PutSprite(1, 175 + page_dx, 147, Sprite_8x16, base_oam2 + 0x4A + k_umod(proc->clock_left >> 5, 6));
	PutSprite(1, 212 + page_dx, 147, Sprite_8x16_HFlipped, base_oam2 + 0x4A + k_umod(proc->clock_right >> 5, 6));

	/**
	 * panel titles
	 */
	if (mss->page >= 0 && mss->page < 3) {
		int title_oam2 = OAM2_CHR(OBCHR_MSS_TITLES) + OAM2_PAL(OBPAL_MSS_TITLES) + OAM2_LAYER(1);
		int lx = 8, rx = 168;

		if (mss->slide_mode == MSS_SLIDE_OUT) {
			lx -= mss->slide_l.step * 16;
			rx += mss->slide_r.step * 8;
		} else if (mss->slide_mode == MSS_SLIDE_IN) {
			lx -= (MSS_L_WIDTH - mss->slide_l.step * 2) * 8;
			rx += (MSS_R_WIDTH - mss->slide_r.step) * 8;
		}

		mss_put_title_sprite(s_left_titles[mss->page], lx, 44, title_oam2);
		mss_put_title_sprite(s_right_titles[mss->page], rx, 4, title_oam2);

		mss_update_title_palette();
	}
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
enum { MSS_SLIDE_EASE_MAX = 16 };

/* ease-out: fast start, slow settle */
static const u8 s_mss_ease_out[MSS_SLIDE_EASE_MAX + 1] = {
	0, 3, 6, 8, 10, 11, 12, 13, 14, 15, 15, 16, 16, 16, 16, 16, 16
};

static void mss_slide_init(struct MssSlideState *slide, int delay, int length)
{
	slide->step = 0;
	slide->delay = delay;
	slide->clock = 0;
	slide->length = length;
}

static int mss_slide_tick(struct MssSlideState *slide, int max)
{
	int t;

	if (slide->delay > 0) {
		slide->delay--;
		return 0;
	}

	t = k_udiv(slide->clock * MSS_SLIDE_EASE_MAX, slide->length);
	if (t > MSS_SLIDE_EASE_MAX)
		t = MSS_SLIDE_EASE_MAX;

	slide->step = k_udiv(max * s_mss_ease_out[t], MSS_SLIDE_EASE_MAX);

	if (slide->clock < slide->length)
		slide->clock++;

	return slide->step;
}

/*
 * Panels slide independently: U from the top, L from the left, R from the right.
 * OUT order is U -> R -> L, IN order is L -> U -> R, giving a wave-like feel.
 */
static void mss_init_slide_unit_out(struct ProcMss *proc)
{
	proc->slide_mode = MSS_SLIDE_OUT;
	mss_slide_init(&proc->slide_u, 0, 8);
	mss_slide_init(&proc->slide_r, 2, 10);
	mss_slide_init(&proc->slide_l, 4, 12);
}

static void mss_init_slide_unit_in(struct ProcMss *proc)
{
	proc->slide_mode = MSS_SLIDE_IN;
	mss_slide_init(&proc->slide_l, 0, 12);
	mss_slide_init(&proc->slide_u, 4, 8);
	mss_slide_init(&proc->slide_r, 8, 10);
}

static void mss_init_slide_page_out(struct ProcMss *proc)
{
	proc->slide_mode = MSS_SLIDE_OUT;
	mss_slide_init(&proc->slide_u, 0, 8);
	mss_slide_init(&proc->slide_r, 2, 10);
	mss_slide_init(&proc->slide_l, 4, 12);
}

static void mss_init_slide_page_in(struct ProcMss *proc)
{
	proc->slide_mode = MSS_SLIDE_IN;
	mss_slide_init(&proc->slide_l, 0, 12);
	mss_slide_init(&proc->slide_u, 3, 8);
	mss_slide_init(&proc->slide_r, 6, 10);
}

static void mss_slide_idle(struct ProcMss *proc)
{
	proc->slide_mode = MSS_SLIDE_NONE;
}

static void mss_apply_page(struct ProcMss *proc)
{
	proc->page = proc->page_to_change;
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
	int u = mss_slide_tick(&proc->slide_u, MSS_U_HIGHT);
	int l = mss_slide_tick(&proc->slide_l, MSS_L_WIDTH / 2);
	int r = mss_slide_tick(&proc->slide_r, MSS_R_WIDTH);

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);

	slide_up(u, MSS_SLIDE_IN);
	slide_left(l, MSS_SLIDE_IN);
	slide_right(r, MSS_SLIDE_IN);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	if (proc->slide_u.clock >= proc->slide_u.length
	 && proc->slide_l.clock >= proc->slide_l.length
	 && proc->slide_r.clock >= proc->slide_r.length)
		Proc_Break(proc);
}

static void mss_loop_unit_slideout(struct ProcMss *proc)
{
	int u = mss_slide_tick(&proc->slide_u, MSS_U_HIGHT);
	int l = mss_slide_tick(&proc->slide_l, MSS_L_WIDTH / 2);
	int r = mss_slide_tick(&proc->slide_r, MSS_R_WIDTH);

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);

	slide_up(u, MSS_SLIDE_OUT);
	slide_left(l, MSS_SLIDE_OUT);
	slide_right(r, MSS_SLIDE_OUT);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	if (proc->slide_u.clock >= proc->slide_u.length
	 && proc->slide_l.clock >= proc->slide_l.length
	 && proc->slide_r.clock >= proc->slide_r.length)
		Proc_Break(proc);
}

static void mss_loop_page_slidein(struct ProcMss *proc)
{
	int u = mss_slide_tick(&proc->slide_u, MSS_U_HIGHT);
	int l = mss_slide_tick(&proc->slide_l, MSS_L_WIDTH / 2);
	int r = mss_slide_tick(&proc->slide_r, MSS_R_WIDTH);

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);

	slide_up(u, MSS_SLIDE_IN);
	slide_left(l, MSS_SLIDE_IN);
	slide_right(r, MSS_SLIDE_IN);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	if (proc->slide_u.clock >= proc->slide_u.length
	 && proc->slide_l.clock >= proc->slide_l.length
	 && proc->slide_r.clock >= proc->slide_r.length)
		Proc_Break(proc);
}

static void mss_loop_page_slideout(struct ProcMss *proc)
{
	int u = mss_slide_tick(&proc->slide_u, MSS_U_HIGHT);
	int l = mss_slide_tick(&proc->slide_l, MSS_L_WIDTH / 2);
	int r = mss_slide_tick(&proc->slide_r, MSS_R_WIDTH);

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);

	slide_up(u, MSS_SLIDE_OUT);
	slide_left(l, MSS_SLIDE_OUT);
	slide_right(r, MSS_SLIDE_OUT);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	if (proc->slide_u.clock >= proc->slide_u.length
	 && proc->slide_l.clock >= proc->slide_l.length
	 && proc->slide_r.clock >= proc->slide_r.length)
		Proc_Break(proc);
}

static void mss_unit_change_prepare(struct ProcMss *proc)
{
	gMssSt.unit = proc->unit_to_change;
	gMssSt.help = NULL;

	proc->page_to_change = 0;
}

static void mss_unit_change_move_cam(struct ProcMss *proc)
{
	CameraMoveWatchPosition(proc, gMssSt.unit->x, gMssSt.unit->y);
	SetMapCursorPosition(gMssSt.unit->x, gMssSt.unit->y);
}

static void mss_unit_change_init_cursor(struct ProcMss *proc)
{
	proc->timer = 0;
}

static void mss_unit_change_wait_cursor(struct ProcMss *proc)
{
	PutMapCursor(gBmSt.cursor_sprite.x, gBmSt.cursor_sprite.y, MAP_CURSOR_DEFAULT);

	proc->timer++;
	if (proc->timer > 30)
		Proc_Break(proc);
}

/**
 * main
 */
static const struct ProcScr ProcScr_modern_statscreen[] = {
PROC_LABEL(PL_MSS_START),
	// PROC_CALL(LockBmDisplay),

	PROC_CALL(StartGreenText),
	PROC_CALL(mss_init),

PROC_LABEL(PL_MSS_SLIDE_UNIT_IN),
	PROC_YIELD,
	PROC_CALL(mss_apply_page),
	PROC_CALL(Mss_PreparePage),
	PROC_CALL(mss_init_slide_unit_in),
	PROC_REPEAT(mss_loop_unit_slidein),
	PROC_GOTO(PL_MSS_IDLE),

PROC_LABEL(PL_MSS_IDLE),
	PROC_CALL(mss_slide_idle),
	PROC_REPEAT(mss_main),

PROC_LABEL(PL_MSS_SLIDE_PAGE),
	PROC_CALL(mss_init_slide_page_out),
	PROC_REPEAT(mss_loop_page_slideout),
	PROC_YIELD,
	PROC_CALL(mss_apply_page),
	PROC_CALL(Mss_PreparePage),
	PROC_CALL(mss_init_slide_page_in),
	PROC_REPEAT(mss_loop_page_slidein),
	PROC_GOTO(PL_MSS_IDLE),

PROC_LABEL(PL_MSS_SLIDE_PAGEUNIT),
	PROC_CALL(mss_unit_change_prepare),

	/* common end process */
	PROC_CALL(mss_init_slide_unit_out),
	PROC_REPEAT(mss_loop_unit_slideout),
	PROC_CALL(mss_end),
	PROC_YIELD,
	PROC_CALL(EndGreenText),

	PROC_CALL(mss_unit_change_move_cam),
	PROC_YIELD,
	PROC_CALL(mss_unit_change_init_cursor),
	PROC_REPEAT(mss_unit_change_wait_cursor),
	PROC_GOTO(PL_MSS_START),

PROC_LABEL(PL_MSS_END),
	PROC_CALL(mss_init_slide_unit_out),
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
	proc->page_count = 3;
	proc->page_to_change = 0;
}
