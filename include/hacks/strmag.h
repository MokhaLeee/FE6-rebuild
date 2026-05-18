#pragma once

#include "prelude.h"
#include "unit.h"
#include "battle.h"

#define UNIT_MAG(unit) ((unit)->mag)
#define BU_CHG_MAG(bu) ((bu)->change_mag)

struct MagPinfo {
	u8 base, growth;
	u8 cap, bonus;
};

extern const struct MagPinfo gMagicPInfos[0x100];
extern const struct MagPinfo gMagicJInfos[0x100];

extern struct MagPinfo const *const gpMagicPInfos;
extern struct MagPinfo const *const gpMagicJInfos;

bool IsMagicAttackAttr(u32 attr);
bool IsMagicAttack(struct BattleUnit *bu);
int GetUnitMaxMagic(struct Unit *unit);
int GetUnitBaseMagic(struct Unit *unit);
int GetUnitBasicMagGrowth(struct Unit *unit);
int GetUnitJobBasedBasicMagGrowth(struct Unit *unit);
int GetClassChgMagicBonus(u8 jid);
int GetUnitMagic(struct Unit *unit);

extern const struct ItemStatBonuses ItemBonus_MagBooster;
