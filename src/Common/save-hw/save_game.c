#include "save_game.h"

#include "gbasram.h"
#include "gbaio.h"
#include "armfunc.h"
#include "util.h"
#include "eventinfo.h"
#include "supply.h"
#include "bm.h"
#include "hardware.h"
#include "faction.h"
#include "battle.h"
#include "chapter.h"
#include "save_core.h"
#include "savelayout.h"
#include "constants/chapters.h"

#include "debug.h"
#include "save-hw.h"

#define LOCAL_TRACE 1

static void ems_write_loop(const struct EmsChunk *chunk_array, int save_id)
{
	int i;
	int sector = 0;
	int offset = 0;
	u8 *dst = GetSaveWriteAddr(save_id);

	for (i = 0; ; i++) {
		const struct EmsChunk *chunk = &chunk_array[i];

		if (chunk->size == 0)
			break;

		if ((offset + chunk->size) > SIZE_4K) {
			WriteSave(gBuf, dst + sector * SIZE_4K, offset);
			offset = 0;
			sector++;
		}

		LTRACEF("addr=0x%06X, sec=%d, off=0x%04X, size=0x%05X, save=0x%08X, load=0x%08X",
					SramAddrToOffset(dst), sector, offset, chunk->size,
					(uintptr_t)chunk->save, (uintptr_t)chunk->load);

		if (chunk->save)
			chunk->save(gBuf + offset, chunk->size);

		offset = offset + chunk->size;
	}

	if (offset != 0)
		WriteSave(gBuf, dst + sector * SIZE_4K, offset);
}

static void ems_read_loop(const struct EmsChunk *chunk_array, int save_id)
{
	int i;
	int sector = 0;
	int offset = 0;
	const u8 *src = GetSaveReadAddr(save_id);

	LTRACEF("CHUNK: %s", chunk_array == gMsaChunk ? "SAV" : "SUS");

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

		LTRACEF("addr=0x%06X, sec=%d, off=0x%04X, size=0x%05X, save=0x%08X, load=0x%08X",
					SramAddrToOffset(src), sector, offset, chunk->size,
					(uintptr_t)chunk->save, (uintptr_t)chunk->load);

		if (chunk->load)
			chunk->load(gBuf + offset, chunk->size);

		offset = offset + chunk->size;
	}
}

void ReadGameSavePlaySt(int save_id, struct PlaySt *play_st)
{
	ReadSave(GetSaveReadAddr(save_id), gBuf, SIZE_4K);
	memcpy(play_st, gBuf, sizeof(struct PlaySt));
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
	int cur, total_size = gFlashLayout[src_save_id].size;

	void const *src = GetSaveReadAddr(src_save_id);
	void *dst = GetSaveWriteAddr(dst_save_id);

	for (cur = 0; cur < total_size; cur = cur + 0x1000) {
		int size = ((total_size - cur) >= 0x1000) ? 0x1000 : (total_size - cur);

		ReadSave(src + cur, gBuf, size);
		WriteSave(gBuf, dst + cur, size);
	}

	block_info.magic32 = SAVE_MAGIC32;
	block_info.kind = SAVE_KIND_GAME;
	WriteSaveBlockInfo(&block_info, dst_save_id);
}

void WriteNewGameSave(int save_id, int is_hard)
{
	InitPlayConfig(is_hard);
	InitUnits();
	ClearPidStats();
	ClearChapterStats();
	ClearSupplyItems();
	ResetPermanentFlags();
	InvalidateSuspendSave(SAVE_SUSPEND);

	gPlaySt.playthrough_id = GetNewPlaythroughId();
	gPlaySt.save_id = save_id;

	WriteGameSave(save_id);
}

void WriteGameSave(int save_id)
{
	struct SaveBlockInfo block_info;

	InvalidateSuspendSave(SAVE_SUSPEND);

	gPlaySt.save_id = save_id;
	gPlaySt.time_saved = GetGameTime();

	/* calc loop */
	ems_write_loop(gMsaChunk, save_id);

	block_info.magic32 = SAVE_MAGIC32;
	block_info.kind = SAVE_KIND_GAME;
	WriteSaveBlockInfo(&block_info, save_id);
	WriteLastGameSaveId(save_id);
}

void ReadGameSave(int save_id)
{
	InvalidateSuspendSave(SAVE_SUSPEND);
	InitUnits();

	/* calc loop */
	ems_read_loop(gMsaChunk, save_id);

	SetGameTime(gPlaySt.time_saved);
	gPlaySt.save_id = save_id;
	WriteLastGameSaveId(save_id);
}

void InvalidateSuspendSave(int save_id)
{
	struct SaveBlockInfo block_info;

	block_info.kind = SAVE_KIND_INVALID;
	WriteSaveBlockInfo(&block_info, save_id);
}

void WriteSuspendSave(int save_id)
{
	struct SaveBlockInfo block_info;

	if (gPlaySt.flags & PLAY_FLAG_TUTORIAL)
		return;

	if (!IsSaveWorking())
		return;

	gPlaySt.time_saved = GetGameTime();

	/* calc loop */
	ems_write_loop(gMsuChunk, save_id);

	block_info.magic32 = SAVE_MAGIC32;
	block_info.kind = SAVE_KIND_SUSPEND;
	WriteSaveBlockInfo(&block_info, save_id);

	gBmSt.just_resumed = FALSE;
}

void ReadSuspendSave(int save_id)
{
	InitUnits();

	/* calc loop */
	ems_read_loop(gMsuChunk, save_id);

	SetGameTime(gPlaySt.time_saved);
}

void ReadSuspendSavePlaySt(int save_id, struct PlaySt *buf)
{
	ReadGameSavePlaySt(save_id, buf);
}
