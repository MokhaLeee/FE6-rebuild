#include "prelude.h"
#include "bm.h"
#include "supply.h"
#include "eventinfo.h"
#include "unit.h"
#include "item.h"
#include "action.h"
#include "trap.h"
#include "faction.h"
#include "save.h"
#include "save_game.h"
#include "savelayout.h"

#include "debug.h"
#include "klib.h"
#include "save-hw.h"

struct MsaPackedUnit {
	/* 00 */ u8 pid, jid;
	/* 02 */ u8 level, exp;
	/* 04 */ i8 x, y;
	/* 06 */ i8 bonus_con, bonus_mov;
	/* 08 */ i8 max_hp, pow, mag, skl, spd, lck, def, res;
	/* 10 */ u16 items[ITEMSLOT_INV_COUNT];
	/* 1A */ u8 rescue;
	/* 1B */ u8 status : 4;
	/* 1B */ u8 status_duration : 4;
	/* 1C */ u8 torch : 4;
	/* 1C */ u8 barrier : 4;
	/* 1D */ u8 save_flags;
	/* 1E */ u8 wexp[UNIT_WEAPON_EXP_COUNT];
	/* 26 */ u8 supports[UNIT_SUPPORT_COUNT];
	/* 30 */
};

/**
 * 62 * 0x30 = 0xBA0 < 0x1000
 * We can save all allies at one turn.
 */

static void pack_msa_unit(const struct Unit *unit, struct MsaPackedUnit *pack)
{
	int i;
	struct Unit tmp_unit;

	if (unit->pinfo == NULL) {
		ClearUnit(&tmp_unit);
		unit = &tmp_unit;

		pack->pid = 0;
		pack->jid = 0;
	} else {
		pack->pid = UNIT_PID(unit);
		pack->jid = UNIT_JID(unit);
	}

	pack->level = unit->level;
	pack->exp = unit->exp;
	pack->x = unit->x;
	pack->y = unit->y;
	pack->max_hp = unit->max_hp;
	pack->pow = unit->pow;
	pack->mag = unit->mag;
	pack->skl = unit->skl;
	pack->spd = unit->spd;
	pack->lck = unit->lck;
	pack->def = unit->def;
	pack->res = unit->res;
	pack->bonus_con = unit->bonus_con;
	pack->bonus_mov = unit->bonus_mov;

	pack->save_flags = 0;
	if (UNIT_FLAG_DEAD & unit->flags)
		pack->save_flags |= SAVEUNIT_FLAG_DEAD;
	if (UNIT_FLAG_NOT_DEPLOYED & unit->flags)
		pack->save_flags |= SAVEUNIT_FLAG_UNDEPLOYED;
	if (UNIT_FLAG_SOLOANIM_1 & unit->flags)
		pack->save_flags |= SAVEUNIT_FLAG_SOLOANIM1;
	if (UNIT_FLAG_SOLOANIM_2 & unit->flags)
		pack->save_flags |= SAVEUNIT_FLAG_SOLOANIM2;

	for (i = 0; i < ITEMSLOT_INV_COUNT; i++)
		pack->items[i] = unit->items[i];

	for (i = 0; i < UNIT_SUPPORT_COUNT; i++)
		pack->supports[i] = unit->supports[i];

	for (i = 0; i < UNIT_WEAPON_EXP_COUNT; i++)
		pack->wexp[i] = unit->wexp[i];
}

