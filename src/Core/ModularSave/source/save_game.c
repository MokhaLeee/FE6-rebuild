#include "save_game.h"

#include "gbasram.h"
#include "gbaio.h"
#include "util.h"
#include "eventinfo.h"
#include "supply.h"
#include "bm.h"
#include "hardware.h"
#include "faction.h"
#include "battle.h"
#include "chapter.h"
#include "save_core.h"
#include "constants/chapters.h"
#include "savelayout.h"
#include "save-hw.h"
#include "debug.h"

#define LOCAL_TRACE 1

_UNUSED
static void ems_write_loop(const struct EmsChunk *chunk_array, int save_id)
{
	int i;
	int sector = 0;
	int offset = 0;
	void *dst = GetSaveWriteAddr(save_id);

	LTRACEF("[LOOP1]");

	for (i = 0; ; i++) {
		const struct EmsChunk *chunk = &chunk_array[i];

		if (chunk->size == 0)
			break;

		if ((offset + chunk->size) > SIZE_4K) {
			WriteSave(gBuf, dst + sector * SIZE_4K, offset);
			offset = 0;
			sector++;
		}

		LTRACEF("[LOOP1 %d] sec=%d, off=0x%04X, save=0x%08X, load=0x%08X",
						i, sector, offset, (uintptr_t)chunk->save, (uintptr_t)chunk->load);

		if (chunk->save)
			chunk->save(gBuf + offset, chunk->size);

		offset = offset + chunk->size;
	}

	if (offset != 0)
		WriteSave(gBuf, dst + sector * SIZE_4K, offset);
}

_UNUSED
static void ems_read_loop(const struct EmsChunk *chunk_array, int save_id)
{
	int i;
	int sector = 0;
	int offset = 0;
	const void *src = GetSaveReadAddr(save_id);

	LTRACEF("[LOOP2]");

	ReadSave(src + sector * SIZE_4K, gBuf, SIZE_4K);

	for (i = 0; ; i++) {
		const struct EmsChunk *chunk = &chunk_array[i];

		if (chunk->size == 0)
			break;

		if ((offset + chunk->size) > SIZE_4K) {
			offset = 0;
			sector++;
			ReadSave(src + sector * SIZE_4K, gBuf, SIZE_4K);
		}

		LTRACEF("[LOOP2 %d] sec=%d, off=0x%04X, save=0x%08X, load=0x%08X",
						i, sector, offset, (uintptr_t)chunk->save, (uintptr_t)chunk->load);

		if (chunk->save)
			chunk->save(gBuf + offset, chunk->size);

		offset = offset + chunk->size;
	}
}

static int ems_calc_addr(const struct EmsChunk *chunk_array, int chunk_idx, int *out_sector, int *out_offset)
{
	int i;
	int sector = 0;
	int offset = 0;

	LTRACEF("[LOOP3]");

	for (i = 0; ; i++) {
		const struct EmsChunk *chunk = &chunk_array[i];

		if (chunk->size == 0)
			break;

		if ((offset + chunk->size) > SIZE_4K) {
			offset = 0;
			sector++;
		}

		LTRACEF("[LOOP3 %d] sec=%d, off=0x%04X, save=0x%08X, load=0x%08X",
						i, sector, offset, (uintptr_t)chunk->save, (uintptr_t)chunk->load);

		if (chunk->chunk_idx == chunk_idx) {
			*out_sector = sector;
			*out_offset = offset;
			return 0;
		}

		offset = offset + chunk->size;
	}

	return -1;
}

void ReadGameSavePlaySt(int save_id, struct PlaySt *play_st)
{
	int ret, sector, offset;
	const struct EmsChunk *chunk;

#if 1
	struct GameSaveBlock const *src = GetSaveReadAddr(save_id);
	ReadSave(&src->play_st, play_st, sizeof(struct PlaySt));
	return;
#endif

	switch (save_id) {
	case SAVE_GAME0:
	case SAVE_GAME1:
	case SAVE_GAME2:
		chunk = gMsaChunk;
		break;

	case SAVE_SUSPEND:
	case SAVE_SUSPEND_ALT:
		chunk = gMsaChunk;
		break;

	default:
		return;
	}

	ret = ems_calc_addr(chunk, EMS_CHUNK_PLAYST, &sector, &offset);
	if (ret)
		return;

	ReadSave(GetSaveReadAddr(save_id) + sector * SIZE_4K, gBuf, SIZE_4K);
	memcpy(play_st, gBuf + offset, sizeof(struct PlaySt));
}

