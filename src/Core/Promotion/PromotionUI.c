#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "item.h"
#include "action.h"
#include "bmio.h"
#include "util.h"
#include "armfunc.h"
#include "ui.h"
#include "mu.h"
#include "hardware.h"
#include "oam.h"
#include "chapter.h"
#include "banim.h"
#include "banim_data.h"
#include "statscreen.h"
#include "sound.h"
#include "unitsprite.h"
#include "arena.h"
#include "text.h"
#include "msg.h"

#include "constants/iids.h"
#include "constants/songs.h"

#include "demo-promotion.h"

/**
 * ekrfx
 */
EWRAM_OVERLAY_PROMOTION static struct EkrMainMiniDesc PromoEkrMiniDesc = {};
EWRAM_OVERLAY_PROMOTION static u16 PromoEkrMini_ImgBuf[0x1000] = {};
EWRAM_OVERLAY_PROMOTION static u16 PromoEkrMini_OamBuf[0x2C00] = {};
EWRAM_OVERLAY_PROMOTION static u16 PromoEkrMini_PalBuf[0x50] = {};
EWRAM_OVERLAY_PROMOTION static u8  PromoEkrMini_ScrBuf[0x2A00] = {};

EWRAM_OVERLAY_PROMOTION static struct EfxopMagicDesc PromoEkrMagiDesc = {};
EWRAM_OVERLAY_PROMOTION static u8 PromoEkrMagi_BgImgBuf[0x2000] = {};
EWRAM_OVERLAY_PROMOTION static u8 PromoEkrMagi_BgTsaBuf[0x800] = {};
EWRAM_OVERLAY_PROMOTION static u8 PromoEkrMagi_ObImgBuf[0x1000] = {};

EWRAM_OVERLAY_PROMOTION static struct EkrTerrainfxDesc PromoEkrTerrainDesc = {};
EWRAM_OVERLAY_PROMOTION static u8 PromoEkrTerrain_ImgBuf[0x2000] = {};


/**
 * promo-sel layout
 */
enum {
	PROMO_LIST_X = 1,
	PROMO_LIST_Y = 1,
	PROMO_LIST_COLS = 3,
	PROMO_LIST_ROWS = 4,
	PROMO_LIST_PITCH = 3,
	/* Left padding so the hand cursor fits inside the panel without covering icons. */
	PROMO_LIST_INSET = 8,
	PROMO_LIST_W = PROMO_LIST_COLS * PROMO_LIST_PITCH + 2,
	PROMO_LIST_H = PROMO_LIST_ROWS * PROMO_LIST_PITCH + 1,

	/* Scrollbar column on the right edge of the icon panel. */
	PROMO_SCROLL_X = 11,
	PROMO_SCROLL_UP_Y = 2,
	PROMO_SCROLL_DOWN_Y = 11,
	PROMO_SCROLL_TRACK_Y = 3,
	PROMO_SCROLL_H = 8,

	PROMO_TITLE_X = 9,
	PROMO_TITLE_Y = 0,
	PROMO_TITLE_W = 13,

	PROMO_DESC_X = 1,
	PROMO_DESC_Y = 14,
	PROMO_DESC_W = 28,
	PROMO_DESC_H = 6,

	PROMO_STATS_X = 22,
	PROMO_STATS_Y = 0,
	PROMO_STATS_W = 7,
	PROMO_STATS_H = 14,

	PROMO_MINI_X = 152,
	PROMO_MINI_Y = 80,
	PROMO_TERRAIN_X = PROMO_MINI_X - 0x30,
	PROMO_TERRAIN_Y = 96,

	PROMO_FX_IDLE,
	PROMO_FX_WAIT,
	PROMO_FX_OUT,
	PROMO_FX_IN,

	PROMO_FX_OFFSET = 0x60,
	PROMO_FX_WAIT_FRAMES = 4,
	PROMO_FX_OUT_FRAMES = 8,
	PROMO_FX_IN_FRAMES = 8,
};

/**
 * helpers
 */
static struct ProcPromoHandler *Promo_GetHandler(struct ProcPromoSel *proc)
{
	return proc->proc_parent->proc_parent;
}

static int Promo_GetJid(struct ProcPromoSel *proc)
{
	return proc->choices[proc->choice_idx];
}

static int Promo_GetRepresentativeWeapon(int kind)
{
	switch (kind) {
	case ITEM_KIND_SWORD:
		return IID_IRONSWORD;

	case ITEM_KIND_LANCE:
		return IID_IRONLANCE;

	case ITEM_KIND_AXE:
		return IID_IRONAXE;

	case ITEM_KIND_BOW:
		return IID_IRONBOW;

	case ITEM_KIND_ANIMA:
		return IID_FIRE;

	case ITEM_KIND_LIGHT:
		return IID_LIGHTNING;

	case ITEM_KIND_ELDER:
		return IID_FLUX;

	case ITEM_KIND_STAFF:
	default:
		return IID_HEALSTAFF;
	}
}

static int Promo_GetPreviewBid(struct Unit *unit, int jid)
{
	struct Unit tmp;
	struct JInfo const *jinfo = GetJInfo(jid);
	int kind, item;
	i16 bid;

	if (jinfo == NULL)
		return -1;

	tmp = *unit;
	tmp.jinfo = jinfo;

	kind = ArenaGetJobWeaponKind(jinfo);
	if (kind < 0)
		kind = ITEM_KIND_STAFF;

	item = Promo_GetRepresentativeWeapon(kind);
	bid = GetBattleAnimationId(&tmp, jinfo->banim_info, item);

	if (bid < 0 && jinfo->banim_info != NULL && jinfo->banim_info[0].wtype != 0)
		bid = jinfo->banim_info[0].index - 1;

	return bid;
}

static int Promo_DrawWrappedLine(const char *str, int len, u16 *tm, int x, int y,
                                 int width_tiles, int color, int max_lines)
{
	char buf[128];
	int line = 0;
	int pos = 0;

	while (pos < len && line < max_lines) {
		int end = pos;
		int last_space = -1;
		int width = 0;

		while (end < len) {
			i32 w;
			const char *next = GetCharTextLen(str + end, &w);
			int step = next - (str + end);

			if (step <= 0)
				break;

			if (width + w > width_tiles * 8)
				break;

			if (str[end] == ' ')
				last_space = end;

			width += w;
			end += step;
		}

		if (end == pos)
			end = pos + 1;

		if (end < len && last_space > pos)
			end = last_space;

		if (end - pos >= (int)sizeof(buf))
			end = pos + sizeof(buf) - 1;

		memcpy(buf, str + pos, end - pos);
		buf[end - pos] = '\0';

		PutDrawText(NULL, tm + TM_OFFSET(x, y + line * 2),
			color, 0, width_tiles, buf);

		pos = end;
		while (pos < len && str[pos] == ' ')
			pos++;

		line++;
	}

	return line;
}

