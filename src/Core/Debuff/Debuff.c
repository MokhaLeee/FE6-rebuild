#include "prelude.h"
#include "klib.h"
#include "debuff.h"

int GetDebuffDuration(struct Unit *unit, int status)
{
	/* each u32 hold 16 status */
	int lo = status & 0xF;
	int hi = status / 16;
	u32 val;

	lo = lo * 2;

	val = unit->misc_status[hi];
	val = val >> lo;

	return (val & 3);
}

static void set_debuff_duration(struct Unit *unit, int status, int duration)
{
	int lo = status & 0xF;
	int hi = status / 16;
	u32 val;

	lo = lo * 2;

	val = unit->misc_status[hi];
	val = val & (~(3 << lo));
	val = val | ((duration & 3) << lo);

	/* register to disp */
	unit->misc_status[hi] = val;
	unit->disp_status = status;
}

void SetDebuffDuration(struct Unit *unit, int status, int duration)
{
	if (status == UNIT_STATUS_NONE) {
		memset(unit->misc_status, 0, sizeof(unit->misc_status));
		unit->disp_status = 0xFF;
	}

	set_debuff_duration(unit, status, duration);
}

int GetDispDebuff(struct Unit *unit)
{
	u32 hi, lo;

	if (likely(unit->disp_status == 0xFF))
		return UNIT_STATUS_NONE;

	if (unit->disp_status)
		return unit->disp_status;

	for (hi = 0; hi < ARRAY_COUNT(unit->misc_status); hi++) {
		u32 bitfile = unit->misc_status[hi];

		if (bitfile == 0)
			continue;

		for (lo = 0; lo < 16; lo++)
			if (bitfile & (3 << (lo * 2))) {
				int status = hi * 16 + lo;

				unit->disp_status = status;
				return status;
			}
	}
	unit->disp_status = 0xFF;
	return UNIT_STATUS_NONE;
}

bool TickUnitDebuff(struct Unit *unit)
{
	bool status_cleared = false;
	u32 hi, lo;

	for (hi = 0; hi < ARRAY_COUNT(unit->misc_status); hi++) {
		u32 bitfile = unit->misc_status[hi];

		if (bitfile == 0)
			continue;

		for (lo = 0; lo < 16; lo++) {
			int _lo = lo * 2;
			u32 duration = (bitfile >> _lo) & 3;

			if (unlikely(duration > 0)) {
				duration = duration - 1;

				unit->misc_status[hi] &= ~(3 << _lo);
				unit->misc_status[hi] |= (duration << _lo);

				if (duration == 0)
					status_cleared = true;
			}
		}
	}
	unit->disp_status = 0;
	return status_cleared;
}

/**
 * hooks
 */
void SetUnitStatus(struct Unit *unit, int status)
{
	SetDebuff(unit, status);
}

char const *GetUnitStatusName(struct Unit *unit)
{
	switch (GetDispDebuff(unit)) {
	case UNIT_STATUS_BERSERK:
		return TEXT("バサーク", "Berserk");

	case UNIT_STATUS_SILENCED:
		return TEXT("サイレス", "Silence");

	case UNIT_STATUS_SLEEP:
		return TEXT("スリープ", "Sleep");

	case UNIT_STATUS_POISON:
		return TEXT("ポイズン", "Poison");

	case UNIT_STATUS_NONE:
	default:
		return JTEXT("ーーー");
	}
}
