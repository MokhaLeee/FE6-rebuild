#pragma once

#include "prelude.h"
#include "proc.h"
#include "unit.h"

enum videoalloc_promo_ui {
	OBCHR_UIPROMO_,

	BGCHR_UIPROMO_STATSBLOCK = 0x1F0,
	BGCHR_UIPROMO_EKRMAGI = 0x200,

	BGPAL_UIPROMO_EKRMAGI = 12,

	OBCHR_UIPROMO_EKRMINI = 0x180,
	OBCHR_UIPROMO_EKRMAGI = 0x280,
	/* Shared with the magi object image; the title is rebuilt after a spell. */
	OBCHR_UIPROMO_CLASSNAME = 0x280,
	OBCHR_UIPROMO_EKRTERRAIN_L = 0x380,
	OBCHR_UIPROMO_EKRTERRAIN_R = 0x3C0,

	OBPAL_UIPROMO_EKRMINI = 2,
	OBPAL_UIPROMO_EKRTERRAIN_L = 10,
	OBPAL_UIPROMO_EKRTERRAIN_R = 11,
	OBPAL_UIPROMO_CLASSNAME = 13,
	OBPAL_UIPROMO_EKRMAGI = 15,
};

#define PROMO_CLASSNAME_MAX_TILES 0x50
#define PROMO_TITLE_MAX_GLYPHS 16

struct PromoClassNameGlyph {
	u8 ch;
	u8 width, height;
	u8 tiles_w, tiles_h;
	u8 advance;
	u16 tile_offset;
};

struct PromoTitleGlyph {
	u16 tile_base;
	u8 x, y;
	u8 tiles_w, tiles_h;
};

extern const u8 PromoClassNameFontTiles[];
extern const u16 PromoClassNamePalette[16];
extern const struct PromoClassNameGlyph PromoClassNameGlyphs[];
extern const int PromoClassNameGlyphCount;

#define PROMO_CHOICE_MAX 24

enum promotion_type {
	PROMO_TYPE_BM,
	PROMO_TYPE_PREP,
};

enum promotion_action {
	PROMO_ACT_INIT,
	PROMO_ACT_CANCEL,
	PROMO_ACT_PROMO,
};

struct ProcPromoHandler;
struct ProcPromoMain;
struct ProcPromoEkrFx;
struct ProcPromoSel;

struct ProcPromoHandler {
	PROC_HEADER;
	int action_type;
	struct Unit *unit;
	int promo_type;
	int pid;
	int item_slot;
	int jid_promo;
	struct ProcPromoMain *child;
};

struct ProcPromoMain {
	PROC_HEADER_EXT(struct ProcPromoHandler);
	struct ProcPromoEkrFx *proc_ekrfx;
	struct ProcPromoSel *proc_sel;
};

struct ProcPromoEkrFx {
	PROC_HEADER_EXT(struct ProcPromoMain);
	u8 state;
	u8 timer;
	int jid;
	int current_jid;
};

struct ProcPromoSel {
	PROC_HEADER_EXT(struct ProcPromoMain);
	u8 choice_count;
	u8 choice_idx;
	u8 scroll_row;
	u8 ui_dirty;
	u8 title_needs_reload;
	u8 title_hidden;
	u8 title_glyph_count;
	u8 title_start_x;
	u8 choices[PROMO_CHOICE_MAX];
	struct PromoTitleGlyph title_glyphs[PROMO_TITLE_MAX_GLYPHS];
};

int GetPromoChoices(struct Unit *unit, int item, u8 *out, int max);

void StartBmDemoPromotion(struct Unit *unit, int item_slot);
void StartUnitPromotionAction(struct Unit *unit, int promo_jid, int weapon_handle);