static void unpack_msa_unit(const struct MsaPackedUnit *pack, struct Unit *unit)
{
	int i;

	unit->pinfo = GetPInfo(pack->pid);
	unit->jinfo = GetJInfo(pack->jid);

	unit->level = pack->level;
	unit->exp = pack->exp;
	unit->x = pack->x;
	unit->y = pack->y;

	unit->max_hp = pack->max_hp;
	unit->pow = pack->pow;
	unit->mag = pack->mag;
	unit->skl = pack->skl;
	unit->spd = pack->spd;
	unit->lck = pack->lck;
	unit->def = pack->def;
	unit->res = pack->res;
	unit->bonus_con = pack->bonus_con;
	unit->bonus_mov = pack->bonus_mov;

	unit->flags = 0;
	if (pack->save_flags & SAVEUNIT_FLAG_DEAD)
		unit->flags |= UNIT_FLAG_DEAD | UNIT_FLAG_HIDDEN;
	if (pack->save_flags & SAVEUNIT_FLAG_UNDEPLOYED)
		unit->flags |= UNIT_FLAG_NOT_DEPLOYED | UNIT_FLAG_HIDDEN;
	if (pack->save_flags & SAVEUNIT_FLAG_SOLOANIM1)
		unit->flags |= UNIT_FLAG_SOLOANIM_1;
	if (pack->save_flags & SAVEUNIT_FLAG_SOLOANIM2)
		unit->flags |= UNIT_FLAG_SOLOANIM_2;

	if (unit->exp > 99)
		unit->exp = -1;

	for (i = 0; i < ITEMSLOT_INV_COUNT; i++)
		unit->items[i] = pack->items[i];

	for (i = 0; i < UNIT_SUPPORT_COUNT; i++)
		unit->supports[i] = pack->supports[i];

	for (i = 0; i < UNIT_WEAPON_EXP_COUNT; i++)
		unit->wexp[i] = pack->wexp[i];
}

static void Msa_SaveUnit_Ally(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsaPackedUnit));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsaPackedUnit pack;

		pack_msa_unit(&gUnitArrayBlue[i + 1], &pack);
		memcpy(buf, &pack, sizeof(struct MsaPackedUnit));
		buf = buf + sizeof(struct MsaPackedUnit);
	}
}

static void Msa_LoadUnit_Ally(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsaPackedUnit));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsaPackedUnit pack;

		memcpy(&pack, buf, sizeof(struct MsaPackedUnit));
		unpack_msa_unit(&pack, &gUnitArrayBlue[i + 1]);
		buf = buf + sizeof(struct MsaPackedUnit);
	}
}

static void EMS_SavePlaySt(u8 *buf, int size)
{
	memcpy(buf, &gPlaySt, sizeof(struct PlaySt));
}

static void EMS_LoadPlaySt(u8 *buf, int size)
{
	memcpy(&gPlaySt, buf, sizeof(struct PlaySt));
}

static void EMS_SaveSupplyItem(u8 *buf, int size)
{
	memcpy(buf, GetSupplyItems(), SUPPLY_ITEM_COUNT *sizeof(u16));
}

static void EMS_LoadSupplyItem(u8 *buf, int size)
{
	memcpy(GetSupplyItems(), buf, SUPPLY_ITEM_COUNT *sizeof(u16));
}

static void EMS_SavePidStats(u8 *buf, int size)
{
	memcpy(buf, gPidStats, sizeof(gPidStats));
}

static void EMS_LoadPidStats(u8 *buf, int size)
{
	memcpy(gPidStats, buf, sizeof(gPidStats));
}

static void EMS_SaveChapterStats(u8 *buf, int size)
{
	memcpy(buf, gChapterStats, sizeof(gChapterStats));
}

static void EMS_LoadChapterStats(u8 *buf, int size)
{
	memcpy(gChapterStats, buf, sizeof(gChapterStats));
}

static void EMS_SavePermanentFlags(u8 *buf, int size)
{
	memcpy(buf, GetPermanentFlagBits(), GetPermanentFlagBitsSize());
}

static void EMS_LoadPermanentFlags(u8 *buf, int size)
{
	memcpy(GetPermanentFlagBits(), buf, GetPermanentFlagBitsSize());
}