void WriteLastGameSaveId(int save_id)
{
	struct GlobalSaveInfo info;

	ReadGlobalSaveInfo(&info);
	info.last_game_save_id = save_id;
	WriteGlobalSaveInfoNoChecksum(&info);
}

int ReadLastGameSaveId(void)
{
	struct GlobalSaveInfo info;
	int result;

	if (!ReadGlobalSaveInfo(&info))
		return SAVE_GAME0;

	result = info.last_game_save_id;

	if (result > SAVE_GAME2)
		return SAVE_GAME0;

	if (result < 0)
		return SAVE_GAME0;

	return result;
}

void InvalidateGameSave(int save_id)
{
	struct SaveBlockInfo block_info;
	struct PlaySt play_st;

	if (IsValidSuspendSave(SAVE_SUSPEND)) {
		ReadSuspendSavePlaySt(SAVE_SUSPEND, &play_st);

		if (play_st.save_id == save_id)
			InvalidateSuspendSave(SAVE_SUSPEND);
	}

	block_info.kind = SAVE_KIND_INVALID;
	WriteSaveBlockInfo(&block_info, save_id);
}

void CopyGameSave(int src_save_id, int dst_save_id)
{
	struct SaveBlockInfo block_info;

	void const *src = GetSaveReadAddr(src_save_id);
	void *dst = GetSaveWriteAddr(dst_save_id);

	STATIC_ASSERT(sizeof(struct GameSaveBlock) <= sizeof(gBuf));

	ReadSave(src, gBuf, sizeof(struct GameSaveBlock));
	WriteSave(gBuf, dst, sizeof(struct GameSaveBlock));

	block_info.magic32 = SAVE_MAGIC32;
	block_info.kind = SAVE_KIND_GAME;
	WriteSaveBlockInfo(&block_info, dst_save_id);
}

void WriteNewGameSave(int save_id, int is_hard)
{
	struct SaveBlockInfo block_info;
	struct GameSavePackedUnit save_unit;
	int i;

	struct GameSaveBlock *dst = GetSaveWriteAddr(save_id);

	InitPlayConfig(is_hard);
	InitUnits();
	ClearSupplyItems();
	ResetPermanentFlags();
	InvalidateSuspendSave(SAVE_SUSPEND);

	gPlaySt.playthrough_id = GetNewPlaythroughId();
	gPlaySt.save_id = save_id;

	WriteSave(&gPlaySt, &dst->play_st, sizeof(gPlaySt));

	CpuFill16(0, &save_unit, sizeof(save_unit));

	for (i = 0; i < UNIT_SAVE_AMOUNT_BLUE; i++)
		WriteSave(&save_unit, &dst->units[i], sizeof(save_unit));

	WriteSupplyItems(dst->supply_items);
	WriteGameSaveFreshStats(dst);
	WritePermanentFlags(dst->permanent_flags);

	block_info.magic32 = SAVE_MAGIC32;
	block_info.kind = SAVE_KIND_GAME;
	WriteSaveBlockInfo(&block_info, save_id);

	WriteLastGameSaveId(save_id);
}

void WriteGameSave(int save_id)
{
	struct SaveBlockInfo block_info;
	int i;

	struct GameSaveBlock *dst = GetSaveWriteAddr(save_id);

	InvalidateSuspendSave(SAVE_SUSPEND);

	gPlaySt.save_id = save_id;
	gPlaySt.time_saved = GetGameTime();
	WriteSave(&gPlaySt, &dst->play_st, sizeof(gPlaySt));

	for (i = 0; i < UNIT_SAVE_AMOUNT_BLUE; i++)
		WriteGameSavePackedUnit(&gUnitArrayBlue[i], &dst->units[i]);

	WriteSupplyItems(dst->supply_items);
	WritePidStats(dst->pid_stats);
	WriteChapterStats(dst->chapter_stats);
	WritePermanentFlags(dst->permanent_flags);

	block_info.magic32 = SAVE_MAGIC32;
	block_info.kind = SAVE_KIND_GAME;
	WriteSaveBlockInfo(&block_info, save_id);

	WriteLastGameSaveId(save_id);
}

