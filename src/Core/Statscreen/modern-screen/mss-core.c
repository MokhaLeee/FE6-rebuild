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
EWRAM_OVERLAY(0) u16 TmBuff_MssD0[MSS_DUAL_HIGHT * 0x20] = {}; // 20 * 32
EWRAM_OVERLAY(0) u16 TmBuff_MssD1[MSS_DUAL_HIGHT * 0x20] = {}; // 20 * 32
EWRAM_OVERLAY(0) u16 TmBuff_MssD2[MSS_DUAL_HIGHT * 0x20] = {}; // 20 * 32
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
	{ &gMssSt.texts[MSS_TEXT_P2_ITEMINFO], 19 },
	{ &gMssSt.texts[MSS_TEXT_P2_ATK], 4 },
	{ &gMssSt.texts[MSS_TEXT_P2_HIT], 5 },
	{ &gMssSt.texts[MSS_TEXT_P2_CRT], 3 },
	{ &gMssSt.texts[MSS_TEXT_P2_AVO], 3 },
	{ &gMssSt.texts[MSS_TEXT_P2_DDG], 5 },
	{ &gMssSt.texts[MSS_TEXT_P2_SIL], 5 },
	{ &gMssSt.texts[MSS_TEXT_P2_RNG], 9 },
	{ &gMssSt.texts[MSS_TEXT_P2_AS], 2 },

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

/*
 * Page 0 is the two-panel layout. It only needs the same attribute labels the
 * three-panel PERSONAL page uses; identity text comes from the shared upper
 * list.
 */
