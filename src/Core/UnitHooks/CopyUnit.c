#include "prelude.h"
#include "unit.h"

void CopyUnit(struct Unit *src, struct Unit *dst)
{
	u8 id = dst->id;

	*dst = *src;
	dst->id = id;
}
