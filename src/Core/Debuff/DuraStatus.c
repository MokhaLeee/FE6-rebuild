#include "prelude.h"
#include "unit.h"

struct DuraStatus {
	u32 pow_sign : 1;
	u32 pow      : 3;
	u32 mag_sign : 1;
	u32 mag      : 3;

	u32 skl_sign : 1;
	u32 skl      : 3;
	u32 spd_sign : 1;
	u32 spd      : 3;

	u32 lck_sign : 1;
	u32 lck      : 3;
	u32 def_sign : 1;
	u32 def      : 3;

	u32 res_sign : 1;
	u32 res      : 3;
};

static struct DuraStatus *get_dura_status(struct Unit *unit)
{
	return (struct DuraStatus *)(&unit->dura_status);
}

int GetDuraStatusVal(struct Unit *unit, enum dura_status_type type)
{
	int val, sig;
	struct DuraStatus *dstat = get_dura_status(unit);

	switch (type) {
	case DURA_STATUS_POW:
		val = dstat->pow;
		sig = dstat->pow_sign;
		break;

	case DURA_STATUS_MAG:
		val = dstat->mag;
		sig = dstat->mag_sign;
		break;

	case DURA_STATUS_SKL:
		val = dstat->skl;
		sig = dstat->skl_sign;
		break;

	case DURA_STATUS_SPD:
		val = dstat->spd;
		sig = dstat->spd_sign;
		break;

	case DURA_STATUS_LCK:
		val = dstat->lck;
		sig = dstat->lck_sign;
		break;

	case DURA_STATUS_DEF:
		val = dstat->def;
		sig = dstat->def_sign;
		break;

	case DURA_STATUS_RES:
		val = dstat->res;
		sig = dstat->res_sign;
		break;

	default:
		return 0;
	}

	if (sig)
		return -val;
	else
		return val;
}

void SetDuraStatusVal(struct Unit *unit, enum dura_status_type type, int val)
{
	int sig;
	struct DuraStatus *dstat = get_dura_status(unit);

	if (val < 0) {
		sig = 1;
		val = -val;
	} else
		sig = 0;

	if (val > 7)
		val = 7;

	switch (type) {
	case DURA_STATUS_POW:
		dstat->pow = val;
		dstat->pow_sign = sig;
		break;

	case DURA_STATUS_MAG:
		dstat->mag = val;
		dstat->mag_sign = sig;
		break;

	case DURA_STATUS_SKL:
		dstat->skl = val;
		dstat->skl_sign = sig;
		break;

	case DURA_STATUS_SPD:
		dstat->spd = val;
		dstat->spd_sign = sig;
		break;

	case DURA_STATUS_LCK:
		dstat->lck = val;
		dstat->lck_sign = sig;
		break;

	case DURA_STATUS_DEF:
		dstat->def = val;
		dstat->res_sign = sig;
		break;

	case DURA_STATUS_RES:
		dstat->res = val;
		dstat->res_sign = sig;
		break;

	default:
		return;
	}
}

void TickDuraStatus(struct Unit *unit)
{
	struct DuraStatus *dstat = get_dura_status(unit);

	if (dstat->pow) {
		dstat->pow--;

		if (dstat->pow == 0)
			dstat->pow_sign = 0;
	}
	
	if (dstat->mag) {
		dstat->mag--;

		if (dstat->mag == 0)
			dstat->mag_sign = 0;
	}

	if (dstat->skl) {
		dstat->skl--;

		if (dstat->skl == 0)
			dstat->skl_sign = 0;
	}

	if (dstat->spd) {
		dstat->spd--;

		if (dstat->spd == 0)
			dstat->spd_sign = 0;
	}

	if (dstat->lck) {
		dstat->lck--;

		if (dstat->lck == 0)
			dstat->lck_sign = 0;
	}

	if (dstat->def) {
		dstat->def--;

		if (dstat->def == 0)
			dstat->def_sign = 0;
	}

	if (dstat->res) {
		dstat->res--;

		if (dstat->res == 0)
			dstat->res_sign = 0;
	}
}

