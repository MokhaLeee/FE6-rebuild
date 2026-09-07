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
	/* 26 */ u8 _pad_[2];
	/* 28 */ u16 skills[4];
	/* 30 */
};

_Static_assert(sizeof(struct MsaPackedUnit) == 0x30, "size not match: MsaPackedUnit");
const int sizeof_MsaPackedUnit = sizeof(struct MsaPackedUnit);

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

	for (i = 0; i < UNIT_WEAPON_EXP_COUNT; i++)
		pack->wexp[i] = unit->wexp[i];

	for (i = 0; i < UNIT_DYNAMIC_SKILLS_COUNT; i++)
		pack->skills[i] = unit->skills[i];
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

	for (i = 0; i < UNIT_WEAPON_EXP_COUNT; i++)
		unit->wexp[i] = pack->wexp[i];

	for (i = 0; i < UNIT_DYNAMIC_SKILLS_COUNT; i++)
		unit->skills[i] = pack->skills[i];
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

/**
 * MSU
 */
struct MsuPackedUnitAlly {
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
	/* 26 */ u8 rescue;

	/* 27 */ u8 debuff_pow_sign : 1;
			 u8 debuff_pow      : 3;
			 u8 debuff_mag_sign : 1;
			 u8 debuff_mag      : 3;
	/* 28 */ u8 debuff_skl_sign : 1;
			 u8 debuff_skl : 3;
			 u8 debuff_spd_sign : 1;
			 u8 debuff_spd : 3;
	/* 29 */ u8 debuff_lck_sign : 1;
			 u8 debuff_lck : 3;
			 u8 debuff_def_sign : 1;
			 u8 debuff_def : 3;
	/* 2A */ u8 debuff_res_sign : 1;
			 u8 debuff_res : 3;
			 u8 debuff_mov_sign : 1;
			 u8 debuff_mov : 3;

	/* 2B */ u8 torch : 4;
	/* 2B */ u8 unused_27 : 4;
	/* 2C */ u16 skills[4];
	/* 34 */
};

_Static_assert(sizeof(struct MsuPackedUnitAlly) == 0x34, "size not match: MsuPackedUnitAlly");
const int sizeof_MsuPackedUnitAlly = sizeof(struct MsuPackedUnitAlly);

struct MsuPackedUnitAI {
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
	/* 26 */ u8 ai_a;
	/* 27 */ u8 ai_a_pc;
	/* 28 */ u8 ai_b;
	/* 29 */ u8 ai_b_pc;
	/* 2A */ u8 ai_counter;
	/* 2B */ u8 ai_flags;
	/* 2C */ u16 ai_config;

	/* 2E */ u8 debuff_pow_sign : 1;
			 u8 debuff_pow      : 3;
			 u8 debuff_mag_sign : 1;
			 u8 debuff_mag      : 3;
	/* 2F */ u8 debuff_skl_sign : 1;
			 u8 debuff_skl : 3;
			 u8 debuff_spd_sign : 1;
			 u8 debuff_spd : 3;
	/* 30 */ u8 debuff_lck_sign : 1;
			 u8 debuff_lck : 3;
			 u8 debuff_def_sign : 1;
			 u8 debuff_def : 3;
	/* 31 */ u8 debuff_res_sign : 1;
			 u8 debuff_res : 3;
			 u8 debuff_mov_sign : 1;
			 u8 debuff_mov : 3;

	/* 32 */ u16 skills[4];
	/* 3A */ u8 _pad_3A[2];
};

_Static_assert(sizeof(struct MsuPackedUnitAI) == 0x3C, "size not match: MsuPackedUnitAI");
const int sizeof_MsuPackedUnitAI = sizeof(struct MsuPackedUnitAI);

static void pack_msu_unit_ally(const struct Unit *unit, struct MsuPackedUnitAlly *pack)
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

	pack->rescue = unit->rescue;

	pack->debuff_pow = unit->debuff_pow;
	pack->debuff_mag = unit->debuff_mag;
	pack->debuff_skl = unit->debuff_skl;
	pack->debuff_spd = unit->debuff_spd;
	pack->debuff_lck = unit->debuff_lck;
	pack->debuff_def = unit->debuff_def;
	pack->debuff_res = unit->debuff_res;
	pack->debuff_mov = unit->debuff_mov;
	pack->debuff_pow_sign = unit->debuff_pow_sign;
	pack->debuff_mag_sign = unit->debuff_mag_sign;
	pack->debuff_skl_sign = unit->debuff_skl_sign;
	pack->debuff_spd_sign = unit->debuff_spd_sign;
	pack->debuff_lck_sign = unit->debuff_lck_sign;
	pack->debuff_def_sign = unit->debuff_def_sign;
	pack->debuff_res_sign = unit->debuff_res_sign;
	pack->debuff_mov_sign = unit->debuff_mov_sign;
	pack->torch = unit->torch;

	for (i = 0; i < UNIT_DYNAMIC_SKILLS_COUNT; i++)
		pack->skills[i] = unit->skills[i];
}