static void Promo_DrawWrappedText(const char *str, u16 *tm, int x, int y,
                                  int width_tiles, int max_lines, int color)
{
	int line = 0;

	if (str == NULL)
		return;

	while (*str != '\0' && line < max_lines) {
		const char *end = GetStringLineEnd(str);
		int len = end - str;

		line += Promo_DrawWrappedLine(str, len, tm, x, y + line * 2,
			width_tiles, color, max_lines - line);

		if (*end == '\0')
			break;

		str = end + 1;
	}
}

/**
 * ekrfx
 */
static void promofx_ekrmagi_callback(void)
{
	gDispIo.bg2_ct.priority = 2;

	SetBlendConfig(1, 0x10, 0x10, 0);

	SetBlendTargetA(0, 0, 1, 0, 0);
	SetBlendTargetB(0, 0, 0, 1, 1);

	SetWinEnable(1, 0, 0);
	SetWin0Box(0, 0, 240, 160);

	SetWin0Layers(1, 1, 1, 1, 1);
	SetWOutLayers(1, 1, 0, 1, 1);

	gDispIo.win_ct.win0_enable_blend = 1;
	gDispIo.win_ct.wout_enable_blend = 0;
	gDispIo.blend_ct.target2_enable_bd = 1;
}

static void promofx_put_ekrmainmini(int bid, int char_pal, int x, int y, int round_type)
{
	struct EkrMainMiniDesc *mini_desc = &PromoEkrMiniDesc;
	struct EfxopMagicDesc  *magi_desc = &PromoEkrMagiDesc;

	NewEfxAnimeDrvProc();

	mini_desc->x = x;
	mini_desc->y = y;
	mini_desc->bid = bid;
	mini_desc->round_type = round_type;
	mini_desc->faction_pal = BANIMPAL_BLUE;
	mini_desc->pos = POS_R;
	mini_desc->oam2_chr = OBCHR_UIPROMO_EKRMINI;
	mini_desc->oam2_pal = OBPAL_UIPROMO_EKRMINI;
	mini_desc->img_buf = PromoEkrMini_ImgBuf;
	mini_desc->oam_buf = PromoEkrMini_OamBuf;
	mini_desc->pal_buf = PromoEkrMini_PalBuf;
	mini_desc->scr_buf = PromoEkrMini_ScrBuf;
	mini_desc->magicfx_desc = magi_desc;

	magi_desc->magicFuncIdx = 4;
	magi_desc->xOffsetBg    = 0;
	magi_desc->yOffsetBg    = 0;
	magi_desc->xOffsetObj   = 0;
	magi_desc->yOffsetObj   = 0;
	magi_desc->objChr = OBCHR_UIPROMO_EKRMAGI;
	magi_desc->objPalId = OBPAL_UIPROMO_EKRMAGI;
	magi_desc->bgPalId = BGPAL_UIPROMO_EKRMAGI;
	magi_desc->bgChr = BGCHR_UIPROMO_EKRMAGI;
	magi_desc->bgPalId = BGPAL_UIPROMO_EKRMAGI;
	magi_desc->bg = BG_2;
	magi_desc->bgTmBuf = gBg2Tm;
	magi_desc->bgImgBuf = PromoEkrMagi_BgImgBuf;
	magi_desc->bgTsaBuf = PromoEkrMagi_BgTsaBuf;
	magi_desc->objImgBuf = PromoEkrMagi_ObImgBuf;
	magi_desc->resetCallback = promofx_ekrmagi_callback;

	ResetClassReelSpell();
	NewEkrUnitMainMini(mini_desc);
}

static void promofx_put_ekrterrainfx(int terrain, int x, int y)
{
	struct EkrTerrainfxDesc *desc = &PromoEkrTerrainDesc;

	desc->terrain_l = terrain;
	desc->pal_l = OBPAL_UIPROMO_EKRTERRAIN_L;
	desc->chr_l = OBCHR_UIPROMO_EKRTERRAIN_L;
	desc->terrain_r = terrain;
	desc->pal_r = OBPAL_UIPROMO_EKRTERRAIN_R;
	desc->chr_r = OBCHR_UIPROMO_EKRTERRAIN_R;
	desc->distance = EKR_DISTANCE_CLOSE;
	desc->bg_index = -1;
	desc->vram_offset = (u32)OBJ_VRAM0;
	desc->img_buf = PromoEkrTerrain_ImgBuf;

	NewEkrTerrainfx(desc);
	EkrTerrainfx_SetPosition(desc, x, y, x + 0x60, y);
}

static void PromoEkrFx_SetPos(int offset)
{
	EkrMainMini_SetAnimPosition(&PromoEkrMiniDesc,
		PROMO_MINI_X + offset, PROMO_MINI_Y);

	EkrTerrainfx_SetPosition(&PromoEkrTerrainDesc,
		PROMO_TERRAIN_X + offset, PROMO_TERRAIN_Y,
		PROMO_TERRAIN_X + offset + 0x60, PROMO_TERRAIN_Y);
}

static void PromoEkrFx_ChangeJid(struct ProcPromoHandler *handler, int jid)
{
	int bid = Promo_GetPreviewBid(handler->unit, jid);

	if (bid < 0)
		return;

	PromoEkrMiniDesc.img_sheet = NULL;
	EkrMainMini_ChangeAnim(&PromoEkrMiniDesc, bid);
}

static void PromoEkrFx_Init(struct ProcPromoEkrFx *proc)
{
	struct ProcPromoHandler *handler = proc->proc_parent->proc_parent;
	struct Unit *unit = handler->unit;
	u8 choices[PROMO_CHOICE_MAX];
	int count, jid, bid;

	count = GetPromoChoices(unit, unit->items[handler->item_slot],
		choices, PROMO_CHOICE_MAX);
	jid = (count > 0) ? choices[0] : unit->jinfo->id;

	bid = Promo_GetPreviewBid(unit, jid);
	if (bid < 0)
		bid = 0x10;

	proc->state = PROMO_FX_WAIT;
	proc->timer = 0;
	proc->jid = jid;
	proc->current_jid = jid;

	EndEfxAnimeDrvProc();
	promofx_put_ekrmainmini(bid, 0,
		PROMO_MINI_X + PROMO_FX_OFFSET, PROMO_MINI_Y,
		ANIM_ROUND_TAKING_HIT_CLOSE);
	promofx_put_ekrterrainfx(1,
		PROMO_TERRAIN_X + PROMO_FX_OFFSET, PROMO_TERRAIN_Y);

	/* The magi setup shares OBJ VRAM with the title cache. */
	if (proc->proc_parent->proc_sel != NULL)
		proc->proc_parent->proc_sel->title_needs_reload = 1;
}

