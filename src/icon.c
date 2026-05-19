#include "icon.h"

#include "hardware.h"
#include "move.h"

#include "constants/videoalloc_global.h"

enum { MAX_ICON_COUNT = 160 };
enum { MAX_ICON_DISPLAY_COUNT = 0x20 };

struct IconSt
{
    /* 00 */ u8 ref_count;
    /* 01 */ u8 disp_id;
};

extern u16 const *const gpPal_Icons;
extern u8 const *const gpImg_Icons;

static struct IconSt EWRAM_DATA sIconStTable[MAX_ICON_COUNT] = {};
static u8 EWRAM_DATA sIconDisplayList[MAX_ICON_DISPLAY_COUNT] = {};

void InitIcons(void)
{
    ClearIcons();
}

void ApplyIconPalettes(int palid)
{
    ApplyPalettes(gpPal_Icons, palid, 2);
}

void ApplyIconPalette(int num, int palid)
{
    ApplyPalette(gpPal_Icons + 0x10 * num, palid);
}
