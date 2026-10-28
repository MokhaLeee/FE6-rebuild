#include "prelude.h"
#include "map.h"
#include "mapwork.h"

#define LOCAL_HACK_TRIG 1

extern EWRAM_OVERLAY(0) u8 **KernelExtMoveBarrierMap;
extern EWRAM_OVERLAY(0) u8 **KernelExtMovePioneerMap;
extern EWRAM_OVERLAY(0) bool KernelPassSkillActivated;

IWRAM_FUNC
static void MapFloodCoreStep(int connect, int x, int y)
{
	struct MapFloodSquareEnt const *src = gMapFloodSt.active_queue;
	int cost;

	x += (u8)src->x;
	y += (u8)src->y;

	cost = (u8)gWorkingMovTable[gMapTerrain[y][x]]
		+ (u8)gWorkingMap[(u8)src->y][(u8)src->x];

#if LOCAL_HACK_TRIG
	cost += KernelExtMoveBarrierMap[y][x];
#endif

	if (cost >= gWorkingMap[y][x])
		return;

	if (gMapFloodSt.has_unit && gMapUnit[y][x]
		&& ((gMapUnit[y][x] ^ gMapFloodSt.uid) & 0x80))
#if LOCAL_HACK_TRIG
		if (!KernelPassSkillActivated)
#endif
			return;

	if (cost > gMapFloodSt.move)
#if LOCAL_HACK_TRIG
		if (KernelExtMovePioneerMap[y][x] == 0)
#endif
			return;

	gMapFloodSt.waiting_queue->x = x;
	gMapFloodSt.waiting_queue->y = y;
	gMapFloodSt.waiting_queue->connect = connect;
	gMapFloodSt.waiting_queue->least_mov = cost;
	gMapFloodSt.waiting_queue++;

	gWorkingMap[y][x] = cost;
}

IWRAM_FUNC
void MapFloodCore(void)
{
	int alt = 0;

	for (;;) {
		alt ^= 1;

		if (alt) {
			gMapFloodSt.active_queue  = gMapFloodSquareBufB;
			gMapFloodSt.waiting_queue = gMapFloodSquareBufA;
		} else {
			gMapFloodSt.active_queue  = gMapFloodSquareBufA;
			gMapFloodSt.waiting_queue = gMapFloodSquareBufB;
		}

		if (gMapFloodSt.active_queue->connect == 4)
			return;

		while (gMapFloodSt.active_queue->connect != 4) {
			switch (gMapFloodSt.active_queue->connect) {
			case 5:
				MapFloodCoreStep(FACING_UP, 0, -1);
				MapFloodCoreStep(FACING_DOWN, 0, +1);
				MapFloodCoreStep(FACING_LEFT, -1, 0);
				MapFloodCoreStep(FACING_RIGHT, +1, 0);
				break;

			case FACING_LEFT:
				MapFloodCoreStep(FACING_UP, 0, -1);
				MapFloodCoreStep(FACING_DOWN, 0, +1);
				MapFloodCoreStep(FACING_LEFT, -1, 0);
				break;

			case FACING_RIGHT:
				MapFloodCoreStep(FACING_UP, 0, -1);
				MapFloodCoreStep(FACING_DOWN, 0, +1);
				MapFloodCoreStep(FACING_RIGHT, +1, 0);
				break;

			case FACING_DOWN:
				MapFloodCoreStep(FACING_DOWN, 0, +1);
				MapFloodCoreStep(FACING_LEFT, -1, 0);
				MapFloodCoreStep(FACING_RIGHT, +1, 0);
				break;

			case FACING_UP:
				MapFloodCoreStep(FACING_UP, 0, -1);
				MapFloodCoreStep(FACING_LEFT, -1, 0);
				MapFloodCoreStep(FACING_RIGHT, +1, 0);
				break;
			}

			gMapFloodSt.waiting_queue->connect = 4;
			gMapFloodSt.active_queue++;
		}
	}
}