const struct EmsChunk gMsaChunk[] = {
	/* fixed: ReadGameSavePlaySt */
	{
		.size = sizeof(struct PlaySt),
		.save = EMS_SavePlaySt,
		.load = EMS_LoadPlaySt,
		.chunk_idx = EMS_CHUNK_PLAYST,
	},

	{
		.size = SUPPLY_ITEM_COUNT *sizeof(u16),
		.save = EMS_SaveSupplyItem,
		.load = EMS_LoadSupplyItem,
	},
	{
		.size = sizeof(gPidStats),
		.save = EMS_SavePidStats,
		.load = EMS_LoadPidStats,
	},
	{
		.size = sizeof(gChapterStats),
		.save = EMS_SaveChapterStats,
		.load = EMS_LoadChapterStats,
	},
	{
		.size = sizeof(gPermanentFlagBits),
		.save = EMS_SavePermanentFlags,
		.load = EMS_LoadPermanentFlags,
	},
	{
		.size = UNIT_AMOUNT_BLUE * sizeof(struct MsaPackedUnit),
		.save = Msa_SaveUnit_Ally,
		.load = Msa_LoadUnit_Ally,
	},
	{ .size = 0 }
};

/**
 * MSU
 */
struct MsuPackedUnit {
	/* 00 */ u8 pid, jid;
	/* 02 */ u8 level, exp;
	/* 04 */ i8 x, y;
	/* 06 */ i8 bonus_con, bonus_mov;
	/* 08 */ i8 max_hp, pow, mag, skl, spd, lck, def, res;
	/* 10 */ u16 items[ITEMSLOT_INV_COUNT];
	/* 1A */ u8 hp;
	/* 1B */ u8 status : 4;
	/* 1B */ u8 status_duration : 4;
	/* 1C */ u8 wexp[UNIT_WEAPON_EXP_COUNT];
	/* 24 */ u16 flags;
	/* 26 */ u8 _pad_[2];
	/* 28 */ union {
				struct {
					u8 supports[UNIT_SUPPORT_COUNT];
					u8 rescue;
					u8 torch : 4;
					u8 barrier : 4;

				} ally;
				struct {
					u8 ai_a;
					u8 ai_a_pc;
					u8 ai_b;
					u8 ai_b_pc;
					u8 ai_counter;
					u8 ai_flags;
					u16 ai_config;
				} ai;
			} u;
	/* 34 */
};

/**
 * 62 * 0x34 = 0xC98 < 0x1000
 * We can save all allies at one turn.
 */

static void pack_msu_unit(const struct Unit *unit, struct MsuPackedUnit *pack)
{
	int i;
	struct Unit tmp_unit;

	if (unit->pinfo == NULL) {
		ClearUnit(&tmp_unit);
		unit = &tmp_unit;

		pack->pid = 0;
		pack->jid = 0;
	} else {
		pack->pid = UNIT_PID(unit);
		pack->jid = UNIT_JID(unit);
	}

	pack->level = unit->level;
	pack->exp = unit->exp;
	pack->x = unit->x;
	pack->y = unit->y;
	pack->max_hp = unit->max_hp;
	pack->hp = unit->hp;
	pack->pow = unit->pow;
	pack->mag = unit->mag;
	pack->skl = unit->skl;
	pack->spd = unit->spd;
	pack->lck = unit->lck;
	pack->def = unit->def;
	pack->res = unit->res;
	pack->bonus_con = unit->bonus_con;
	pack->bonus_mov = unit->bonus_mov;

	pack->flags = unit->flags;

	for (i = 0; i < ITEMSLOT_INV_COUNT; i++)
		pack->items[i] = unit->items[i];

	for (i = 0; i < UNIT_WEAPON_EXP_COUNT; i++)
		pack->wexp[i] = unit->wexp[i];

	if (UNIT_FACTION(unit) == FACTION_BLUE) {
		for (i = 0; i < UNIT_SUPPORT_COUNT; i++)
			pack->u.ally.supports[i] = unit->supports[i];

		pack->u.ally.rescue = unit->rescue;
		pack->u.ally.torch = unit->torch;
		pack->u.ally.barrier = unit->barrier;
	} else {
		pack->u.ai.ai_a = unit->ai_a;
		pack->u.ai.ai_a_pc = unit->ai_a_pc;
		pack->u.ai.ai_b = unit->ai_b;
		pack->u.ai.ai_b_pc = unit->ai_b_pc;
		pack->u.ai.ai_config = unit->ai_config;
		pack->u.ai.ai_counter = unit->ai_counter;
		pack->u.ai.ai_flags = unit->ai_flags;
	}
}

