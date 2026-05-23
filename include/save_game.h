#pragma once

#include "prelude.h"
#include "save.h"

#include "unit.h"
#include "bm.h"
#include "trap.h"
#include "supply.h"
#include "action.h"
#include "eventinfo.h"
#include "save_stats.h"

enum {
	// flags for GameSavePackedUnit::flags

	SAVEUNIT_FLAG_DEAD       = 1 << 0,
	SAVEUNIT_FLAG_UNDEPLOYED = 1 << 1,
	SAVEUNIT_FLAG_SOLOANIM1  = 1 << 2,
	SAVEUNIT_FLAG_SOLOANIM2  = 1 << 3,
};

void WriteLastGameSaveId(int save_id);
int ReadLastGameSaveId(void);
void InvalidateGameSave(int save_id);
void CopyGameSave(int src_save_id, int dst_save_id);
void WriteNewGameSave(int save_id, int is_hard);
void WriteGameSave(int save_id);
void ReadGameSave(int save_id);
bool IsSaveValid(int save_id);
void ReadGameSavePlaySt(int save_id, struct PlaySt * play_st);
void WriteGameSavePackedUnit(struct Unit * unit, void * sram_dst);
void ReadGameSavePackedUnit(void const * sram_src, struct Unit * unit);
void InvalidateSuspendSave(int save_id);
void WriteSuspendSave(int save_id);
void ReadSuspendSave(int save_id);
bool IsValidSuspendSave(int save_id);
void ReadSuspendSavePlaySt(int save_id, struct PlaySt * buf);
void EncodeSuspendSavePackedUnit(struct Unit * unit, void * buf);
void ReadSuspendSavePackedUnit(void const * sram_src, struct Unit * unit);
void WriteTraps(void * sram_dst);
void ReadTraps(void const * sram_src);
int GetLastSuspendSaveId(void);
int GetNextSuspendSaveId(void);
void WriteSwappedSuspendSaveId(void);
bool VerifySaveBlockChecksum(struct SaveBlockInfo * block_info);
void PopulateSaveBlockChecksum(struct SaveBlockInfo * block_info);
u16 GetGameStateChecksum_Unused(void);
void func_fe6_08086088(void);
