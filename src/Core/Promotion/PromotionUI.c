#include "prelude.h"
#include "unit.h"
#include "battle.h"
#include "item.h"
#include "action.h"
#include "bmio.h"
#include "util.h"
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
	PROMO_LIST_Y = 2,
	PROMO_LIST_W = 8,
	PROMO_LIST_VISIBLE = 3,

	PROMO_TITLE_X = 10,
	PROMO_TITLE_Y = 0,
	PROMO_TITLE_W = 13,

	PROMO_DESC_X = 1,
	PROMO_DESC_Y = 14,
	PROMO_DESC_W = 22,
	PROMO_DESC_H = 6,

	PROMO_STATS_X = 23,
	PROMO_STATS_Y = 2,
	PROMO_STATS_W = 7,
	PROMO_STATS_H = 18,

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

static int Promo_GetRowStep(struct ProcPromoSel *proc)
{
	/* Two entries or fewer get taller rows so the 16/32px map sprites fit. */
	return (proc->choice_count <= 2) ? 4 : 3;
}

static int Promo_GetFirstVisible(struct ProcPromoSel *proc)
{
	if (proc->choice_count <= PROMO_LIST_VISIBLE)
		return 0;

	if (proc->choice_idx < PROMO_LIST_VISIBLE)
		return 0;

	return proc->choice_idx - PROMO_LIST_VISIBLE + 1;
}

