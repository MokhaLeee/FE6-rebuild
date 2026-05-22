#pragma once

#include "prelude.h"
#include "unit.h"

enum {
	UNIT_STATUS_NONE,

	UNIT_STATUS_POISON,
	UNIT_STATUS_SLEEP,
	UNIT_STATUS_SILENCED,
	UNIT_STATUS_BERSERK,
};

int GetDebuffDuration(struct Unit *unit, int status);
void SetDebuffDuration(struct Unit *unit, int status, int duration);
int GetDispDebuff(struct Unit *unit);
bool TickUnitDebuff(struct Unit *unit);

#define CheckDebuff(unit, status) \
    (GetDebuffDuration(unit, status) != 0)

#define SetDebuff(unit, status) \
	SetDebuffDuration(unit, status, 3)
