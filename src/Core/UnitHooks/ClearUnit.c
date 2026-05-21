#include "prelude.h"
#include "unit.h"

void ClearUnit(struct Unit *unit)
{
	u8 id = unit->id;

	memset(unit, 0, sizeof(struct Unit));
	unit->id = id;
}
