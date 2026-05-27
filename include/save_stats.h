#ifndef SAVE_STATS_H
#define SAVE_STATS_H

#include "prelude.h"
#include "save.h"
#include "unit.h"
#include "bm.h"

enum
{
    DEFEAT_CAUSE_0,
    DEFEAT_CAUSE_1,
    DEFEAT_CAUSE_COMBAT,
    DEFEAT_CAUSE_TRAP,
    DEFEAT_CAUSE_POISON,
    DEFEAT_CAUSE_5,
    DEFEAT_CAUSE_ARENA,
};

struct PidStats
{
    u32 win_count : 9;
    u32 battle_count : 11;
    u32 exp_gained : 12;
    u8 defeat_chapter;
    u8 loss_count;
    u8 supports[UNIT_SUPPORT_COUNT];
};

struct ChapterStats
{
    u16 chapter_id   : 6;
    u16 chapter_turn : 10;
    u16 chapter_time : 16; // in increments of 3 seconds
};

#define PID_STATS_COUNT 70
#define CHAPTER_STATS_COUNT 32

extern struct PidStats EWRAM_DATA gPidStats[PID_STATS_COUNT];
extern struct ChapterStats EWRAM_DATA gChapterStats[CHAPTER_STATS_COUNT];

void ClearPidStats(void);
void ClearChapterStats(void);
struct ChapterStats * GetChapterStats(int num);
bool IsValidChapterStats(struct ChapterStats * chapter_stats);
int GetNextChapterStatsSlot(void);
void RegisterChapterStats(struct PlaySt * play_st);
struct PidStats * GetPidStats(fu8 pid);
void PidStatsAddBattle(struct Unit * unit);
void PidStatsAddWin(fu8 pid);
void PidStatsAddLoss(fu8 pid);
void PidStatsSetDefeatInfo(fu8 pid, fu8 killer_pid, int defeat_cause);
void PidStatsAddAct(fu8 pid);
void PidStatsAddStatView(fu8 pid);
void PidStatsAddDeploy(fu8 pid);
void PidStatsAddMove(fu8 pid, int amount);
void PidStatsAddExpGained(fu8 pid, int amount);
int PidStatsCountTotalBattles(void);
int PidStatsCountTotalWins(void);
int PidStatsCountTotalLosses(void);
int PidStatsCountTotalLevelsGained(void);
void PidStatsUpdateFromBattleOutcome(void);
bool IsPlaythroughIdUnique(int playthrough_id);
int GetNewPlaythroughId(void);
int GetGlobalCompletedPlaythroughCount(void);
bool RegisterCompletedPlaythrough(struct GlobalSaveInfo * info, int index);
void WriteCompletedPlaythroughSaveData(void);
void func_fe6_08084F48(void);

#endif // SAVE_STATS_H
