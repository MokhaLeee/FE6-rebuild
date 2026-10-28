#include "prelude.h"
#include "map.h"
#include "mapwork.h"
#include "hardware.h"
#include "unit.h"
#include "faction.h"
#include "event.h"

#include "klib.h"
#include "skill-sys.h"
#include "constants/skills.h"

extern IWRAM_FUNC void MapFloodCore(void);

EWRAM_OVERLAY(0) u8 **KernelExtMoveBarrierMap;
EWRAM_OVERLAY(0) u8 **KernelExtMovePioneerMap;
EWRAM_OVERLAY(0) bool KernelPassSkillActivated;

static void PreGenerateMovementMap(int default_mov)
{
	int i, ix, iy;
	struct Unit *unit;

	static const struct Vec1 *vec_ref[4] = {
		NULL,
		gVecs_1x1,
		gVecs_2x2,
		gVecs_3x3,
	};

	static const u8 vec_cnts[4] = {
		0,
		ARRAY_COUNT_RANGE1x1,
		ARRAY_COUNT_RANGE2x2,
		ARRAY_COUNT_RANGE3x3
	};

	KernelPassSkillActivated = false;

	/**
	 * Here we use generic buffer as a external cost buffer
	 */
	MapInit(gBuf + 0x400, &KernelExtMoveBarrierMap, gMapSize.x, gMapSize.y);
	MapInit(gBuf + 0xC00, &KernelExtMovePioneerMap, gMapSize.x, gMapSize.y);

	MapFill(KernelExtMoveBarrierMap, 0);
	MapFill(KernelExtMovePioneerMap, 0);

	/**
	 * in event-engine, skip all configs
	 */
	if (IsEventRunning())
		return;

	if (!gMapFloodSt.has_unit)
		return;

	unit = GetUnit(gMapFloodSt.uid);

	/**
	 * check for PASS skill
	 */
	if (SkillTester(unit, SID_MovePass))
		if (GetUnitCurrentHp(unit) >= perc_of(GetUnitMaxHp(unit), SKILL_EFF0(SID_MovePass)))
			KernelPassSkillActivated = true;

	for (iy = 0; iy < gMapSize.y; iy++) {
		for (ix = 0; ix < gMapSize.x; ix++) {
			int iuid;
			struct Unit *iunit;
			int barrier_range = 0;
			int pioneer_range = 0;

			iuid = gMapUnit[iy][ix];
			if (likely(iuid == 0 || iuid == 0xFF))
				continue;

			iunit = GetUnit(iuid);
			if (unlikely(!UNIT_IS_VALID(iunit)))
				continue;

			/**
			 * 1. check for barrier map
			 */
			if (!AreUnitIdsAllied(gMapFloodSt.uid, iuid) && !KernelPassSkillActivated) {
				int __cur_hp = GetUnitCurrentHp(iunit);
				int __max_hp = GetUnitMaxHp(iunit);

				if (SkillFastTester(iunit, SID_MoveObstruct)) {
					if (__cur_hp >= perc_of(__max_hp, SKILL_EFF0(SID_MoveObstruct))) {
						int __barrier_range = SKILL_EFF1(SID_MoveObstruct);

						if (barrier_range < __barrier_range)
							barrier_range = __barrier_range;
					}
				}

				if (SkillFastTester(iunit, SID_MoveDetailedReport)) {
					if (__cur_hp >= perc_of(__max_hp, SKILL_EFF0(SID_MoveDetailedReport))) {
						int __barrier_range = SKILL_EFF1(SID_MoveDetailedReport);

						if (barrier_range < __barrier_range)
							barrier_range = __barrier_range;
					}
				}
			}

			if (barrier_range > 3)
				barrier_range = 3;

			switch (barrier_range) {
			case 0:
			default:
				break;

			case 1:
			case 2:
			case 3:
				for (i = 0; i < vec_cnts[barrier_range]; i++) {
					int _x = ix + vec_ref[barrier_range][i].x;
					int _y = iy + vec_ref[barrier_range][i].y;

					if (IsPositionValid(_x, _y))
						KernelExtMoveBarrierMap[_y][_x] = 0xFF;
				}

				KernelExtMoveBarrierMap[iy][ix] = 0xFF;
				break;
			}

			/**
			 * 2. check for pioneer map
			 */
			if (pioneer_range > 3)
				pioneer_range = 3;

			switch (pioneer_range) {
			case 0:
			default:
				break;

			case 1:
			case 2:
			case 3:
				for (i = 0; i < vec_cnts[pioneer_range]; i++) {
					int _x = ix + vec_ref[pioneer_range][i].x;
					int _y = iy + vec_ref[pioneer_range][i].y;

					if (IsPositionValid(_x, _y) && gWorkingMovTable[gMapTerrain[_y][_x]] != -1)
						KernelExtMovePioneerMap[_y][_x] = 1;
				}

				if (gWorkingMovTable[gMapTerrain[iy][ix]] != -1)
					KernelExtMovePioneerMap[iy][ix] = 1;

				break;
			}
		}
	}
}

void BeginMapFlood(int x, int y, int move, int uid)
{
	u8 **working_map = gWorkingMap;

	gMapFloodSt.waiting_queue = gMapFloodSquareBufB;
	gMapFloodSt.active_queue  = gMapFloodSquareBufA;
	gMapFloodSt.move = move;

	if (uid == 0) {
		gMapFloodSt.has_unit = FALSE;
	} else {
		gMapFloodSt.has_unit = TRUE;
		gMapFloodSt.uid = uid;
	}

	gMapFloodSt.edge_move = MAP_MOVEMENT_MAX;

	MapFill(gWorkingMap, -1);

	gMapFloodSt.waiting_queue->x = x;
	gMapFloodSt.waiting_queue->y = y;
	gMapFloodSt.waiting_queue->connect = 5;
	gMapFloodSt.waiting_queue->least_mov = 0;

	gWorkingMap[y][x] = 0;

	gMapFloodSt.waiting_queue++;
	gMapFloodSt.waiting_queue->connect = 4;

	/* CHAX */
	PreGenerateMovementMap(move);

	/* revert working-map */
	SetWorkingMap(working_map);
	MapFloodCore();
}

void MapFloodCoreStep_thumb(int connect, int x, int y)
{
	// This is a C implementation of the ARM (asm) function MapFloodCoreStep
	// Probably used during development before switching to the a more optimized version.

	short squareMove;

	x += gMapFloodSt.active_queue->x;
	y += gMapFloodSt.active_queue->y;

	squareMove = (u8) gWorkingMovTable[gMapTerrain[y][x]]
		+ (i8) gWorkingMap[(u8) gMapFloodSt.active_queue->y][(u8) gMapFloodSt.active_queue->x];

	if (squareMove >= gWorkingMap[y][x])
		return;

	if (gMapFloodSt.has_unit && gMapUnit[y][x])
		if ((gMapUnit[y][x] ^ gMapFloodSt.uid) & 0x80)
			return;

	if (squareMove > gMapFloodSt.move)
		return;

	gMapFloodSt.waiting_queue->x = x;
	gMapFloodSt.waiting_queue->y = y;
	gMapFloodSt.waiting_queue->connect = connect;
	gMapFloodSt.waiting_queue->least_mov = squareMove;

	gMapFloodSt.waiting_queue++;

	gWorkingMap[y][x] = squareMove;
}
