#pragma once

#include "prelude.h"

// a / b
u32 k_udiv(u32 a, u32 b);
u64 k_u64div(u64 a, u64 b);

// a % b
u32 k_umod(u32 a, u32 b);
u64 k_u64mod(u64 a, u64 b);

// n / 10
u32 k_udiv10(u32 n);

// n % 10
u32 k_umod10(u32 n);

/* misc */
enum UnitStatusIdxRef {
	UNIT_STATUS_POW,
	UNIT_STATUS_MAG,
	UNIT_STATUS_SKL,
	UNIT_STATUS_SPD,
	UNIT_STATUS_LCK,
	UNIT_STATUS_DEF,
	UNIT_STATUS_RES,
	UNIT_STATUS_MOV,
	UNIT_STATUS_CON,

	UNIT_STATUS_MAX
};

enum BattleStatusIdxRef {
	BATTLE_STATUS_ATK,
	BATTLE_STATUS_DEF,
	BATTLE_STATUS_AS,
	BATTLE_STATUS_HIT,
	BATTLE_STATUS_AVO,
	BATTLE_STATUS_CRIT,
	BATTLE_STATUS_DODGE,
	BATTLE_STATUS_SILENCER,

	BATTLE_STATUS_MAX
};