static void PromoEkrFx_Loop(struct ProcPromoEkrFx *proc)
{
	struct ProcPromoHandler *handler = proc->proc_parent->proc_parent;
	int offset;

	switch (proc->state) {
	case PROMO_FX_WAIT:
		proc->timer++;

		if (proc->timer >= PROMO_FX_WAIT_FRAMES) {
			PromoEkrFx_SetPos(PROMO_FX_OFFSET);
			proc->state = PROMO_FX_IN;
			proc->timer = 0;
		}
		break;

	case PROMO_FX_OUT:
		proc->timer++;

		if (proc->timer >= PROMO_FX_OUT_FRAMES) {
			offset = PROMO_FX_OFFSET;
			PromoEkrFx_SetPos(offset);
			PromoEkrFx_ChangeJid(handler, proc->jid);
			proc->current_jid = proc->jid;
			proc->state = PROMO_FX_IN;
			proc->timer = 0;
			break;
		}

		offset = (proc->timer * PROMO_FX_OFFSET) / PROMO_FX_OUT_FRAMES;
		PromoEkrFx_SetPos(offset);
		break;

	case PROMO_FX_IN:
		proc->timer++;

		if (proc->timer >= PROMO_FX_IN_FRAMES) {
			PromoEkrFx_SetPos(0);
			proc->state = PROMO_FX_IDLE;
			proc->timer = 0;
			break;
		}

		offset = PROMO_FX_OFFSET - (proc->timer * PROMO_FX_OFFSET) / PROMO_FX_IN_FRAMES;
		PromoEkrFx_SetPos(offset);
		break;

	default:
		break;
	}
}

static void PromoEkrFx_End(struct ProcPromoEkrFx *proc)
{
	EndEfxAnimeDrvProc();
	EndEkrMainMini(&PromoEkrMiniDesc);
	EndEkrTerrainfx(&PromoEkrTerrainDesc);
}

static const struct ProcScr ProcScr_PromoEkrFx[] = {
	PROC_ONEND(PromoEkrFx_End),
	PROC_YIELD,
	PROC_CALL(PromoEkrFx_Init),
	PROC_YIELD,
	PROC_REPEAT(PromoEkrFx_Loop),
	PROC_BLOCK, PROC_END
};

/**
 * promo-sel
 */
static const u16 sPromoClassNameOam[4] = {
	1, OAM0_SHAPE_8x8, OAM1_SIZE_8x8, 0,
};

static const struct PromoClassNameGlyph *Promo_FindClassNameGlyph(u8 ch)
{
	int i;

	for (i = 0; i < PromoClassNameGlyphCount; i++) {
		if (PromoClassNameGlyphs[i].ch == ch)
			return &PromoClassNameGlyphs[i];
	}

	return NULL;
}

static void Promo_BuildTitle(struct ProcPromoSel *proc)
{
	const char *str = DecodeMsg(GetJInfo(Promo_GetJid(proc))->msg_name);
	const struct PromoClassNameGlyph *glyph;
	u8 loaded_chars[PROMO_TITLE_MAX_GLYPHS];
	u8 loaded_bases[PROMO_TITLE_MAX_GLYPHS];
	int loaded_count = 0;
	int cache_tiles = 0;
	int x = 0;
	int i, j;

	proc->title_glyph_count = 0;
	proc->title_needs_reload = 0;
	proc->title_start_x = PROMO_TITLE_X * 8;

	if (str == NULL)
		return;

	for (i = 0; str[i] != '\0'; i++) {
		u8 ch = str[i];
		int base = -1;

		if (ch == ' ') {
			x += 6;
			continue;
		}

		glyph = Promo_FindClassNameGlyph(ch);
		if (glyph == NULL) {
			x += 4;
			continue;
		}

		if (x + glyph->width > PROMO_TITLE_W * 8)
			break;

		if (proc->title_glyph_count >= PROMO_TITLE_MAX_GLYPHS)
			break;

		for (j = 0; j < loaded_count; j++) {
			if (loaded_chars[j] == ch) {
				base = loaded_bases[j];
				break;
			}
		}

		if (base < 0) {
			int tiles = glyph->tiles_w * glyph->tiles_h;

			if (cache_tiles + tiles > PROMO_CLASSNAME_MAX_TILES)
				break;

			CpuFastCopy(PromoClassNameFontTiles + glyph->tile_offset * 0x20,
				(u8 *)OBJ_VRAM0 + (OBCHR_UIPROMO_CLASSNAME + cache_tiles) * 0x20,
				tiles * 0x20);

			loaded_chars[loaded_count] = ch;
			loaded_bases[loaded_count] = cache_tiles;
			base = cache_tiles;
			cache_tiles += tiles;
			loaded_count++;
		}

		{
			struct PromoTitleGlyph *g = &proc->title_glyphs[proc->title_glyph_count++];

			g->tile_base = base;
			g->x = x;

			if (ch == 'g' || ch == 'p' || ch == 'q' || ch == 'y')
				g->y = 12;
			else if (ch == 'j')
				g->y = 7;
			else
				g->y = 24 - glyph->height;

			g->tiles_w = glyph->tiles_w;
			g->tiles_h = glyph->tiles_h;
		}

		x += glyph->advance;
	}

	if (x > PROMO_TITLE_W * 8)
		x = PROMO_TITLE_W * 8;

	proc->title_start_x = PROMO_TITLE_X * 8 + (PROMO_TITLE_W * 8 - x) / 2;
}

static void Promo_DrawTitleOam(struct ProcPromoSel *proc)
{
	int i, tx, ty;

	if (proc->title_hidden)
		return;

	for (i = 0; i < proc->title_glyph_count; i++) {
		struct PromoTitleGlyph *g = &proc->title_glyphs[i];

		for (ty = 0; ty < g->tiles_h; ty++) {
			for (tx = 0; tx < g->tiles_w; tx++) {
				PutOamHi(proc->title_start_x + g->x + tx * 8,
					PROMO_TITLE_Y * 8 + g->y + ty * 8 - 4,
					sPromoClassNameOam,
					(OBPAL_UIPROMO_CLASSNAME << 12) |
					(OBCHR_UIPROMO_CLASSNAME + g->tile_base + ty * g->tiles_w + tx));
			}
		}
	}
}

