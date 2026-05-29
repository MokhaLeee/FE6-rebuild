#include "prelude.h"
#include "util.h"
#include "banim.h"

void SetupBanimBallistaImage(void)
{
	if (gBanimBallistaImages[POS_L] != NULL)
		LZ77UnCompWram(gBanimBallistaImages[POS_L], &gBanimImgSheetBuf_Left[BAS_IMG_MAX_SIZE]);

	if (gBanimBallistaImages[POS_R] != NULL)
		LZ77UnCompWram(gBanimBallistaImages[POS_R], &gBanimImgSheetBuf_Right[BAS_IMG_MAX_SIZE]);
}
