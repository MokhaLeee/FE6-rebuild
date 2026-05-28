#include "prelude.h"
#include "text.h"
#include "debug.h"

void PutNumberBonus(int number, u16 *tm)
{
	if (number == 0)
		return;

	if (number < 0) {
		u16 tileref = gActiveFont->tileref;

		gActiveFont->tileref |= 9 << 0xC;
		PutSpecialChar(tm, TEXT_COLOR_SYSTEM_GREEN, TEXT_SPECIAL_DASH);
		PutNumberSmall(tm + ((number >= 10) ? 2 : 1), TEXT_COLOR_SYSTEM_GREEN, -number);
		gActiveFont->tileref = tileref;
		return;
	}

	PutSpecialChar(tm, TEXT_COLOR_SYSTEM_GREEN, TEXT_SPECIAL_PLUS);
	PutNumberSmall(tm + ((number >= 10) ? 2 : 1), TEXT_COLOR_SYSTEM_GREEN, number);
}