static void Promo_DrawTitle(struct ProcPromoSel *proc)
{
	Promo_BuildTitle(proc);
}

static void Promo_DrawDesc(struct ProcPromoSel *proc)
{
	struct JInfo const *jinfo = GetJInfo(Promo_GetJid(proc));
	const char *str;

	if (jinfo->msg_desc == 0)
		return;

	str = DecodeMsg(jinfo->msg_desc);
	if (str == NULL)
		return;

	Promo_DrawWrappedText(str, gBg0Tm,
		PROMO_DESC_X + 1, PROMO_DESC_Y + 1,
		PROMO_DESC_W - 2, 2, TEXT_COLOR_SYSTEM_WHITE);
}

static void Promo_DrawStats(struct ProcPromoSel *proc)
{
	static const char *const labels[7] = {
		"HP", "Po", "Ma", "Sk", "Sp", "De", "Re"
	};

	struct ProcPromoHandler *handler = Promo_GetHandler(proc);
	struct Unit *unit = handler->unit;
	struct Unit preview;
	int deltas[8];
	int i;

	preview = *unit;
	UnitPromote(&preview, Promo_GetJid(proc));

	deltas[0] = preview.max_hp - unit->max_hp;
	deltas[1] = preview.pow - unit->pow;
	deltas[2] = preview.mag - unit->mag;
	deltas[3] = preview.skl - unit->skl;
	deltas[4] = preview.spd - unit->spd;
	deltas[5] = preview.def - unit->def;
	deltas[6] = preview.res - unit->res;
	deltas[7] = UNIT_CON(&preview) - UNIT_CON(unit);

	for (i = 0; i < 7; i++) {
		int y = PROMO_STATS_Y + i * 2;

		PutDrawText(NULL,
			gBg0Tm + TM_OFFSET(PROMO_STATS_X + 1, y),
			TEXT_COLOR_SYSTEM_GOLD, 0, 2, labels[i]);

		if (deltas[i] == 0) {
			PutDrawText(NULL,
				gBg0Tm + TM_OFFSET(PROMO_STATS_X + 3, y),
				TEXT_COLOR_SYSTEM_GRAY, 0, 2, "--");
		} else {
			PutNumberBonus(deltas[i],
				gBg0Tm + TM_OFFSET(PROMO_STATS_X + 3, y));
		}
	}
}

static void Promo_SetStatsBlend(void)
{
	gDispIo.bg2_ct.priority = 1;

	SetBlendAlpha(8, 8);
	SetBlendTargetA(0, 0, 1, 0, 0);
	SetBlendTargetB(0, 0, 0, 1, 1);
	SetBlendBackdropA(0);
	SetBlendBackdropB(0);
}

