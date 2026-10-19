#pragma once

#include "prelude.h"
#include "unit.h"

enum promotion_type {
	PROMO_TYPE_BM,
	PROMO_TYPE_PREP,
};

struct ProcPromoMain {
	struct Unit *unit;
	int promo_type;
	int pid;
	int item_slot;
};

void StartBmPromotion(ProcPtr parent);
