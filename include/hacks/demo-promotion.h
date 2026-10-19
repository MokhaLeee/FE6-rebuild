#pragma once

#include "prelude.h"
#include "unit.h"

enum promotion_type {
	PROMO_TYPE_BM,
	PROMO_TYPE_PREP,
};

enum promotion_action {
	PROMO_ACT_INIT,
	PROMO_ACT_CANCEL,
	PROMO_ACT_PROMO,
};

struct ProcPromoHandler {
	PROC_HEADER;
	int action_type;
	struct Unit *unit;
	int promo_type;
	int pid;
	int item_slot;
	int jid_promo;
};

struct ProcPromoMain {
	PROC_HEADER_EXT(struct ProcPromoHandler);
};

void StartBmDemoPromotion(struct Unit *unit, int item_slot);
void StartUnitPromotionAction(struct Unit *unit, int promo_jid, int weapon_handle);