static void Promo_LoadStatsTiles(void)
{
	static const u8 mask[8] = { 0xF8, 0xFC, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
	int corner, x, y;
	u8 tile[0x20];

	for (corner = 0; corner < 5; corner++) {
		for (y = 0; y < 8; y++) {
			for (x = 0; x < 8; x++) {
				int sx = (corner == 2 || corner == 4) ? 7 - x : x;
				int sy = (corner == 3 || corner == 4) ? 7 - y : y;
				int solid = (corner == 0) ? 1 : ((mask[sy] >> sx) & 1);
				u8 color = solid ? 8 : 0;
				int idx = y * 4 + (x >> 1);

				if (x & 1)
					tile[idx] = (tile[idx] & 0x0F) | (color << 4);
				else
					tile[idx] = (tile[idx] & 0xF0) | color;
			}
		}

		CpuFastCopy(tile,
			(u8 *)VRAM + (BGCHR_UIPROMO_STATSBLOCK + corner) * CHR_SIZE,
			sizeof(tile));
	}
}

/* Borderless semi-transparent rounded block, shared by the list and stats panels. */
static void Promo_DrawRoundedBlock(int x, int y, int w, int h)
{
	u16 *tm = gBg2Tm + TM_OFFSET(x, y);
	u16 solid = TILEREF(BGCHR_UIPROMO_STATSBLOCK, BGPAL_WINDOWFRAME);

	TmFillRect(tm, w - 1, h - 1, solid);

	tm[0x00] = TILEREF(BGCHR_UIPROMO_STATSBLOCK + 1, BGPAL_WINDOWFRAME);
	tm[w - 1] = TILEREF(BGCHR_UIPROMO_STATSBLOCK + 2, BGPAL_WINDOWFRAME);
	tm[(h - 1) * 0x20] = TILEREF(BGCHR_UIPROMO_STATSBLOCK + 3, BGPAL_WINDOWFRAME);
	tm[(h - 1) * 0x20 + w - 1] = TILEREF(BGCHR_UIPROMO_STATSBLOCK + 4, BGPAL_WINDOWFRAME);
}

static void Promo_DrawStatsBackdrop(void)
{
	Promo_DrawRoundedBlock(PROMO_STATS_X, PROMO_STATS_Y, PROMO_STATS_W, PROMO_STATS_H);
}

static void Promo_DrawListBackdrop(void)
{
	Promo_DrawRoundedBlock(PROMO_LIST_X, PROMO_LIST_Y, PROMO_LIST_W, PROMO_LIST_H);
}

static void Promo_GridPos(int idx, int *col, int *row);

/* Subtractive division: the GBA build links no libgcc division helpers. */
static int Promo_Div(int a, int b)
{
	int q = 0;

	if (b <= 0)
		return 0;

	while (a >= b) {
		a -= b;
		q++;
	}

	return q;
}

static void Promo_SetTilePixel(u8 *tile, int x, int y, int color)
{
	int idx = y * 4 + (x >> 1);

	if (x & 1)
		tile[idx] = (tile[idx] & 0x0F) | (color << 4);
	else
		tile[idx] = (tile[idx] & 0xF0) | color;
}

static void Promo_LoadScrollTiles(void)
{
	u8 tile[0x20];
	int x, y;

	/* Up arrow: small solid triangle. */
	for (y = 0; y < 0x20; y++)
		tile[y] = 0;

	for (y = 0; y < 4; y++) {
		for (x = 3 - y; x <= 4 + y; x++)
			Promo_SetTilePixel(tile, x, y, 7);
	}
	CpuFastCopy(tile, (u8 *)VRAM + BGCHR_UIPROMO_SCROLL_UP * CHR_SIZE, sizeof(tile));

	/* Down arrow: the same triangle, flipped. */
	for (y = 0; y < 0x20; y++)
		tile[y] = 0;

	for (y = 0; y < 4; y++) {
		for (x = 3 - y; x <= 4 + y; x++)
			Promo_SetTilePixel(tile, x, 7 - y, 7);
	}
	CpuFastCopy(tile, (u8 *)VRAM + BGCHR_UIPROMO_SCROLL_DOWN * CHR_SIZE, sizeof(tile));

	/* Track: thin vertical groove. */
	for (y = 0; y < 0x20; y++)
		tile[y] = 0;

	for (y = 0; y < 8; y++) {
		Promo_SetTilePixel(tile, 3, y, 1);
		Promo_SetTilePixel(tile, 4, y, 1);
	}
	CpuFastCopy(tile, (u8 *)VRAM + BGCHR_UIPROMO_SCROLL_TRACK * CHR_SIZE, sizeof(tile));

	/* Thumb: thicker bar. */
	for (y = 0; y < 0x20; y++)
		tile[y] = 0;

	for (y = 0; y < 8; y++) {
		for (x = 2; x <= 5; x++)
			Promo_SetTilePixel(tile, x, y, 7);
	}
	CpuFastCopy(tile, (u8 *)VRAM + BGCHR_UIPROMO_SCROLL_THUMB * CHR_SIZE, sizeof(tile));
}

static void Promo_DrawScrollbar(struct ProcPromoSel *proc)
{
	/* BG1 is not a blend target, so the bar stays opaque over the translucent panel. */
	u16 *tm = gBg1Tm;
	int col, row;
	int total_rows, thumb_h, scroll_max, thumb_y;
	int i;

	Promo_GridPos(proc->choice_count - 1, &col, &row);
	total_rows = row + 1;

	if (total_rows <= PROMO_LIST_ROWS)
		return;

	if (proc->scroll_row > 0) {
		tm[TM_OFFSET(PROMO_SCROLL_X, PROMO_SCROLL_UP_Y)] =
			TILEREF(BGCHR_UIPROMO_SCROLL_UP, BGPAL_WINDOWFRAME);
	}

	if (proc->scroll_row + PROMO_LIST_ROWS < total_rows) {
		tm[TM_OFFSET(PROMO_SCROLL_X, PROMO_SCROLL_DOWN_Y)] =
			TILEREF(BGCHR_UIPROMO_SCROLL_DOWN, BGPAL_WINDOWFRAME);
	}

	for (i = 0; i < PROMO_SCROLL_H; i++) {
		tm[TM_OFFSET(PROMO_SCROLL_X, PROMO_SCROLL_TRACK_Y + i)] =
			TILEREF(BGCHR_UIPROMO_SCROLL_TRACK, BGPAL_WINDOWFRAME);
	}

	thumb_h = Promo_Div(PROMO_SCROLL_H * PROMO_LIST_ROWS, total_rows);
	if (thumb_h < 1)
		thumb_h = 1;

	scroll_max = total_rows - PROMO_LIST_ROWS;
	thumb_y = PROMO_SCROLL_TRACK_Y +
		Promo_Div((PROMO_SCROLL_H - thumb_h) * proc->scroll_row, scroll_max);

	for (i = 0; i < thumb_h; i++) {
		tm[TM_OFFSET(PROMO_SCROLL_X, thumb_y + i)] =
			TILEREF(BGCHR_UIPROMO_SCROLL_THUMB, BGPAL_WINDOWFRAME);
	}
}

static void Promo_DrawAll(struct ProcPromoSel *proc)
{
	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);

	PutUiWindowFrame(PROMO_DESC_X, PROMO_DESC_Y,
		PROMO_DESC_W, PROMO_DESC_H, UI_WINDOW_REGULAR);

	/* Both panels are borderless semi-transparent rounded blocks on BG2. */
	Promo_DrawListBackdrop();
	Promo_DrawScrollbar(proc);
	Promo_DrawStatsBackdrop();
	ResetTextFont();

	Promo_DrawTitle(proc);
	Promo_DrawDesc(proc);
	Promo_DrawStats(proc);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT);
}

static void Promo_GridPos(int idx, int *col, int *row)
{
	*col = idx;
	*row = 0;

	while (*col >= PROMO_LIST_COLS) {
		*col -= PROMO_LIST_COLS;
		(*row)++;
	}
}

/* Centre of the sprite's non-transparent pixels, in the sprite's own frame. */
EWRAM_OVERLAY_PROMOTION static u8 sPromoIconCx[PROMO_CHOICE_MAX] = {};
EWRAM_OVERLAY_PROMOTION static u8 sPromoIconCy[PROMO_CHOICE_MAX] = {};

static void Promo_MeasureIcon(int size, u8 *cx, u8 *cy)
{
	u8 const *buf = UnitSpriteUnpackBuf;
	int w = (size == UNITSPRITE_32x32) ? 32 : 16;
	int h = (size == UNITSPRITE_16x16) ? 16 : 32;
	int tiles_w = w >> 3;
	int minx = w, maxx = -1;
	int miny = h, maxy = -1;
	int px, py;

	for (py = 0; py < h; py++) {
		for (px = 0; px < w; px++) {
			int tile = (py >> 3) * tiles_w + (px >> 3);
			u8 b = buf[tile * 0x20 + (py & 7) * 4 + ((px & 7) >> 1)];
			int c = (px & 1) ? (b >> 4) : (b & 0xF);

			if (c != 0) {
				if (px < minx)
					minx = px;
				if (px > maxx)
					maxx = px;
				if (py < miny)
					miny = py;
				if (py > maxy)
					maxy = py;
			}
		}
	}

	if (maxx < 0) {
		*cx = w / 2;
		*cy = h / 2;
		return;
	}

	*cx = (minx + maxx + 1) / 2;
	*cy = (miny + maxy + 1) / 2;
}

/* First visible row: keep the selection on screen, scrolling one row at a time. */
/* Scroll only when the cursor leaves the visible window, not while moving inside it. */
static void Promo_ScrollIntoView(struct ProcPromoSel *proc)
{
	int col, row;

	Promo_GridPos(proc->choice_idx, &col, &row);

	if (row < proc->scroll_row) {
		proc->scroll_row = row;
		proc->ui_dirty = 1;
	} else if (row >= proc->scroll_row + PROMO_LIST_ROWS) {
		proc->scroll_row = row - PROMO_LIST_ROWS + 1;
		proc->ui_dirty = 1;
	}
}

static void Promo_GetCellPos(int idx, int first_row, int *x, int *y)
{
	int col, row;

	Promo_GridPos(idx, &col, &row);

	*x = PROMO_LIST_X * 8 + PROMO_LIST_INSET + col * PROMO_LIST_PITCH * 8;
	*y = PROMO_LIST_Y * 8 + (row - first_row) * PROMO_LIST_PITCH * 8;
}