static void unpack_msu_unit_ally(const struct MsuPackedUnitAlly *pack, struct Unit *unit)
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

	unit->rescue = pack->rescue;

	unit->debuff_pow = pack->debuff_pow;
	unit->debuff_mag = pack->debuff_mag;
	unit->debuff_skl = pack->debuff_skl;
	unit->debuff_spd = pack->debuff_spd;
	unit->debuff_lck = pack->debuff_lck;
	unit->debuff_def = pack->debuff_def;
	unit->debuff_res = pack->debuff_res;
	unit->debuff_mov = pack->debuff_mov;
	unit->debuff_pow_sign = pack->debuff_pow_sign;
	unit->debuff_mag_sign = pack->debuff_mag_sign;
	unit->debuff_skl_sign = pack->debuff_skl_sign;
	unit->debuff_spd_sign = pack->debuff_spd_sign;
	unit->debuff_lck_sign = pack->debuff_lck_sign;
	unit->debuff_def_sign = pack->debuff_def_sign;
	unit->debuff_res_sign = pack->debuff_res_sign;
	unit->debuff_mov_sign = pack->debuff_mov_sign;
	unit->torch = pack->torch;

	for (i = 0; i < UNIT_DYNAMIC_SKILLS_COUNT; i++)
		unit->skills[i] = pack->skills[i];
}

static void pack_msu_unit_ai(const struct Unit *unit, struct MsuPackedUnitAI *pack)
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

	pack->ai_a = unit->ai_a;
	pack->ai_a_pc = unit->ai_a_pc;
	pack->ai_b = unit->ai_b;
	pack->ai_b_pc = unit->ai_b_pc;
	pack->ai_config = unit->ai_config;
	pack->ai_counter = unit->ai_counter;
	pack->ai_flags = unit->ai_flags;

	pack->debuff_pow = unit->debuff_pow;
	pack->debuff_mag = unit->debuff_mag;
	pack->debuff_skl = unit->debuff_skl;
	pack->debuff_spd = unit->debuff_spd;
	pack->debuff_lck = unit->debuff_lck;
	pack->debuff_def = unit->debuff_def;
	pack->debuff_res = unit->debuff_res;
	pack->debuff_mov = unit->debuff_mov;
	pack->debuff_pow_sign = unit->debuff_pow_sign;
	pack->debuff_mag_sign = unit->debuff_mag_sign;
	pack->debuff_skl_sign = unit->debuff_skl_sign;
	pack->debuff_spd_sign = unit->debuff_spd_sign;
	pack->debuff_lck_sign = unit->debuff_lck_sign;
	pack->debuff_def_sign = unit->debuff_def_sign;
	pack->debuff_res_sign = unit->debuff_res_sign;
	pack->debuff_mov_sign = unit->debuff_mov_sign;

	for (i = 0; i < UNIT_DYNAMIC_SKILLS_COUNT; i++)
		pack->skills[i] = unit->skills[i];
}

