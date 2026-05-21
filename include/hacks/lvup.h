#pragma once

#include "prelude.h"
#include "unit.h"
#include "klib.h"

#if 0
int GetUnitHpGrowth(struct Unit *unit);
int GetUnitPowGrowth(struct Unit *unit);
int GetUnitMagGrowth(struct Unit *unit);
int GetUnitSklGrowth(struct Unit *unit);
int GetUnitSpdGrowth(struct Unit *unit);
int GetUnitLckGrowth(struct Unit *unit);
int GetUnitDefGrowth(struct Unit *unit);
int GetUnitResGrowth(struct Unit *unit);

int GetUnitJobBasedHpGrowth(struct Unit *unit);
int GetUnitJobBasedPowGrowth(struct Unit *unit);
int GetUnitJobBasedMagGrowth(struct Unit *unit);
int GetUnitJobBasedSklGrowth(struct Unit *unit);
int GetUnitJobBasedSpdGrowth(struct Unit *unit);
int GetUnitJobBasedLckGrowth(struct Unit *unit);
int GetUnitJobBasedDefGrowth(struct Unit *unit);
int GetUnitJobBasedResGrowth(struct Unit *unit);
#endif

struct JobGrowthEnt { i8 st[UNIT_STATUS_MAX - 1]; };
// extern struct JobGrowthEnt const gJobGrowthList[0x100];
extern struct JobGrowthEnt const *const gpJobGrowthList;

int GetUnitHpGrowthJobBonus(int status, struct Unit *unit);
int GetUnitPowGrowthJobBonus(int status, struct Unit *unit);
int GetUnitMagGrowthJobBonus(int status, struct Unit *unit);
int GetUnitSklGrowthJobBonus(int status, struct Unit *unit);
int GetUnitSpdGrowthJobBonus(int status, struct Unit *unit);
int GetUnitLckGrowthJobBonus(int status, struct Unit *unit);
int GetUnitDefGrowthJobBonus(int status, struct Unit *unit);
int GetUnitResGrowthJobBonus(int status, struct Unit *unit);

/* max status */
struct UnitMaxStatusConfig {
	i8 hp, mag, pow, skl, spd, def, res, lck, con, mov;
	u8 _pad_[2];
};

extern const struct UnitMaxStatusConfig gUnitMaxStatusConfigTable[0x100];
extern struct UnitMaxStatusConfig const * const gpUnitMaxStatusConfigTable;

int GetUnitMaxStatusHp(struct Unit *unit);
int GetUnitMaxStatusPow(struct Unit *unit);
int GetUnitMaxStatusMag(struct Unit *unit);
int GetUnitMaxStatusSkl(struct Unit *unit);
int GetUnitMaxStatusSpd(struct Unit *unit);
int GetUnitMaxStatusLck(struct Unit *unit);
int GetUnitMaxStatusDef(struct Unit *unit);
int GetUnitMaxStatusRes(struct Unit *unit);
int GetUnitMaxStatusMov(struct Unit *unit);
int GetUnitMaxStatusCon(struct Unit *unit);