static void unpack_msu_unit(const struct MsuPackedUnit *pack, struct Unit *unit)
{
	int i;

	unit->pinfo = GetPInfo(pack->pid);
	unit->jinfo = GetJInfo(pack->jid);

	unit->level = pack->level;
	unit->exp = pack->exp;
	unit->x = pack->x;
	unit->y = pack->y;

	unit->max_hp = pack->max_hp;
	unit->hp = pack->hp;
	unit->pow = pack->pow;
	unit->mag = pack->mag;
	unit->skl = pack->skl;
	unit->spd = pack->spd;
	unit->lck = pack->lck;
	unit->def = pack->def;
	unit->res = pack->res;
	unit->bonus_con = pack->bonus_con;
	unit->bonus_mov = pack->bonus_mov;

	unit->flags = pack->flags;

	if (unit->exp > 99)
		unit->exp = -1;

	for (i = 0; i < ITEMSLOT_INV_COUNT; i++)
		unit->items[i] = pack->items[i];

	for (i = 0; i < UNIT_WEAPON_EXP_COUNT; i++)
		unit->wexp[i] = pack->wexp[i];

	if (UNIT_FACTION(unit) == FACTION_BLUE) {
		for (i = 0; i < UNIT_SUPPORT_COUNT; i++)
			unit->supports[i] = pack->u.ally.supports[i];

		unit->rescue = pack->u.ally.rescue;
		unit->torch = pack->u.ally.torch;
		unit->barrier = pack->u.ally.barrier;
	} else {
		unit->ai_a = pack->u.ai.ai_a;
		unit->ai_a_pc = pack->u.ai.ai_a_pc;
		unit->ai_b = pack->u.ai.ai_b;
		unit->ai_b_pc = pack->u.ai.ai_b_pc;
		unit->ai_config = pack->u.ai.ai_config;
		unit->ai_counter = pack->u.ai.ai_counter;
		unit->ai_flags = pack->u.ai.ai_flags;
	}
}

static void Msu_SaveUnit_Ally(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsuPackedUnit));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsuPackedUnit pack;

		pack_msu_unit(&gUnitArrayBlue[i + 1], &pack);
		memcpy(buf, &pack, sizeof(struct MsuPackedUnit));
		buf = buf + sizeof(struct MsuPackedUnit);
	}
}

static void Msu_LoadUnit_Ally(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsuPackedUnit));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsuPackedUnit pack;

		memcpy(&pack, buf, sizeof(struct MsuPackedUnit));
		unpack_msu_unit(&pack, &gUnitArrayBlue[i + 1]);
		buf = buf + sizeof(struct MsuPackedUnit);
	}
}

static void Msu_SaveUnit_Enemy(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsuPackedUnit));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsuPackedUnit pack;

		pack_msu_unit(&gUnitArrayRed[i + 1], &pack);
		memcpy(buf, &pack, sizeof(struct MsuPackedUnit));
		buf = buf + sizeof(struct MsuPackedUnit);
	}
}

static void Msu_LoadUnit_Enemy(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsuPackedUnit));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsuPackedUnit pack;

		memcpy(&pack, buf, sizeof(struct MsuPackedUnit));
		unpack_msu_unit(&pack, &gUnitArrayRed[i + 1]);
		buf = buf + sizeof(struct MsuPackedUnit);
	}
}