static void Promo_DrawIcons(struct ProcPromoSel *proc)
{
	struct ProcPromoHandler *handler = Promo_GetHandler(proc);
	struct Unit *unit = handler->unit;
	int first = proc->scroll_row;
	int cx, cy;
	int i;

	for (i = 0; i < proc->choice_count; i++) {
		struct Unit icon_unit = *unit;
		int jid = proc->choices[i];
		int size = GetUnitSpriteInfo(GetJInfo(jid)->map_sprite).size;
		int left, top, x, y;
		int col, row;

		Promo_GridPos(i, &col, &row);

		if (row < first || row >= first + PROMO_LIST_ROWS)
			continue;

		icon_unit.jinfo = GetJInfo(jid);
		icon_unit.flags &= ~UNIT_FLAG_TURN_ENDED;

		Promo_GetCellPos(i, first, &cx, &cy);

		/* Centre the visible artwork inside the 24x24 cell, not the frame. */
		left = cx + 12 - sPromoIconCx[i];
		top = cy + 12 - sPromoIconCy[i];

		switch (size) {
		case UNITSPRITE_16x16:
			x = left;
			y = top;
			break;

		case UNITSPRITE_16x32:
			x = left;
			y = top + 16;
			break;

		default:
			/* 32x32 sprites are anchored at their centre. */
			x = left + 8;
			y = top + 16;
			break;
		}

		PutUnitSpriteExt(3, x, y, OAM2_LAYER(1), &icon_unit);
	}

	Promo_GetCellPos(proc->choice_idx, first, &cx, &cy);
	/* The hand sprite is drawn 14px left of its anchor; it only clips the icon edge. */
	PutUiHand(cx + 6, cy + 8);
}

static bool PromoEkrFx_IsBusy(struct ProcPromoSel *proc)
{
	struct ProcPromoEkrFx *fx = proc->proc_parent->proc_ekrfx;

	if (fx == NULL)
		return TRUE;

	return fx->state != PROMO_FX_IDLE;
}

static int PromoEkrFx_GetState(struct ProcPromoSel *proc)
{
	struct ProcPromoEkrFx *fx = proc->proc_parent->proc_ekrfx;

	return (fx != NULL) ? fx->state : PROMO_FX_IDLE;
}

static void PromoEkrFx_RequestJid(struct ProcPromoSel *proc, int jid)
{
	struct ProcPromoEkrFx *fx = proc->proc_parent->proc_ekrfx;

	if (fx == NULL || fx->state != PROMO_FX_IDLE || jid == fx->current_jid)
		return;

	fx->jid = jid;
	fx->state = PROMO_FX_OUT;
	fx->timer = 0;
}

static void PromoSel_Init(struct ProcPromoSel *proc)
{
	struct ProcPromoHandler *handler = Promo_GetHandler(proc);
	struct Unit *unit = handler->unit;
	int item = unit->items[handler->item_slot];
	int i;

	proc->choice_count = GetPromoChoices(unit, item,
		proc->choices, PROMO_CHOICE_MAX);
	proc->choice_idx = 0;
	proc->scroll_row = 0;
	proc->ending = 0;

	if (proc->choice_count == 0) {
		handler->action_type = PROMO_ACT_CANCEL;
		Proc_Break(proc->proc_parent);
		Proc_End(proc);
		return;
	}

	ResetText();
	ApplySystemObjectsGraphics();
	ApplyUnitSpritePalettes();
	ResetUnitSprites();

	CpuFastCopy(PromoClassNamePalette,
		gPal + OBPAL_UIPROMO_CLASSNAME * 16, 32);
	EnablePalSync();

	/* Solid + rounded-corner tiles for the semi-transparent stats block. */
	Promo_LoadStatsTiles();
	Promo_LoadScrollTiles();

	/* Do NOT touch the blend here: the screen is still covered by the
	   fade-to-black. Changing it to the stats alpha would expose the freshly
	   built UI for one frame before the fade-in starts. PromoMain_StartFx
	   applies the stats blend once the fade-in is done. */

	for (i = 0; i < proc->choice_count; i++) {
		int map_sprite = GetJInfo(proc->choices[i])->map_sprite;

		UseUnitSprite(map_sprite);

		/* UseUnitSprite only unpacks on first use, so repeated classes would
		   otherwise measure whichever sprite happened to be unpacked last. */
		Decompress(GetUnitSpriteInfo(map_sprite).img, UnitSpriteUnpackBuf);

		Promo_MeasureIcon(GetUnitSpriteInfo(map_sprite).size,
			&sPromoIconCx[i], &sPromoIconCy[i]);
	}

	/* UseUnitSprite only fills the EWRAM sheet; without this the first frames
	   still show the map's unit sprite sheet in OBJ VRAM (the map's army
	   sprites) until SyncUnitSpriteSheet happens to reach an upload frame. */
	ForceSyncUnitSpriteSheet();

	Promo_DrawAll(proc);
}