void ReadGameSave(int save_id)
{
	int i;

	struct GameSaveBlock const *src = GetSaveReadAddr(save_id);

	if (!(gBmSt.flags & BM_FLAG_LINKARENA))
		InvalidateSuspendSave(SAVE_SUSPEND);

	ReadSave(&src->play_st, &gPlaySt, sizeof(gPlaySt));
	SetGameTime(gPlaySt.time_saved);
	gPlaySt.save_id = save_id;

	InitUnits();

	for (i = 0; i < UNIT_SAVE_AMOUNT_BLUE; i++)
		ReadGameSavePackedUnit(&src->units[i], &gUnitArrayBlue[i]);

	ReadSupplyItems(src->supply_items);
	ReadPermanentFlags(src->permanent_flags);
	ReadPidStats(src->pid_stats);
	ReadChapterStats(src->chapter_stats);

	WriteLastGameSaveId(save_id);
}

bool IsGameSavePastFirstChapter(int save_id)
{
	struct PlaySt play_st;

	if (!IsSaveValid(save_id))
		return FALSE;

	ReadGameSavePlaySt(save_id, &play_st);

	if (play_st.chapter <= CHAPTER_1)
		return FALSE;

	return TRUE;
}

void WriteGameSavePackedUnit(struct Unit *unit, void *sram_dst)
{
	struct GameSavePackedUnit save_unit;
	struct Unit unit_tmp;
	int i;

	if (unit->pinfo == NULL) {
		unit = &unit_tmp;
		ClearUnit(unit);
		save_unit.pid = 0;
		save_unit.jid = 0;
	} else {
		save_unit.pid = unit->pinfo->id;
		save_unit.jid = unit->jinfo->id;
	}

	save_unit.level = unit->level;
	save_unit.exp = unit->exp;
	save_unit.x = unit->x;
	save_unit.y = unit->y;
	save_unit.max_hp = unit->max_hp;
	save_unit.pow = unit->pow;
	save_unit.skl = unit->skl;
	save_unit.spd = unit->spd;
	save_unit.def = unit->def;
	save_unit.res = unit->res;
	save_unit.lck = unit->lck;
	save_unit.con = unit->bonus_con;
	save_unit.mov = unit->bonus_mov;

	save_unit.item_a = unit->items[0];
	save_unit.item_b = unit->items[1];
	save_unit.item_c = unit->items[2];
	save_unit.item_d = unit->items[3];
	save_unit.item_e = unit->items[4];

	save_unit.flags = 0;

	if (UNIT_FLAG_DEAD & unit->flags)
		save_unit.flags |= SAVEUNIT_FLAG_DEAD;

	if (UNIT_FLAG_NOT_DEPLOYED & unit->flags)
		save_unit.flags |= SAVEUNIT_FLAG_UNDEPLOYED;

	if (UNIT_FLAG_SOLOANIM_1 & unit->flags)
		save_unit.flags |= SAVEUNIT_FLAG_SOLOANIM1;

	if (UNIT_FLAG_SOLOANIM_2 & unit->flags)
		save_unit.flags |= SAVEUNIT_FLAG_SOLOANIM2;

	for (i = 0; i < UNIT_WEAPON_EXP_COUNT; i++)
		save_unit.wexp[i] = unit->wexp[i];

	for (i = 0; i < UNIT_SUPPORT_COUNT; i++)
		save_unit.supports[i] = unit->supports[i];

	WriteSave(&save_unit, sram_dst, sizeof(struct GameSavePackedUnit));
}