static void unpack_msu_unit_ai(const struct MsuPackedUnitAI *pack, struct Unit *unit)
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

	unit->ai_a = pack->ai_a;
	unit->ai_a_pc = pack->ai_a_pc;
	unit->ai_b = pack->ai_b;
	unit->ai_b_pc = pack->ai_b_pc;
	unit->ai_config = pack->ai_config;
	unit->ai_counter = pack->ai_counter;
	unit->ai_flags = pack->ai_flags;

	unit->debuff_pow = pack->debuff_pow;
	unit->debuff_mag = pack->debuff_mag;
	unit->debuff_skl = pack->debuff_skl;
	unit->debuff_spd = pack->debuff_spd;
	unit->debuff_lck = pack->debuff_lck;
	unit->debuff_def = pack->debuff_def;
	unit->debuff_res = pack->debuff_res;
	unit->debuff_mov = pack->debuff_mov;
	unit->debuff_pow_sign = pack->debuff_pow_sign;
	unit->debuff_mag_sign = pack->debuff_mag_sign;
	unit->debuff_skl_sign = pack->debuff_skl_sign;
	unit->debuff_spd_sign = pack->debuff_spd_sign;
	unit->debuff_lck_sign = pack->debuff_lck_sign;
	unit->debuff_def_sign = pack->debuff_def_sign;
	unit->debuff_res_sign = pack->debuff_res_sign;
	unit->debuff_mov_sign = pack->debuff_mov_sign;

	for (i = 0; i < UNIT_DYNAMIC_SKILLS_COUNT; i++)
		unit->skills[i] = pack->skills[i];
}

static void Msu_SaveUnit_Ally(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsuPackedUnitAlly));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsuPackedUnitAlly pack;

		pack_msu_unit_ally(&gUnitArrayBlue[i + 1], &pack);
		memcpy(buf, &pack, sizeof(struct MsuPackedUnitAlly));
		buf = buf + sizeof(struct MsuPackedUnitAlly);
	}
}

static void Msu_LoadUnit_Ally(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsuPackedUnitAlly));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsuPackedUnitAlly pack;

		memcpy(&pack, buf, sizeof(struct MsuPackedUnitAlly));
		unpack_msu_unit_ally(&pack, &gUnitArrayBlue[i + 1]);
		buf = buf + sizeof(struct MsuPackedUnitAlly);
	}
}

static void Msu_SaveUnit_Enemy(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsuPackedUnitAI));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsuPackedUnitAI pack;

		pack_msu_unit_ai(&gUnitArrayRed[i + 1], &pack);
		memcpy(buf, &pack, sizeof(struct MsuPackedUnitAI));
		buf = buf + sizeof(struct MsuPackedUnitAI);
	}
}

static void Msu_LoadUnit_Enemy(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsuPackedUnitAI));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsuPackedUnitAI pack;

		memcpy(&pack, buf, sizeof(struct MsuPackedUnitAI));
		unpack_msu_unit_ai(&pack, &gUnitArrayRed[i + 1]);
		buf = buf + sizeof(struct MsuPackedUnitAI);
	}
}

static void Msu_SaveUnit_Npc(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsuPackedUnitAI));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsuPackedUnitAI pack;

		pack_msu_unit_ai(&gUnitArrayGreen[i + 1], &pack);
		memcpy(buf, &pack, sizeof(struct MsuPackedUnitAI));
		buf = buf + sizeof(struct MsuPackedUnitAI);
	}
}

static void Msu_LoadUnit_Npc(u8 *buf, int size)
{
	int i, amt = k_udiv(size, sizeof(struct MsuPackedUnitAI));

	Assert(size <= 0x1000);

	for (i = 0; i < amt; i++) {
		struct MsuPackedUnitAI pack;

		memcpy(&pack, buf, sizeof(struct MsuPackedUnitAI));
		unpack_msu_unit_ai(&pack, &gUnitArrayGreen[i + 1]);
		buf = buf + sizeof(struct MsuPackedUnitAI);
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
		.size = UNIT_SAVE_AMOUNT_BLUE * sizeof(struct MsaPackedUnit),
		.save = Msa_SaveUnit_Ally,
		.load = Msa_LoadUnit_Ally,
	},
	{ .size = 0 }
};

const struct EmsChunk gMsuChunk[] = {
	/* fixed: ReadGameSavePlaySt */
	{
		.size = sizeof(struct PlaySt),
		.save = EMS_SavePlaySt,
		.load = EMS_LoadPlaySt,
		.chunk_idx = EMS_CHUNK_PLAYST,
	},
	{
		.size = UNIT_SAVE_AMOUNT_BLUE * sizeof(struct MsuPackedUnitAlly),
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
		.size = UNIT_SAVE_AMOUNT_GREEN * sizeof(struct MsuPackedUnitAI),
		.save = Msu_SaveUnit_Npc,
		.load = Msu_LoadUnit_Npc,
	},
	{
		.size = UNIT_SAVE_AMOUNT_RED * sizeof(struct MsuPackedUnitAI),
		.save = Msu_SaveUnit_Enemy,
		.load = Msu_LoadUnit_Enemy,
	},
	{ .size = 0 }
};
