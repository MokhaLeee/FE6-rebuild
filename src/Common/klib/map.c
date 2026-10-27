#include "prelude.h"
#include "unit.h"
#include "map.h"
#include "klib.h"

inline bool IsPositionValid(int x, int y)
{
	if (x < 0)
		return false;

	if (y < 0)
		return false;

	if (x > gMapSize.x)
		return false;

	if (y > gMapSize.y)
		return false;

	return true;
}
