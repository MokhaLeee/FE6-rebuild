#pragma once

#include "prelude.h"

/* math */
u32 k_udiv(u32 a, u32 b);   // a / b
u64 k_u64div(u64 a, u64 b);
u32 k_umod(u32 a, u32 b);   // a % b
u64 k_u64mod(u64 a, u64 b);
u32 k_udiv10(u32 n);       // n / 10
u32 k_umod10(u32 n);       // n % 10

/* bit */
#define BIT(k) (1UL << (k))
#define GENMASK_32(h, l) \
	(((0xffffffff) << (l)) & (0xffffffff >> (32 - 1 - (h))))

static inline void set_bit(void *bits, int idx)
{
	u8 *_bits = bits;

	_bits[idx >> 3] |= 1 << (idx & 0x7);
}

static inline void clear_bit(void *bits, int idx)
{
	u8 *_bits = bits;

	_bits[idx >> 3] &= ~(1 << (idx & 0x7));
}

static inline bool check_bit(void *bits, int idx)
{
	u8 *_bits = bits;

	return !!(_bits[idx >> 3] & (1 << (idx & 0x7)));
}

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
