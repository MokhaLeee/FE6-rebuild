#include "prelude.h"
#include "gbaflash.h"

#if CONFIG_SAVE_USE_FLASH

IWRAM_FUNC
void flash_memcpy(volatile unsigned char *dst, const volatile unsigned char *src, size_t size)
{
	for (;size > 0;--size) 
		*dst++ = *src++;
}

IWRAM_FUNC
unsigned int flash_absmemcmp(const volatile unsigned char *dst, const volatile unsigned char *src, size_t size)
{
	while (size-- > 0) {
		unsigned int a = *dst++;
		unsigned int b = *src++;
		if (a != b) 
			return 1;
	}

	return 0;
}

#endif