static const struct TextInitInfo mss_text_init_info_dual[] = {
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

static const struct TextInitInfo *const mss_text_init_info_pages[] = {
	mss_text_init_info_dual,  /* page 0: two-panel */
	mss_text_init_info_page0, /* page 1: PERSONAL */
	mss_text_init_info_page1, /* page 2: ITEMS */
	mss_text_init_info_page2, /* page 3: WEXP */
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

static void mss_load_gfx(struct ProcMss *proc)
{
	/*
	 * The map can leave its own colours in BG palette 0. Load the UI text
	 * palette explicitly, like the vanilla statscreen, so HP digits keep
	 * the blue text colours instead of blending into the HP bar.
	 */
	ApplyPalette(Pal_Text, BGPAL_MSS_TEXT);
	ApplyIconPalettes(BGPAL_MSS_ICON0);
	ApplyPalette(Pal_MssUI, BGPAL_MSS_UI);
	ApplyPalette(Pal_MssUI2, BGPAL_MSS_STATBAR);
	Decompress(Img_MssUI, (u8 *)BG_VRAM + BGCHR_MSS_UI * CHR_SIZE);
	Decompress(Img_MssUI2, (u8 *)BG_VRAM + BGCHR_MSS_UI2 * CHR_SIZE);

	/*
	 * Do not start drawing OAM sprites until the player-phase unit panel
	 * has disappeared. Its HP digits are OAM and used to be overwritten
	 * one frame before the panel's BG tiles were cleared, leaving two
	 * tan blocks where "18" should be.
	 */
	proc->proc_sprite = SpawnProc(ProcScr_mss_sprites, proc);
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

	BattleGenerateDisplayStats(unit, GetUnitEquippedWeaponSlot(unit));
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

#if CONFIG_MSS_TITLE_WHOLE_WORD
	Decompress(Img_MssTitles, OBJ_VRAM0 + OBCHR_MSS_TITLES * CHR_SIZE);
	ApplyPalette(Pal_MssTitles, 0x10 + OBPAL_MSS_TITLES);
#else
	Decompress(Img_MssTitleLetters, OBJ_VRAM0 + OBCHR_MSS_TITLES * CHR_SIZE);
	ApplyPalette(Pal_MssTitleLetters, 0x10 + OBPAL_MSS_TITLES);
#endif

	proc->clock_left = 0;
	proc->clock_right = 0;
	proc->anim_speed_left = 4;
	proc->anim_speed_right = 4;
}

#if CONFIG_MSS_TITLE_WHOLE_WORD

enum {
	MSS_TITLE_CHUNK_TILES = 2, /* 16x8 OAM = 2x1 tiles */
	MSS_TITLE_CHUNKS = 8,      /* 4 columns x 2 rows per 64x16 word */
};

static void mss_put_title_word(int word, int x, int y, int oam2)
{
	int base = oam2 + word * (MSS_TITLE_CHUNK_TILES * MSS_TITLE_CHUNKS);
	int row, col;

	for (row = 0; row < 2; row++) {
		for (col = 0; col < 4; col++) {
			int chunk = row * 4 + col;

			PutSprite(1, x + col * 16, y + row * 8, Sprite_16x8,
				base + chunk * MSS_TITLE_CHUNK_TILES);
		}
	}
}

#else

static const char *const s_left_titles[] = { "SKILLS", "ITEMS", "SUPPORT" };
static const char *const s_right_titles[] = { "STATS", "COMBAT", "WEAPON" };

static void mss_put_title_word(int word, int x, int y, int oam2)
{
	const char *str;
	int i;

	if (word < 3)
		str = s_left_titles[word];
	else
		str = s_right_titles[word - 3];

	for (i = 0; str[i] != '\0'; i++) {
		int idx = (str[i] == ' ') ? 26 : (str[i] - 'A');

		PutSprite(1, x + i * 8, y, Sprite_8x8, oam2 + idx * 2);
		PutSprite(1, x + i * 8, y + 8, Sprite_8x8, oam2 + idx * 2 + 1);
	}
}

#endif

static void mss_update_title_palette(void)
{
	int color_num = (GetGameTime() / 4) & 0x3F;

	/* Same 11-colour scrolling window as the vanilla statscreen page name. */
	CpuCopy16(
		gpPal_StatscreenPageNameFlashing + color_num,
		gPal + (0x10 + OBPAL_MSS_TITLES) * 0x10 + 2,
		sizeof(u16) * 11);

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
	{
		int title_oam2 = OAM2_CHR(OBCHR_MSS_TITLES) + OAM2_PAL(OBPAL_MSS_TITLES) + OAM2_LAYER(1);
		int lx = 8, rx = 168;

		if (mss->slide_mode == MSS_SLIDE_OUT) {
			lx -= mss->slide_l.step * 16;
			rx += mss->slide_r.step * 8;
		} else if (mss->slide_mode == MSS_SLIDE_IN) {
			lx -= (MSS_L_WIDTH - mss->slide_l.step * 2) * 8;
			rx += (MSS_R_WIDTH - mss->slide_r.step) * 8;
		}

		if (mss->page == 0) {
			/* two-panel page: the right panel keeps its title */
			mss_put_title_word(3, rx, 4, title_oam2);
		} else if (mss->page >= 1 && mss->page <= 3) {
			int p = mss->page - 1;

			mss_put_title_word(p, lx, 44, title_oam2);
			mss_put_title_word(3 + p, rx, 4, title_oam2);
		}

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

static void mss_init_slide_page_in(struct ProcMss *proc)
{
	proc->slide_mode = MSS_SLIDE_IN;
	mss_slide_init(&proc->slide_l, 0, 12);
	mss_slide_init(&proc->slide_u, 3, 8);
	mss_slide_init(&proc->slide_r, 6, 10);
}

/*
 * Two-panel layout: only the left and right panels take part, so the timing
 * table lists just those two.
 */
static void mss_init_slide_dual_out(struct ProcMss *proc)
{
	proc->slide_mode = MSS_SLIDE_OUT;
	mss_slide_init(&proc->slide_l, 0, 12);
	mss_slide_init(&proc->slide_r, 2, 10);
}

static void mss_init_slide_dual_in(struct ProcMss *proc)
{
	proc->slide_mode = MSS_SLIDE_IN;
	mss_slide_init(&proc->slide_l, 0, 12);
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

/*
 * Two-panel layout: the left panel spans the full height, so it needs its own
 * buffer set and its own blit. The right panel is the same as in the
 * three-panel layout, so it reuses slide_right().
 */
static void slide_dual_left(int step, enum mss_slide_ops ops)
{
	int len, src_off, dst_off;

	step = step * 2;

	if (step > MSS_DUAL_WIDTH)
		step = MSS_DUAL_WIDTH;

	switch (ops) {
	case MSS_SLIDE_IN:
		src_off = MSS_DUAL_WIDTH - step;
		dst_off = 0;
		len = MSS_DUAL_WIDTH - src_off;
		break;

	case MSS_SLIDE_OUT:
		src_off = step;
		dst_off = 0;
		len = MSS_DUAL_WIDTH - src_off;
		break;

	case MSS_SLIDE_NONE:
	default:
		src_off = 0;
		dst_off = 0;
		len = MSS_DUAL_WIDTH;
		break;
	}

	TmCopyRect(
		TmBuff_MssD0 + TM_OFFSET(src_off, 0),
		gBg0Tm + TM_OFFSET(MSS_DUAL_X + dst_off, MSS_DUAL_Y),
		len, MSS_DUAL_HIGHT);

	TmCopyRect(
		TmBuff_MssD1 + TM_OFFSET(src_off, 0),
		gBg1Tm + TM_OFFSET(MSS_DUAL_X + dst_off, MSS_DUAL_Y),
		len, MSS_DUAL_HIGHT);

	TmCopyRect(
		TmBuff_MssD2 + TM_OFFSET(src_off, 0),
		gBg2Tm + TM_OFFSET(MSS_DUAL_X + dst_off, MSS_DUAL_Y),
		len, MSS_DUAL_HIGHT);
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

static void mss_loop_dual_slidein(struct ProcMss *proc)
{
	int l = mss_slide_tick(&proc->slide_l, MSS_DUAL_WIDTH / 2);
	int r = mss_slide_tick(&proc->slide_r, MSS_R_WIDTH);

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);

	slide_dual_left(l, MSS_SLIDE_IN);
	slide_right(r, MSS_SLIDE_IN);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	if (proc->slide_l.clock >= proc->slide_l.length
	 && proc->slide_r.clock >= proc->slide_r.length)
		Proc_Break(proc);
}

static void mss_loop_dual_slideout(struct ProcMss *proc)
{
	int l = mss_slide_tick(&proc->slide_l, MSS_DUAL_WIDTH / 2);
	int r = mss_slide_tick(&proc->slide_r, MSS_R_WIDTH);

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);

	slide_dual_left(l, MSS_SLIDE_OUT);
	slide_right(r, MSS_SLIDE_OUT);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);

	if (proc->slide_l.clock >= proc->slide_l.length
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
 * slide procs
 *
 * Each layout owns the proc that performs its own slide, so a layout with a
 * different set of panels brings its own flow instead of sharing this one.
 * The core process only starts the proc that matches the current page and
 * waits for it to end: SpawnProcLocking() blocks the parent until the child
 * is done, which is exactly the wait we need.
 */
static const struct ProcScr ProcScr_mss_slide_in[] = {
	PROC_CALL(mss_init_slide_unit_in),
	PROC_REPEAT(mss_loop_unit_slidein),
	PROC_END,
};

static const struct ProcScr ProcScr_mss_slide_in_page[] = {
	PROC_CALL(mss_init_slide_page_in),
	PROC_REPEAT(mss_loop_page_slidein),
	PROC_END,
};

/* Page and unit transitions share the same slide-out timing. */
static const struct ProcScr ProcScr_mss_slide_out[] = {
	PROC_CALL(mss_init_slide_unit_out),
	PROC_REPEAT(mss_loop_unit_slideout),
	PROC_END,
};

/* Two-panel layout: left and right only. */
static const struct ProcScr ProcScr_mss_slide_dual_in[] = {
	PROC_CALL(mss_init_slide_dual_in),
	PROC_REPEAT(mss_loop_dual_slidein),
	PROC_END,
};

static const struct ProcScr ProcScr_mss_slide_dual_out[] = {
	PROC_CALL(mss_init_slide_dual_out),
	PROC_REPEAT(mss_loop_dual_slideout),
	PROC_END,
};

/*
 * Select the slide proc for the current page. Page 0 is the two-panel layout;
 * pages 1..3 use the three-panel layout.
 */
static const struct ProcScr *mss_slide_in_proc(struct ProcMss *proc)
{
	if (proc->page == 0)
		return ProcScr_mss_slide_dual_in;

	return ProcScr_mss_slide_in;
}

static const struct ProcScr *mss_slide_in_page_proc(struct ProcMss *proc)
{
	if (proc->page == 0)
		return ProcScr_mss_slide_dual_in;

	return ProcScr_mss_slide_in_page;
}

static void mss_spawn_slide_in(struct ProcMss *proc)
{
	SpawnProcLocking(mss_slide_in_proc(proc), proc);
}

static void mss_spawn_slide_in_page(struct ProcMss *proc)
{
	SpawnProcLocking(mss_slide_in_page_proc(proc), proc);
}

static void mss_spawn_slide_out(struct ProcMss *proc)
{
	if (proc->page == 0)
		SpawnProcLocking(ProcScr_mss_slide_dual_out, proc);
	else
		SpawnProcLocking(ProcScr_mss_slide_out, proc);
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
	PROC_YIELD,
	PROC_CALL(mss_load_gfx),
	PROC_CALL(mss_apply_page),
	PROC_CALL(Mss_PreparePage),
	PROC_CALL(mss_spawn_slide_in),
	PROC_YIELD,
	PROC_GOTO(PL_MSS_IDLE),

PROC_LABEL(PL_MSS_IDLE),
	PROC_CALL(mss_slide_idle),
	PROC_REPEAT(mss_main),

PROC_LABEL(PL_MSS_SLIDE_PAGE),
	/*
	 * SpawnProcLocking() only takes effect from the next frame, so the parent
	 * must stop here; that frame also stands in for the blank frame the old
	 * REPEAT-based flow left between the slide-out and the redraw.
	 */
	PROC_CALL(mss_spawn_slide_out),
	PROC_YIELD,
	PROC_CALL(mss_apply_page),
	PROC_CALL(Mss_PreparePage),
	PROC_CALL(mss_spawn_slide_in_page),
	PROC_YIELD,
	PROC_GOTO(PL_MSS_IDLE),

PROC_LABEL(PL_MSS_SLIDE_PAGEUNIT),
	PROC_CALL(mss_unit_change_prepare),

	/* common end process */
	PROC_CALL(mss_spawn_slide_out),
	PROC_YIELD,
	PROC_CALL(mss_end),
	PROC_YIELD,
	PROC_CALL(EndGreenText),

	PROC_CALL(mss_unit_change_move_cam),
	PROC_YIELD,
	PROC_CALL(mss_unit_change_init_cursor),
	PROC_REPEAT(mss_unit_change_wait_cursor),
	PROC_GOTO(PL_MSS_START),

PROC_LABEL(PL_MSS_END),
	PROC_CALL(mss_spawn_slide_out),
	PROC_YIELD,
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
	proc->page_to_change = 0;
}
