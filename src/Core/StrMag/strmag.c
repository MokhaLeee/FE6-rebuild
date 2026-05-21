#include "prelude.h"
#include "unit.h"
#include "item.h"
#include "battle.h"

bool IsMagicAttackAttr(u32 attr)
{
	return !!((ITEM_ATTR_LIGHTBRAND | ITEM_ATTR_MAGIC) & attr);
}

bool IsMagicAttack(struct BattleUnit *bu)
{
	return IsMagicAttackAttr(bu->weapon_attributes);
}