void ReadGameSavePackedUnit(void const *sram_src, struct Unit *unit)
{
	int i;
	struct GameSavePackedUnit save_unit;

	ReadSave(sram_src, &save_unit, sizeof(struct GameSavePackedUnit));

	unit->pinfo = GetPInfo(save_unit.pid);
	unit->jinfo = GetJInfo(save_unit.jid);

	unit->level = save_unit.level;
	unit->exp = save_unit.exp;
	unit->x = save_unit.x;
	unit->y = save_unit.y;
	unit->max_hp = save_unit.max_hp;
	unit->pow = save_unit.pow;
	unit->skl = save_unit.skl;
	unit->spd = save_unit.spd;
	unit->def = save_unit.def;
	unit->res = save_unit.res;
	unit->lck = save_unit.lck;
	unit->bonus_con = save_unit.con;
	unit->bonus_mov = save_unit.mov;

	unit->items[0] = save_unit.item_a;
	unit->items[1] = save_unit.item_b;
	unit->items[2] = save_unit.item_c;
	unit->items[3] = save_unit.item_d;
	unit->items[4] = save_unit.item_e;

	if (unit->exp > 99)
		unit->exp = -1;

	unit->flags = 0;

	if (save_unit.flags & SAVEUNIT_FLAG_DEAD)
		unit->flags |= UNIT_FLAG_DEAD | UNIT_FLAG_HIDDEN;

	if (save_unit.flags & SAVEUNIT_FLAG_UNDEPLOYED)
		unit->flags |= UNIT_FLAG_NOT_DEPLOYED | UNIT_FLAG_HIDDEN;

	if (save_unit.flags & SAVEUNIT_FLAG_SOLOANIM1)
		unit->flags |= UNIT_FLAG_SOLOANIM_1;

	if (save_unit.flags & SAVEUNIT_FLAG_SOLOANIM2)
		unit->flags |= UNIT_FLAG_SOLOANIM_2;

	for (i = 0; i < UNIT_WEAPON_EXP_COUNT; i++)
		unit->wexp[i] = save_unit.wexp[i];

	for (i = 0; i < UNIT_SUPPORT_COUNT; i++)
		unit->supports[i] = save_unit.supports[i];

	SetUnitHp(unit, GetUnitMaxHp(unit));

	if (unit->exp == 0x7F)
		unit->exp = -1;

	if (unit->x == 0x3F)
		unit->x = -1;

	if (unit->y == 0x3F)
		unit->y = -1;
}

void InvalidateSuspendSave(int save_id)
{
	struct SaveBlockInfo block_info;

	block_info.kind = SAVE_KIND_INVALID;
	WriteSaveBlockInfo(&block_info, save_id);

	if (save_id == SAVE_SUSPEND)
		WriteSaveBlockInfo(&block_info, SAVE_SUSPEND_ALT);
}

void WriteSuspendSave(int save_id)
{
	struct SaveBlockInfo block_info;
	struct SuspendSavePackedUnit *buf;
	struct SuspendSaveBlock *dst;
	int i;

	if (gPlaySt.flags & PLAY_FLAG_TUTORIAL)
		return;

	if (!IsSaveWorking())
		return;

	dst = GetSaveWriteAddr(save_id);

	gPlaySt.time_saved = GetGameTime();
	WriteSave(&gPlaySt, &dst->play_st, sizeof(struct PlaySt));

	SaveActionRand();
	WriteSave(&gAction, &dst->action, sizeof(struct Action));

	buf = (struct SuspendSavePackedUnit *)gBuf;

	for (i = 0; i < UNIT_SAVE_AMOUNT_BLUE; i++)
		EncodeSuspendSavePackedUnit(&gUnitArrayBlue[i], buf++);

	for (i = 0; i < UNIT_SAVE_AMOUNT_RED; i++)
		EncodeSuspendSavePackedUnit(&gUnitArrayRed[i], buf++);

	for (i = 0; i < UNIT_SAVE_AMOUNT_GREEN; i++)
		EncodeSuspendSavePackedUnit(&gUnitArrayGreen[i], buf++);

	WriteSave(gBuf, (void *) dst->units, sizeof(dst->units));

	WritePermanentFlags(dst->permanent_flags);
	WriteChapterFlags(dst->chapter_flags);
	WriteSupplyItems(dst->supply_items);
	WritePidStats(dst->pid_stats);
	WriteChapterStats(dst->chapter_stats);
	WriteTraps(dst->traps);

	block_info.magic32 = SAVE_MAGIC32;
	block_info.kind = SAVE_KIND_SUSPEND;
	WriteSaveBlockInfo(&block_info, save_id);

	gBmSt.just_resumed = FALSE;
}

