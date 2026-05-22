#include "prelude.h"
#include "unit.h"
#include "klib.h"

bool UnitAvailable(struct Unit *unit)
{
	if (unlikely(!UNIT_IS_VALID(unit)))
		return false;

	if (likely(!(unit->flags & UNIT_FLAG_UNAVAILABLE)))
		return true;

	return false;
}

bool UnitAvailableOnMap(struct Unit *unit)
{
	if (unlikely(!UNIT_IS_VALID(unit)))
		return false;

	if (likely(!(unit->flags & (UNIT_FLAG_UNAVAILABLE | UNIT_FLAG_HIDDEN))))
		return true;

	return false;
}
