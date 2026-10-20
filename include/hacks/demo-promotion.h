#pragma once

#include "prelude.h"
#include "proc.h"
#include "unit.h"

enum videoalloc_promo_ui {
	OBCHR_UIPROMO_,

	BGCHR_UIPROMO_EKRMAGI = 0x200,

	BGPAL_UIPROMO_EKRMAGI = 12,

	OBCHR_UIPROMO_EKRMINI = 0x180,
	OBCHR_UIPROMO_EKRMAGI = 0x280,
	OBCHR_UIPROMO_EKRTERRAIN_L = 0x380,
	OBCHR_UIPROMO_EKRTERRAIN_R = 0x3C0,

	OBPAL_UIPROMO_EKRMINI = 2,
	OBPAL_UIPROMO_EKRTERRAIN_L = 10,
	OBPAL_UIPROMO_EKRTERRAIN_R = 11,
	OBPAL_UIPROMO_EKRMAGI = 15,
};

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
};

struct ProcPromoSel {
	PROC_HEADER_EXT(struct ProcPromoMain);
};

void StartBmDemoPromotion(struct Unit *unit, int item_slot);
void StartUnitPromotionAction(struct Unit *unit, int promo_jid, int weapon_handle);