static void PromoSel_Loop(struct ProcPromoSel *proc)
{
	struct ProcPromoHandler *handler = Promo_GetHandler(proc);
	int old_idx = proc->choice_idx;

	/* Keep the panel alpha alive while the palette fade runs, but do not touch
	   the blend once the fade-out has installed its black cover. */
	if (!proc->ending &&
	    proc->proc_parent->proc_ekrfx != NULL &&
	    gpActiveClassReelSpellProc == NULL)
		Promo_SetStatsBlend();

	if (!proc->ending && !PromoEkrFx_IsBusy(proc)) {
		int col, row;
		int idx = proc->choice_idx;

		Promo_GridPos(idx, &col, &row);

		if (gKeySt->pressed & KEY_DPAD_LEFT) {
			if (col > 0)
				idx--;
		} else if (gKeySt->pressed & KEY_DPAD_RIGHT) {
			if (col + 1 < PROMO_LIST_COLS && idx + 1 < proc->choice_count)
				idx++;
		} else if (gKeySt->pressed & KEY_DPAD_UP) {
			if (idx >= PROMO_LIST_COLS)
				idx -= PROMO_LIST_COLS;
		} else if (gKeySt->pressed & KEY_DPAD_DOWN) {
			if (idx + PROMO_LIST_COLS < proc->choice_count) {
				idx += PROMO_LIST_COLS;
			} else if (idx < proc->choice_count - 1 &&
				idx - col + PROMO_LIST_COLS < proc->choice_count) {
				/* Partial last row: step to its last entry instead of stopping. */
				idx = proc->choice_count - 1;
			}
		}

		proc->choice_idx = idx;

		if (proc->choice_idx != old_idx) {
			PlaySe(SONG_6A);
			Promo_ScrollIntoView(proc);
			proc->ui_dirty = 1;
			PromoEkrFx_RequestJid(proc, Promo_GetJid(proc));
		}

		if (gKeySt->pressed & KEY_BUTTON_A) {
			handler->jid_promo = proc->choices[proc->choice_idx];
			handler->action_type = PROMO_ACT_PROMO;
			PlaySe(SONG_6A);
			proc->ending = 1;
			/* A class reel spell keeps rewriting the blend config; stop it
			   so the parent's fade-to-black is not overwritten every frame. */
			EndActiveClassReelSpell();
			EndActiveClassReelBgColorProc();
			Proc_Break(proc->proc_parent);
		} else if (gKeySt->pressed & KEY_BUTTON_B) {
			handler->action_type = PROMO_ACT_CANCEL;
			PlaySe(SONG_6B);
			proc->ending = 1;
			EndActiveClassReelSpell();
			EndActiveClassReelBgColorProc();
			Proc_Break(proc->proc_parent);
		}
	}

	/* Stay on screen while the parent fades out: tearing this proc down as
	   soon as A/B is pressed leaves a blank icon panel on the fade frames. */

	if (proc->ui_dirty && PromoEkrFx_GetState(proc) != PROMO_FX_OUT) {
		Promo_DrawAll(proc);
		proc->ui_dirty = 0;
	}

	SyncUnitSpriteSheet();
	Promo_DrawIcons(proc);

	if (gpActiveClassReelSpellProc != NULL) {
		proc->title_hidden = 1;
	} else {
		if (proc->title_hidden) {
			proc->title_hidden = 0;
			proc->title_needs_reload = 1;
		}

		if (proc->title_needs_reload)
			Promo_BuildTitle(proc);

		Promo_DrawTitleOam(proc);
	}
}

static void PromoSel_End(struct ProcPromoSel *proc)
{}

static const struct ProcScr ProcScr_PromoSel[] = {
	PROC_ONEND(PromoSel_End),
	PROC_YIELD,
	PROC_CALL(PromoSel_Init),
	PROC_YIELD,
	PROC_REPEAT(PromoSel_Loop),
	PROC_END
};

/**
 * promo-main
 */
static void PromoMain_Init(struct ProcPromoMain *proc)
{
	const u16 bg_config[12] = {
		0x0000, 0x6000, 0,
		0x0000, 0x6800, 0,
		0x0000, 0x7000, 0,
		0x8000, 0x7800, 0,
	};

	InitBgs(bg_config);

	UnpackUiWindowFrameGraphics();
	SetDispEnable(1, 1, 1, 1, 1);

	SetBgOffset(BG_0, 0, 0);
	SetBgOffset(BG_1, 0, 0);
	SetBgOffset(BG_2, 0, 0);
	SetBgOffset(BG_3, 0, 0);

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);
	TmFill(gBg2Tm, 0);
	TmFill(gBg3Tm, 0);

	EndAllMus();

	StartMuralBackground(proc, NULL, -1);
	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT | BG2_SYNC_BIT | BG3_SYNC_BIT);

	proc->proc_ekrfx = NULL;
	proc->proc_sel = SpawnProc(ProcScr_PromoSel, proc);
}

static void PromoMain_StartFx(struct ProcPromoMain *proc)
{
	Promo_SetStatsBlend();
	proc->proc_ekrfx = SpawnProc(ProcScr_PromoEkrFx, proc);
}

/**
 * palette fade
 *
 * The panels are translucent through the global alpha blend, which uses the
 * same BLDCNTR/BLDY registers as a hardware darken fade. Fading the palette
 * instead lets the panels keep their translucency while the whole screen
 * fades in/out.
 */
enum {
	PROMO_FADE_IN,
	PROMO_FADE_OUT,
	PROMO_FADE_FRAMES = 4,
};

struct ProcPromoFade {
	PROC_HEADER;
	u8 mode;
	u8 timer;
};

EWRAM_OVERLAY_PROMOTION static u16 PromoFade_Pal[0x200] = {};
static u8 sPromoFadeMode;

static void PromoFade_Apply(int scale)
{
	int i;

	for (i = 0; i < 0x200; i++) {
		u16 c = PromoFade_Pal[i];
		int r = (c & 0x1F) * scale >> 4;
		int g = ((c >> 5) & 0x1F) * scale >> 4;
		int b = ((c >> 10) & 0x1F) * scale >> 4;

		gPal[i] = r | (g << 5) | (b << 10);
	}

	EnablePalSync();
}

static void PromoFade_Restore(void)
{
	CpuFastCopy(PromoFade_Pal, gPal, sizeof(PromoFade_Pal));
	EnablePalSync();
}

static void PromoFade_Init(struct ProcPromoFade *proc)
{
	int i;

	for (i = 0; i < 0x200; i++)
		PromoFade_Pal[i] = gPal[i];

	proc->mode = sPromoFadeMode;
	proc->timer = 0;

	if (proc->mode == PROMO_FADE_IN) {
		/* Swap the fade darken for the panel alpha while the palette is
		   black; both land on the same VBlank. */
		Promo_SetStatsBlend();
		PromoFade_Apply(0);
	}
}

static void PromoFade_Loop(struct ProcPromoFade *proc)
{
	int scale;

	proc->timer++;

	if (proc->mode == PROMO_FADE_IN)
		scale = (proc->timer * 0x10) / PROMO_FADE_FRAMES;
	else
		scale = 0x10 - (proc->timer * 0x10) / PROMO_FADE_FRAMES;

	if (proc->timer < PROMO_FADE_FRAMES) {
		PromoFade_Apply(scale);
		return;
	}

	PromoFade_Restore();

	if (proc->mode == PROMO_FADE_OUT) {
		/* Restore the palette for the map/banim but keep the screen black
		   with the blend cover. */
		SetBlendDarken(0x10);
		SetBlendTargetA(1, 1, 1, 1, 1);
		SetBlendTargetB(0, 0, 0, 0, 0);
		SetBlendBackdropA(1);
		SetBlendBackdropB(0);
	}

	Proc_End(proc);
}

static const struct ProcScr ProcScr_PromoFade[] = {
	PROC_CALL(PromoFade_Init),
	PROC_REPEAT(PromoFade_Loop),
	PROC_END
};

static void PromoMain_StartFadeIn(struct ProcPromoMain *proc)
{
	sPromoFadeMode = PROMO_FADE_IN;
	SpawnProc(ProcScr_PromoFade, proc);
}

