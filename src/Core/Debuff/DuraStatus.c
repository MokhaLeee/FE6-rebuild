#include "prelude.h"
#include "unit.h"

int GetDuraStatusVal(struct Unit *unit, enum dura_status_type type)
{
	int val, sig;

	switch (type) {
	case DURA_STATUS_POW:
		val = unit->debuff_pow;
		sig = unit->debuff_pow_sign;
		break;

	case DURA_STATUS_MAG:
		val = unit->debuff_mag;
		sig = unit->debuff_mag_sign;
		break;

	case DURA_STATUS_SKL:
		val = unit->debuff_skl;
		sig = unit->debuff_skl_sign;
		break;

	case DURA_STATUS_SPD:
		val = unit->debuff_spd;
		sig = unit->debuff_spd_sign;
		break;

	case DURA_STATUS_LCK:
		val = unit->debuff_lck;
		sig = unit->debuff_lck_sign;
		break;

	case DURA_STATUS_DEF:
		val = unit->debuff_def;
		sig = unit->debuff_def_sign;
		break;

	case DURA_STATUS_RES:
		val = unit->debuff_res;
		sig = unit->debuff_res_sign;
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

	if (val < 0) {
		sig = 1;
		val = -val;
	} else
		sig = 0;

	if (val > 7)
		val = 7;

	switch (type) {
	case DURA_STATUS_POW:
		unit->debuff_pow = val;
		unit->debuff_pow_sign = sig;
		break;

	case DURA_STATUS_MAG:
		unit->debuff_mag = val;
		unit->debuff_mag_sign = sig;
		break;

	case DURA_STATUS_SKL:
		unit->debuff_skl = val;
		unit->debuff_skl_sign = sig;
		break;

	case DURA_STATUS_SPD:
		unit->debuff_spd = val;
		unit->debuff_spd_sign = sig;
		break;

	case DURA_STATUS_LCK:
		unit->debuff_lck = val;
		unit->debuff_lck_sign = sig;
		break;

	case DURA_STATUS_DEF:
		unit->debuff_def = val;
		unit->debuff_res_sign = sig;
		break;

	case DURA_STATUS_RES:
		unit->debuff_res = val;
		unit->debuff_res_sign = sig;
		break;

	default:
		return;
	}
}

void TickDuraStatus(struct Unit *unit)
{
	if (unit->debuff_pow) {
		unit->debuff_pow--;

		if (unit->debuff_pow == 0)
			unit->debuff_pow_sign = 0;
	}
	
	if (unit->debuff_mag) {
		unit->debuff_mag--;

		if (unit->debuff_mag == 0)
			unit->debuff_mag_sign = 0;
	}

	if (unit->debuff_skl) {
		unit->debuff_skl--;

		if (unit->debuff_skl == 0)
			unit->debuff_skl_sign = 0;
	}

	if (unit->debuff_spd) {
		unit->debuff_spd--;

		if (unit->debuff_spd == 0)
			unit->debuff_spd_sign = 0;
	}

	if (unit->debuff_lck) {
		unit->debuff_lck--;

		if (unit->debuff_lck == 0)
			unit->debuff_lck_sign = 0;
	}

	if (unit->debuff_def) {
		unit->debuff_def--;

		if (unit->debuff_def == 0)
			unit->debuff_def_sign = 0;
	}

	if (unit->debuff_res) {
		unit->debuff_res--;

		if (unit->debuff_res == 0)
			unit->debuff_res_sign = 0;
	}
}

void CleanupDuraStatus(struct Unit *unit)
{
	unit->debuff_pow = 0;
	unit->debuff_mag = 0;
	unit->debuff_skl = 0;
	unit->debuff_spd = 0;
	unit->debuff_lck = 0;
	unit->debuff_def = 0;
	unit->debuff_res = 0;
	unit->debuff_mov = 0;

	unit->debuff_pow_sign = 0;
	unit->debuff_mag_sign = 0;
	unit->debuff_skl_sign = 0;
	unit->debuff_spd_sign = 0;
	unit->debuff_lck_sign = 0;
	unit->debuff_def_sign = 0;
	unit->debuff_res_sign = 0;
	unit->debuff_mov_sign = 0;
}

int MSG_DuraStatusPow(int status, struct Unit *unit)
{
	return status + GetDuraStatusVal(unit, DURA_STATUS_POW);
}

int MSG_DuraStatusMag(int status, struct Unit *unit)
{
	return status + GetDuraStatusVal(unit, DURA_STATUS_MAG);
}

int MSG_DuraStatusSkl(int status, struct Unit *unit)
{
	return status + GetDuraStatusVal(unit, DURA_STATUS_SKL);
}

int MSG_DuraStatusSpd(int status, struct Unit *unit)
{
	return status + GetDuraStatusVal(unit, DURA_STATUS_SPD);
}

int MSG_DuraStatusLck(int status, struct Unit *unit)
{
	return status + GetDuraStatusVal(unit, DURA_STATUS_LCK);
}

int MSG_DuraStatusDef(int status, struct Unit *unit)
{
	return status + GetDuraStatusVal(unit, DURA_STATUS_DEF);
}

int MSG_DuraStatusRes(int status, struct Unit *unit)
{
	return status + GetDuraStatusVal(unit, DURA_STATUS_RES);
}
