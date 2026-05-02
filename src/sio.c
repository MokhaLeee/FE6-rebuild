#include "prelude.h"

int CheckInLinkArena(void)
{
	return false;
}

void func_fe6_08036994(void)
{}

u32 SioStrCpy(void const *_src, void *_dst)
{
	u8 const *src = _src;
	u8 *dst = _dst;
	u32 ret = 0;

	while (*src != '\0') {
		*dst++ = *src++;
		ret++;
	}
	*dst = *src;
	return ret;
}

int CheckDisplayPasswordScreenCombo(void)
{
	return false;
}
