#include "save_stats.h"

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
#include "unit.h"
#include "action.h"
#include "trap.h"
#include "save_core.h"
#include "save_game.h"

#include "constants/chapters.h"

#include "klib.h"

struct PidStats *EWRAM_DATA gPidStatsSram = NULL;

struct PidStats EWRAM_DATA gPidStats[PID_STATS_COUNT] = { { 0 } };
struct ChapterStats EWRAM_DATA gChapterStats[CHAPTER_STATS_COUNT] = { { 0 } };

void WriteGameSaveFreshStats(struct GameSaveBlock *gamesave_sram)
{
	int i;

	CpuFill16(0, gPidStats, sizeof(gPidStats));
	CpuFill16(0, gChapterStats, sizeof(gChapterStats));

	for (i = 0; i < PID_STATS_COUNT; i++) {
		WriteAndVerifySramFast(
			gPidStats, &gamesave_sram->pid_stats[i], sizeof(struct PidStats));
	}

	for (i = 0; i < CHAPTER_STATS_COUNT; i++) {
		WriteAndVerifySramFast(
			gChapterStats, &gamesave_sram->chapter_stats[i], sizeof(struct ChapterStats));
	}

	gPidStatsSram = gamesave_sram->pid_stats;
}

void ClearPidStats(void)
{
	CpuFill16(0, gPidStats, sizeof(gPidStats));
}

void ReadPidStats(void const *sram_src)
{
	ReadSramFast(sram_src, gPidStats, sizeof(gPidStats));
	gPidStatsSram = (void *) sram_src;
}

void ReadChapterStats(void const *sram_src)
{
	ReadSramFast(sram_src, gChapterStats, sizeof(gChapterStats));
}

void WritePidStats(void *sram_dst)
{
	WriteAndVerifySramFast(gPidStats, sram_dst, sizeof(gPidStats));
	gPidStatsSram = sram_dst;
}

void WriteChapterStats(void *sram_dst)
{
	WriteAndVerifySramFast(gChapterStats, sram_dst, sizeof(gChapterStats));
}

struct ChapterStats *GetChapterStats(int num)
{
	return gChapterStats + num;
}

bool IsValidChapterStats(struct ChapterStats *chapter_stats)
{
	return chapter_stats->chapter_turn > 0;
}

int GetNextChapterStatsSlot(void)
{
	struct ChapterStats *cur = GetChapterStats(0);

	int result = 0;

	while (cur->chapter_turn != 0)
	{
		result++;
		cur++;
	}

	return result;
}

void RegisterChapterStats(struct PlaySt *play_st)
{
	struct ChapterStats *chapter_stats = GetChapterStats(GetNextChapterStatsSlot());

	int time_3s = k_udiv((GetGameTime() - play_st->time_chapter_started), (FRAMES_PER_SECOND *3));

	// 50 hours = 50 * 60 * 20
	if (time_3s > 50 * 60 * 20)
		time_3s = 50 * 60 * 20;

	chapter_stats->chapter_id = play_st->chapter;
	chapter_stats->chapter_turn = play_st->turn;
	chapter_stats->chapter_time = time_3s;
}

inline struct PidStats *GetPidStats(fu8 pid)
{
	if (pid >= PID_STATS_COUNT)
		return NULL;

	if (GetPInfo(pid)->affinity == 0)
		return NULL;

	return gPidStats + pid - 1;
}

void PidStatsAddBattle(struct Unit *unit)
{
}

void PidStatsAddWin(fu8 pid)
{
}

void PidStatsAddLoss(fu8 pid)
{
}

void PidStatsSetDefeatInfo(fu8 pid, fu8 killer_pid, int defeat_cause)
{
}

void PidStatsAddAct(fu8 pid)
{
}

void PidStatsAddStatView(fu8 pid)
{
}

void PidStatsAddDeploy(fu8 pid)
{
}

void PidStatsAddMove(fu8 pid, int amount)
{
}

void PidStatsAddExpGained(fu8 pid, int amount)
{
}

int PidStatsCountTotalBattles(void)
{
	return 0;
}

int PidStatsCountTotalWins(void)
{
	return 0;
}

int PidStatsCountTotalLosses(void)
{
	return 0;
}

int PidStatsCountTotalLevelsGained(void)
{
	return 0;
}

void PidStatsUpdateFromBattleOutcome(void)
{
}

bool IsPlaythroughIdUnique(int playthrough_id)
{
	struct GlobalSaveInfo info;
	struct PlaySt play_st;
	int i;

	ReadGlobalSaveInfo(&info);

	for (i = 0; i < MAX_CLEARED_PLAYTHROUGHS; i++) {
		if (info.cleared_playthroughs[i] == playthrough_id)
			return FALSE;
	}

	for (i = 0; i < 3; i++) {
		int result = IsSaveValid(i);

		if (!result)
			continue;

		ReadGameSavePlaySt(i, &play_st);

		if (play_st.playthrough_id == playthrough_id)
			return FALSE;
	}

	return TRUE;
}

int GetNewPlaythroughId(void)
{
	int i;

	for (i = 1; i < 0x100; i++) {
		if (IsPlaythroughIdUnique(i))
			return i;
	}
	return 0;
}

int GetGlobalCompletedPlaythroughCount(void)
{
	struct GlobalSaveInfo info;
	int i, result = 0;

	if (!ReadGlobalSaveInfo(&info))
		return 0;

	for (i = 0; i < MAX_CLEARED_PLAYTHROUGHS; i++) {
		if (info.cleared_playthroughs[i] != 0)
			result++;
	}

	return result;
}

bool RegisterCompletedPlaythrough(struct GlobalSaveInfo *info, int playthrough_id)
{
	int i;

	for (i = 0; i < MAX_CLEARED_PLAYTHROUGHS; i++) {
		if (info->cleared_playthroughs[i] == playthrough_id)
			return FALSE;
	}

	for(i = 0; i < MAX_CLEARED_PLAYTHROUGHS; i++) {
		if (info->cleared_playthroughs[i] == 0) {
			info->cleared_playthroughs[i] = playthrough_id;
			return TRUE;
		}
	}

	return FALSE;  
}

void WriteCompletedPlaythroughSaveData(void)
{
	struct GlobalSaveInfo info;
	int mode_math;

	if (!ReadGlobalSaveInfo(&info)) {
		InitGlobalSaveInfo();
		ReadGlobalSaveInfo(&info);
	}

	RegisterCompletedPlaythrough(&info, gPlaySt.playthrough_id);

	info.completed = TRUE;

	mode_math = ((gPlaySt.flags & PLAY_FLAG_HARD) != 0) * 2;

	if (gPlaySt.chapter == CHAPTER_FINAL)
		mode_math++;

	switch (mode_math) {
	case 1:
		info.completed_true = TRUE;
		break;

	case 2:
		info.completed_hard = TRUE;
		break;

	case 3:
		info.completed_true_hard = TRUE;
		info.completed_hard = TRUE;
		info.completed_true = TRUE;
		break;

	default:
		break;
	}

	WriteGlobalSaveInfo(&info);

	gPlaySt.flags |= PLAY_FLAG_COMPLETE;
}

void func_fe6_08084F48(void)
{
}
