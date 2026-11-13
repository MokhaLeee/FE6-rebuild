/*
 * NDS 移植桩：存档硬件驱动（第一阶段屏蔽）与音频数据占位。
 *
 * 存档：所有读写走内存缓冲，不接触卡带；IsSaveWorking 返回 false，
 *       让上层走"无存档"分支。
 * 音频：dummy_song 占位，避免 BgmAutoDetection 的空指针判断失效。
 */
#include "prelude.h"
#include "m4a.h"
#include "save-hw.h"

/* ---- 存档屏蔽 ---------------------------------------------------------- */

/* 用一个 RAM 缓冲模拟存档区，保证读写不崩；不持久化 */
static u8 s_save_shadow[0x10000];

void SaveHwInit(void)
{
	memset(s_save_shadow, 0, sizeof s_save_shadow);
}

void WipeSave(void)
{
	memset(s_save_shadow, 0, sizeof s_save_shadow);
}

void WriteSave(void const *src, void *dest, int size)
{
	/* dest 是卡带上的目标地址，这里忽略，只更新影子缓冲 */
	(void)dest;
	if (size <= 0 || size > (int)sizeof s_save_shadow)
		return;
	memcpy(s_save_shadow, src, size);
}

void ReadSave(void const *src, void *dest, int size)
{
	(void)src;
	if (size <= 0 || size > (int)sizeof s_save_shadow)
		return;
	memcpy(dest, s_save_shadow, size);
}

bool IsSaveWorking(void)
{
	/* 第一阶段屏蔽存档：始终报告不可用 */
	return false;
}

/* ---- 音频占位 ---------------------------------------------------------- */

struct Song const dummy_song;

/* songtable.c 被排除（音频数据不进 ROM），但 Reloc.S 仍引用该表 */
struct SongEnt const gSongTable[1];