static void Msu_SaveUnit_Npc(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsuPackedUnit));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsuPackedUnit pack;

		pack_msu_unit(&gUnitArrayGreen[i + 1], &pack);
		memcpy(buf, &pack, sizeof(struct MsuPackedUnit));
		buf = buf + sizeof(struct MsuPackedUnit);
	}
}

static void Msu_LoadUnit_Npc(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsuPackedUnit));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsuPackedUnit pack;

		memcpy(&pack, buf, sizeof(struct MsuPackedUnit));
		unpack_msu_unit(&pack, &gUnitArrayGreen[i + 1]);
		buf = buf + sizeof(struct MsuPackedUnit);
	}
}

static void MSU_SaveChapterFlags(u8 *buf, int size)
{
	memcpy(buf, GetChapterFlagBits(), GetChapterFlagBitsSize());
}

static void MSU_LoadChapterFlags(u8 *buf, int size)
{
	memcpy(GetChapterFlagBits(), buf, GetChapterFlagBitsSize());
}

static void MSU_SaveActionRand(u8 *buf, int size)
{
	SaveActionRand();
	memcpy(buf, &gAction, sizeof(struct Action));
}

static void MSU_LoadActionRnad(u8 *buf, int size)
{
	memcpy(&gAction, buf, sizeof(struct Action));
	RestoreActionRand();
}

static void Msa_SaveTrap(u8 *buf, int size)
{
	memcpy(buf, GetTrap(0), size);
}

static void Msa_LoadTrap(u8 *buf, int size)
{
	memcpy(GetTrap(0), buf, size);
}

const struct EmsChunk gMsuChunk[] = {
	/* fixed: ReadGameSavePlaySt */
	{
		.size = sizeof(struct PlaySt),
		.save = EMS_SavePlaySt,
		.load = EMS_LoadPlaySt,
		.chunk_idx = EMS_CHUNK_PLAYST,
	},

	{
		.size = UNIT_AMOUNT_BLUE * sizeof(struct MsuPackedUnit),
		.save = Msu_SaveUnit_Ally,
		.load = Msu_LoadUnit_Ally,
	},
	{
		.size = SUPPLY_ITEM_COUNT *sizeof(u16),
		.save = EMS_SaveSupplyItem,
		.load = EMS_LoadSupplyItem,
	},
	{
		.size = sizeof(gPidStats),
		.save = EMS_SavePidStats,
		.load = EMS_LoadPidStats,
	},
	{
		.size = sizeof(gChapterStats),
		.save = EMS_SaveChapterStats,
		.load = EMS_LoadChapterStats,
	},
	{
		.size = sizeof(gChapterFlagBits),
		.save = MSU_SaveChapterFlags,
		.load = MSU_LoadChapterFlags,
	},
	{
		.size = sizeof(gPermanentFlagBits),
		.save = EMS_SavePermanentFlags,
		.load = EMS_LoadPermanentFlags,
	},
	{
		.size = sizeof(struct Action),
		.save = MSU_SaveActionRand,
		.load = MSU_LoadActionRnad,
	},
	{
		.size = sizeof(struct Action),
		.save = MSU_SaveActionRand,
		.load = MSU_LoadActionRnad,
	},
	{
		.size = TRAP_MAX_COUNT * sizeof(struct Trap),
		.save = Msa_SaveTrap,
		.load = Msa_LoadTrap,
	},
	{
		.size = UNIT_AMOUNT_RED * sizeof(struct MsuPackedUnit),
		.save = Msu_SaveUnit_Enemy,
		.load = Msu_LoadUnit_Enemy,
	},
	{
		.size = UNIT_AMOUNT_GREEN * sizeof(struct MsuPackedUnit),
		.save = Msu_SaveUnit_Npc,
		.load = Msu_LoadUnit_Npc,
	},
	{ .size = 0 }
};
