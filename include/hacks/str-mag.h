#pragma once

#include "prelude.h"
#include "unit.h"
#include "battle.h"

bool IsMagicAttackAttr(u32 attr);
bool IsMagicAttack(struct BattleUnit *bu);

extern const struct ItemStatBonuses ItemBonus_MagBooster;