void ReadSuspendSave(int save_id)
{
	int i;

	struct SuspendSaveBlock const *src = GetSaveReadAddr(save_id);

	ReadSave(&src->play_st, &gPlaySt, sizeof(struct PlaySt));
	SetGameTime(gPlaySt.time_saved);

	ReadSave(&src->action, &gAction, sizeof(struct Action));
	RestoreActionRand();

	InitUnits();

	for (i = 0; i < UNIT_SAVE_AMOUNT_BLUE; i++)
		ReadSuspendSavePackedUnit(&src->units[i], gUnitArrayBlue + i);

	for (i = 0; i < UNIT_SAVE_AMOUNT_RED; i++)
		ReadSuspendSavePackedUnit(&src->units[i + UNIT_SAVE_AMOUNT_BLUE], gUnitArrayRed + i);

	for (i = 0; i < UNIT_SAVE_AMOUNT_GREEN; i++)
		ReadSuspendSavePackedUnit(&src->units[i + UNIT_SAVE_AMOUNT_BLUE + UNIT_SAVE_AMOUNT_RED], gUnitArrayGreen + i);

	ReadPidStats(src->pid_stats);
	ReadChapterStats(src->chapter_stats);
	ReadSupplyItems(src->supply_items);
	ReadPermanentFlags(src->permanent_flags);
	ReadChapterFlags(src->chapter_flags);
	ReadTraps(src->traps);
}

bool IsValidSuspendSave(int save_id)
{
	if (!IsSaveWorking())
		return FALSE;

	if (save_id != SAVE_SUSPEND)
		return FALSE;


	if (ReadSaveBlockInfo(NULL, SAVE_SUSPEND))
		return TRUE;

	return FALSE;
}

void ReadSuspendSavePlaySt(int save_id, struct PlaySt *buf)
{
	// because of this function, ReadGameSavePlaySt is used for both game saves and suspend saves, despite them potentially having different layouts
	STATIC_ASSERT(offsetof(struct GameSaveBlock, play_st) == offsetof(struct SuspendSaveBlock, play_st));

	ReadGameSavePlaySt(save_id, buf);
}

void EncodeSuspendSavePackedUnit(struct Unit *unit, void *buf)
{
	int i;
	struct SuspendSavePackedUnit *suspend_unit = (struct SuspendSavePackedUnit *)buf;

	if (unit->pinfo == NULL) {
		suspend_unit->pid = 0;
		return;
	}

	suspend_unit->pid = unit->pinfo->id;
	suspend_unit->jid = unit->jinfo->id;
	suspend_unit->level = unit->level;
	suspend_unit->exp = unit->exp;
	suspend_unit->flags = unit->flags;
	suspend_unit->x = unit->x;
	suspend_unit->y = unit->y;
	suspend_unit->max_hp = unit->max_hp;
	suspend_unit->hp = unit->hp;
	suspend_unit->pow = unit->pow;
	suspend_unit->skl = unit->skl;
	suspend_unit->spd = unit->spd;
	suspend_unit->def = unit->def;
	suspend_unit->res = unit->res;
	suspend_unit->lck = unit->lck;
	suspend_unit->bonus_con = unit->bonus_con;
	suspend_unit->status = unit->status;
	suspend_unit->status_duration = unit->status_duration;
	suspend_unit->torch = unit->torch;
	suspend_unit->barrier = unit->barrier;
	suspend_unit->rescue = unit->rescue;
	suspend_unit->bonus_mov = unit->bonus_mov;
	suspend_unit->item_a = unit->items[0];
	suspend_unit->item_b = unit->items[1];
	suspend_unit->item_c = unit->items[2];
	suspend_unit->item_d = unit->items[3];
	suspend_unit->item_e = unit->items[4];

	for (i = 0; i < UNIT_WEAPON_EXP_COUNT; i++)
		suspend_unit->wexp[i] = unit->wexp[i];

	for (i = 0; i < UNIT_SUPPORT_COUNT; i++)
		suspend_unit->supports[i] = unit->supports[i];

	suspend_unit->ai_a = unit->ai_a;
	suspend_unit->ai_a_pc = unit->ai_a_pc;
	suspend_unit->ai_b = unit->ai_b;
	suspend_unit->ai_b_pc = unit->ai_b_pc;
	suspend_unit->ai_config = unit->ai_config;
	suspend_unit->ai_counter = unit->ai_counter;
	suspend_unit->ai_flags = unit->ai_flags;
}