static int Promo_GetVisibleCount(struct ProcPromoSel *proc)
{
	return (proc->choice_count < PROMO_LIST_VISIBLE)
		? proc->choice_count
		: PROMO_LIST_VISIBLE;
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
	int kind, item, bid;

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
static void Promo_DrawTitle(struct ProcPromoSel *proc)
{
	const char *str = DecodeMsg(GetJInfo(Promo_GetJid(proc))->msg_name);
	int x = GetStringTextCenteredPos(PROMO_TITLE_W * 8, str);

	/*
	 * TODO: replace this 16px text with the FE8 class-name art font.
	 * The reference font sheet is kept at contents/promotion/ClassNameLetters.png;
	 * it uses the FE8 class-display glyph table (sSprite_ClassDisplay_*).
	 */

	if (x < 0)
		x = 0;

	PutDrawText(NULL,
		gBg0Tm + TM_OFFSET(PROMO_TITLE_X, PROMO_TITLE_Y),
		TEXT_COLOR_SYSTEM_GOLD, x, PROMO_TITLE_W, str);
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
	static const char *const labels[8] = {
		"HP", "Po", "Ma", "Sk", "Sp", "De", "Re", "Cn"
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

	for (i = 0; i < 8; i++) {
		int y = PROMO_STATS_Y + 1 + i * 2;

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

static void Promo_DrawAll(struct ProcPromoSel *proc)
{
	int visible = Promo_GetVisibleCount(proc);

	TmFill(gBg0Tm, 0);
	TmFill(gBg1Tm, 0);

	if (visible > 0) {
		int step = Promo_GetRowStep(proc);
		int list_h = 6 + (visible - 1) * step;

		PutUiWindowFrame(PROMO_LIST_X, PROMO_LIST_Y - 1,
			PROMO_LIST_W, list_h, UI_WINDOW_REGULAR);
	}

	PutUiWindowFrame(PROMO_DESC_X, PROMO_DESC_Y,
		PROMO_DESC_W, PROMO_DESC_H, UI_WINDOW_REGULAR);
	PutUiWindowFrame(PROMO_STATS_X, PROMO_STATS_Y,
		PROMO_STATS_W, PROMO_STATS_H, UI_WINDOW_FILL);

	ResetTextFont();

	Promo_DrawTitle(proc);
	Promo_DrawDesc(proc);
	Promo_DrawStats(proc);

	EnableBgSync(BG0_SYNC_BIT | BG1_SYNC_BIT);
}

static void Promo_DrawIcons(struct ProcPromoSel *proc)
{
	struct ProcPromoHandler *handler = Promo_GetHandler(proc);
	struct Unit *unit = handler->unit;
	int first = Promo_GetFirstVisible(proc);
	int step = Promo_GetRowStep(proc);
	int i;

	for (i = first; i < first + PROMO_LIST_VISIBLE && i < proc->choice_count; i++) {
		struct Unit icon_unit = *unit;
		int jid = proc->choices[i];
		int row = i - first;
		int row_top = (PROMO_LIST_Y + row * step) * 8;
		int size = GetUnitSpriteInfo(GetJInfo(jid)->map_sprite).size;

		icon_unit.jinfo = GetJInfo(jid);
		icon_unit.flags &= ~UNIT_FLAG_TURN_ENDED;

		if (size == UNITSPRITE_16x16) {
			if (step == 4)
				row_top += 8;
		} else {
			row_top += 16;
		}

		PutUnitSpriteExt(3, (PROMO_LIST_X + 2) * 8, row_top,
			OAM2_LAYER(1), &icon_unit);
	}

	PutUiHand(24, (PROMO_LIST_Y + (proc->choice_idx - first) * step) * 8
		+ (step == 4 ? 8 : 4));
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

	/* Keep OBJ (unit sprite, terrain, hand) out of the stats panel area. */
	SetWinEnable(0, 1, 0);
	SetWin1Box(0, 0, PROMO_STATS_X * 8, 160);
	SetWin1Layers(1, 1, 1, 1, 1);
	SetWOutLayers(1, 1, 1, 1, 0);

	for (i = 0; i < proc->choice_count; i++)
		UseUnitSprite(GetJInfo(proc->choices[i])->map_sprite);

	Promo_DrawAll(proc);
}

static void PromoSel_Loop(struct ProcPromoSel *proc)
{
	struct ProcPromoHandler *handler = Promo_GetHandler(proc);
	int old_idx = proc->choice_idx;

	if (!PromoEkrFx_IsBusy(proc)) {
		if (gKeySt->pressed & KEY_DPAD_UP) {
			if (proc->choice_idx == 0)
				proc->choice_idx = proc->choice_count - 1;
			else
				proc->choice_idx--;
		} else if (gKeySt->pressed & KEY_DPAD_DOWN) {
			if (proc->choice_idx + 1 >= proc->choice_count)
				proc->choice_idx = 0;
			else
				proc->choice_idx++;
		}

		if (proc->choice_idx != old_idx) {
			PlaySe(SONG_6A);
			proc->ui_dirty = 1;
			PromoEkrFx_RequestJid(proc, Promo_GetJid(proc));
		}

		if (gKeySt->pressed & KEY_BUTTON_A) {
			handler->jid_promo = proc->choices[proc->choice_idx];
			handler->action_type = PROMO_ACT_PROMO;
			PlaySe(SONG_6A);
			Proc_Break(proc->proc_parent);
			Proc_Break(proc);
			return;
		}

		if (gKeySt->pressed & KEY_BUTTON_B) {
			handler->action_type = PROMO_ACT_CANCEL;
			PlaySe(SONG_6B);
			Proc_Break(proc->proc_parent);
			Proc_Break(proc);
			return;
		}
	}

	if (proc->ui_dirty && PromoEkrFx_GetState(proc) != PROMO_FX_OUT) {
		Promo_DrawAll(proc);
		proc->ui_dirty = 0;
	}

	SyncUnitSpriteSheet();
	Promo_DrawIcons(proc);
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
	proc->proc_ekrfx = SpawnProc(ProcScr_PromoEkrFx, proc);
}

static void PromoMain_Loop(struct ProcPromoMain *proc)
{}

static void PromoMain_End(struct ProcPromoMain *proc)
{
	SetWinEnable(0, 0, 0);
	SetWOutLayers(1, 1, 1, 1, 1);
	EndMuralBackground();
}

static const struct ProcScr ProcScr_PromoMainBM[] = {
	/* start */
	PROC_CALL(StartFastFadeToBlack),
	PROC_REPEAT(WhileFadeExists),
	PROC_CALL(LockBmDisplay),

	PROC_YIELD,
	PROC_CALL(PromoMain_Init),
	PROC_YIELD,
	PROC_CALL(StartFastFadeFromBlack),
	PROC_REPEAT(WhileFadeExists),
	PROC_CALL(PromoMain_StartFx),
	PROC_YIELD,
	PROC_REPEAT(PromoMain_Loop),
	PROC_YIELD,
	PROC_CALL(StartFastFadeToBlack),
	PROC_REPEAT(WhileFadeExists),
	PROC_CALL(PromoMain_End),
	PROC_YIELD,

	/* end */
	PROC_CALL(UnlockBmDisplay),
	PROC_CALL(InitBmDisplay),
	PROC_CALL(StartFastFadeFromBlack),
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
	gBattleUnitA.weapon_before = weapon_handle;
	gBattleUnitB.weapon_before = gBattleUnitA.weapon_before;

	gBattleUnitA.weapon = GetUnitEquippedWeapon(unit);
	gBattleUnitB.weapon = gBattleUnitA.weapon;

	/* pre-promote battle unit */
	InitBattleUnitWithoutBonuses(&gBattleUnitB, unit);
	UnitPromote(unit, promo_jid);

	/* post-promote battle unit */
	InitBattleUnitWithoutBonuses(&gBattleUnitA, unit);
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
