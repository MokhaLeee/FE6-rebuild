#pragma once

#include "prelude.h"
#include "unit.h"

enum promotion_type {
	PROMO_TYPE_BM,
	PROMO_TYPE_PREP,
};

struct ProcPromoMain {
	PROC_HEADER;
	struct Unit *unit;
	int promo_type;
	int pid;
	int item_slot;
};

void StartBmDemoPromotion(ProcPtr parent);