static void PromoMain_StartFadeOut(struct ProcPromoMain *proc)
{
	sPromoFadeMode = PROMO_FADE_OUT;
	SpawnProc(ProcScr_PromoFade, proc);
}

static void PromoFade_Wait(ProcPtr proc)
{
	if (!Proc_Exists(ProcScr_PromoFade))
		Proc_Break(proc);
}

static void PromoMain_Loop(struct ProcPromoMain *proc)
{}

static void PromoMain_End(struct ProcPromoMain *proc)
{
	/* Tearing the OAM layers down as soon as A/B is pressed leaves an empty
	   icon panel over the fade-out. Keep them until the screen is black
	   (vanilla blackens instantly before ending its class-change procs). */
	Proc_EndEach(ProcScr_PromoSel);
	Proc_EndEach(ProcScr_PromoEkrFx);
	proc->proc_sel = NULL;
	proc->proc_ekrfx = NULL;

	SetWinEnable(0, 0, 0);
	SetWOutLayers(1, 1, 1, 1, 1);
	EndMuralBackground();

	/* Keep the screen black. For a promotion the battle animation takes over
	   from here (like ExecClassChgReal in the vanilla flow); the cancel path
	   rebuilds the map and fades it back in from PromoMain_AfterEnd. */
	SetBlendDarken(0x10);
	SetBlendTargetA(1, 1, 1, 1, 1);
	SetBlendTargetB(0, 0, 0, 0, 0);
	SetBlendBackdropA(1);
	SetBlendBackdropB(0);
}

/* The class selection UI changed the BG/OBJ/VRAM layout; rebuild the map
   layers, then fade the map back in from black. The promotion animation is
   started by the handler after this proc ends, so the map is already visible
   (and fades in) when the banim intro takes over. */
static void PromoMain_AfterEnd(struct ProcPromoMain *proc)
{
	UnlockBmDisplay();
	InitBmDisplay();
	StartFastFadeFromBlack();
}

static const struct ProcScr ProcScr_PromoMainBM[] = {
	/* start */
	PROC_CALL(StartFastFadeToBlack),
	PROC_REPEAT(WhileFadeExists),
	PROC_CALL(LockBmDisplay),

	PROC_YIELD,
	PROC_CALL(PromoMain_Init),
	PROC_YIELD,
	PROC_CALL(PromoMain_StartFadeIn),
	PROC_REPEAT(PromoFade_Wait),
	PROC_CALL(PromoMain_StartFx),
	PROC_YIELD,
	PROC_REPEAT(PromoMain_Loop),
	PROC_YIELD,
	PROC_CALL(PromoMain_StartFadeOut),
	PROC_REPEAT(PromoFade_Wait),
	PROC_CALL(PromoMain_End),
	PROC_YIELD,

	/* end */
	PROC_CALL(PromoMain_AfterEnd),
	PROC_REPEAT(WhileFadeExists),
	PROC_END
};

static void PromoHandle_Init(struct ProcPromoHandler *proc)
{
	proc->action_type = PROMO_ACT_PROMO;
	proc->jid_promo = -1;
}

static void PromoHandle_StartSelect(struct ProcPromoHandler *proc)
{
	proc->child = SpawnProcLocking(ProcScr_PromoMainBM, proc);
}

static void PromoHandle_ExecAnim(struct ProcPromoHandler *proc)
{
	if (proc->action_type == PROMO_ACT_PROMO) {
		int item = proc->unit->items[proc->item_slot];

		UnitUpdateUsedItem(proc->unit, proc->item_slot);
		StartUnitPromotionAction(proc->unit, proc->jid_promo, item);
	}
}

static const struct ProcScr ProcScr_DemoPromoHandle[] = {
	PROC_CALL(LockGame),
	PROC_YIELD,
	PROC_CALL(PromoHandle_Init),
	PROC_CALL(PromoHandle_StartSelect),
	PROC_YIELD,
	PROC_CALL(PromoHandle_ExecAnim),
	PROC_YIELD,
	PROC_CALL(UnlockGame),
	PROC_END
};

void StartBmDemoPromotion(struct Unit *unit, int item_slot)
{
	struct ProcPromoHandler *proc;

	proc = SpawnProc(ProcScr_DemoPromoHandle, PROC_TREE_3);
	proc->promo_type = PROMO_TYPE_BM;

	proc->unit = unit;
	proc->pid = UNIT_PID(unit);
	proc->item_slot = item_slot;
}

void StartUnitPromotionAction(struct Unit *unit, int promo_jid, int weapon_handle)
{
	i16 bid;
	int kind;

	gBattleUnitA.weapon_before = weapon_handle;
	gBattleUnitB.weapon_before = gBattleUnitA.weapon_before;

	gBattleUnitA.weapon = GetUnitEquippedWeapon(unit);
	gBattleUnitB.weapon = gBattleUnitA.weapon;

	/* pre-promote battle unit */
	InitBattleUnitWithoutBonuses(&gBattleUnitB, unit);
	UnitPromote(unit, promo_jid);

	/* post-promote battle unit */
	InitBattleUnitWithoutBonuses(&gBattleUnitA, unit);

	/*
	 * The class-change animation is picked from the equipped weapon. If
	 * the promoted class cannot use it (e.g. a Mage holding a Fire tome
	 * promoting to Hero/General), _SetupBanim() rejects the animation and
	 * the game falls back to the map animation. Use a representative
	 * weapon of the new class for the animation instead.
	 */
	if (unit->jinfo->banim_info != NULL) {
		bid = GetBattleAnimationId(&gBattleUnitA.unit,
		                           unit->jinfo->banim_info,
		                           gBattleUnitA.weapon);

		if (bid < 0) {
			kind = ArenaGetJobWeaponKind(unit->jinfo);

			if (kind < 0)
				kind = ITEM_KIND_STAFF;

			gBattleUnitA.weapon = Promo_GetRepresentativeWeapon(kind);
		}
	}

	GenerateBattleUnitStatGainsComparatively(&gBattleUnitA, &gBattleUnitB.unit);

	SetBattleUnitTerrainBonusesAuto(&gBattleUnitA);
	SetBattleUnitTerrainBonusesAuto(&gBattleUnitB);

	unit->flags |= UNIT_FLAG_HAD_ACTION;

	gBattleHits[0].attributes = 0;
	gBattleHits[0].info = BATTLE_HIT_INFO_END;
	gBattleHits[0].damage = 0;

	gBattleSt.flags = BATTLE_FLAG_PROMOTE;

	BeginBattleAnimations();
}