void ReadSuspendSavePackedUnit(void const *sram_src, struct Unit *unit)
{
	struct SuspendSavePackedUnit suspend_unit;
	int i;

	ReadSave(sram_src, &suspend_unit, sizeof(struct SuspendSavePackedUnit));

	unit->pinfo = GetPInfo(suspend_unit.pid);
	unit->jinfo = GetJInfo(suspend_unit.jid);

	unit->level = suspend_unit.level;
	unit->exp = suspend_unit.exp;
	unit->flags =suspend_unit.flags;
	unit->x = suspend_unit.x;
	unit->y = suspend_unit.y;
	unit->max_hp = suspend_unit.max_hp;
	unit->hp = suspend_unit.hp;
	unit->pow = suspend_unit.pow;
	unit->skl = suspend_unit.skl;
	unit->spd = suspend_unit.spd;
	unit->def = suspend_unit.def;
	unit->res = suspend_unit.res;
	unit->lck = suspend_unit.lck;
	unit->bonus_con = suspend_unit.bonus_con;
	unit->status = suspend_unit.status;
	unit->status_duration = suspend_unit.status_duration;
	unit->torch = suspend_unit.torch;
	unit->barrier = suspend_unit.barrier;
	unit->rescue = suspend_unit.rescue;
	unit->bonus_mov = suspend_unit.bonus_mov;
	unit->items[0] = suspend_unit.item_a;
	unit->items[1] = suspend_unit.item_b;
	unit->items[2] = suspend_unit.item_c;
	unit->items[3] = suspend_unit.item_d;
	unit->items[4] = suspend_unit.item_e;

	for (i = 0; i < UNIT_WEAPON_EXP_COUNT; i++)
		unit->wexp[i] = suspend_unit.wexp[i];

	for (i = 0; i < UNIT_SUPPORT_COUNT; i++)
		unit->supports[i] = suspend_unit.supports[i];

	unit->ai_a = suspend_unit.ai_a;
	unit->ai_a_pc = suspend_unit.ai_a_pc;
	unit->ai_b = suspend_unit.ai_b;
	unit->ai_b_pc = suspend_unit.ai_b_pc;
	unit->ai_config = suspend_unit.ai_config;
	unit->ai_counter = suspend_unit.ai_counter;
	unit->ai_flags = suspend_unit.ai_flags;

	if (unit->exp == 0x7F)
		unit->exp = -1;

	if (unit->x == 0x3F)
		unit->x = -1;

	if (unit->y == 0x3F)
		unit->y = -1;
}

void WriteTraps(void *sram_dst)
{
	WriteSave(GetTrap(0), sram_dst, TRAP_MAX_COUNT *sizeof(struct Trap));
}

void ReadTraps(void const *sram_src)
{
	ReadSave(sram_src, GetTrap(0), TRAP_MAX_COUNT *sizeof(struct Trap));
}

bool VerifySaveBlockChecksum(struct SaveBlockInfo *block_info)
{
	int size = block_info->size;
	void *sram_dst = SramOffsetToAddr(block_info->offset);
	u32 checksum32 = SramChecksum32(sram_dst, size);

	if (block_info->checksum32 != checksum32)
		return FALSE;
	else
		return TRUE;
}

void PopulateSaveBlockChecksum(struct SaveBlockInfo *block_info)
{
	int size = block_info->size;
	u8 *dst = SramOffsetToAddr(block_info->offset);
	block_info->checksum32 = SramChecksum32(dst, size);
}

u16 GetGameStateChecksum_Unused(void)
{
	int i;
	u16 result = 0;

	for (i = 0; i < UNIT_SAVE_AMOUNT_BLUE; i++)
	{
		if (!gUnitArrayBlue[i].pinfo)
			continue;

		gUnitArrayBlue[i].map_sprite = NULL;
		result += SramChecksum32(&gUnitArrayBlue[i], sizeof(struct Unit) / 2);
	}

	for (i = 0; i < UNIT_SAVE_AMOUNT_RED; i++)
	{
		if (!gUnitArrayRed[i].pinfo)
			continue;

		gUnitArrayRed[i].map_sprite = NULL;
		result += SramChecksum32(&gUnitArrayRed[i], sizeof(struct Unit) / 2);
	}

	for (i = 0; i < UNIT_SAVE_AMOUNT_GREEN; i++)
	{
		if (!gUnitArrayGreen[i].pinfo)
			continue;

		gUnitArrayGreen[i].map_sprite = NULL;
		result += SramChecksum32(&gUnitArrayGreen[i], sizeof(struct Unit) / 2);
	}

	result += SramChecksum32(GetPermanentFlagBits(), GetPermanentFlagBitsSize() / 2);
	result += SramChecksum32(GetChapterFlagBits(), GetChapterFlagBitsSize() / 2);
	result += SramChecksum32(GetTrap(0), TRAP_MAX_COUNT *sizeof(struct Trap) / 2);

	return result;
}

void func_fe6_08086088(void)
{
}
