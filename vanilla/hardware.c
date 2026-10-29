#include "hardware.h"

#include "irq.h"
#include "move.h"
#include "oam.h"
#include "bm.h"
#include "klib.h"

#ifdef MODERN
#undef MODERN
#endif
#define MODERN 0

static struct BgCnt * GetBgCt(u16 bgid);
static void OnHBlankBoth(void);
static void RefreshOnHBlank(void);

static u8 sBgSyncBits;
static bool sPalSyncFlag;

static u8 sUnk_03000014;
static u8 sUnk_03000015;

SECTION(".ewram.hardware") u16 gBg1Tm[0x400] = { 0 };
SECTION(".ewram.hardware") u16 gBg2Tm[0x400] = { 0 };
SECTION(".ewram.hardware") u16 gBg3Tm[0x400] = { 0 };
SECTION(".ewram.hardware") u16 gBg0Tm[0x400] = { 0 };

EWRAM_DATA u16 gPal[0x200] = { 0 };

void * EWRAM_DATA gBgMapVramTable[4] = { 0 };

int EWRAM_DATA pad_02023B1C = 0;

extern IWRAM_DATA Func gOnHBlankA, gOnHBlankB;

inline void EnableBgSync(int bits)
{
    sBgSyncBits |= bits;
}

inline void EnableBgSyncById(int bgid)
{
    sBgSyncBits |= (1 << bgid);
}

inline void DisableBgSync(int bits)
{
    sBgSyncBits &= ~bits;
}

inline void EnablePalSync(void)
{
    sPalSyncFlag = TRUE;
}

inline void DisablePalSync(void)
{
    sPalSyncFlag = FALSE;
}

void ApplyPaletteExt(void const * data, int startOffset, int size)
{
    if (size & 0x1F) // size is not a multiple of 32
        CpuCopy16(data, gPal + (startOffset >> 1), size);
    else
        CpuFastCopy(data, gPal + (startOffset >> 1), size);

    EnablePalSync();
}

void SyncDispIo(void)
{
    // TODO: rewrite the MODERN version of this function
    // this is a bit of a mess

    #if MODERN
    #  define SET_REG(type, reg, src) *((typeof((src)) volatile *) &REG_##reg) = (src)
    #else
    #  define SET_REG(type, reg, src) *((type*) &REG_##reg) = *((type*) &(src))
    #endif

    SET_REG(u16, DISPCNT,  gDispIo.disp_ct);
    SET_REG(u16, DISPSTAT, gDispIo.disp_stat);

    SET_REG(u16, BG0CNT,   gDispIo.bg0_ct);
    SET_REG(u16, BG1CNT,   gDispIo.bg1_ct);
    SET_REG(u16, BG2CNT,   gDispIo.bg2_ct);
    SET_REG(u16, BG3CNT,   gDispIo.bg3_ct);

    // set both HOFS and VOFS with a single 32-bit copy
    SET_REG(u32, BG0HOFS,  gDispIo.bg_off[0]);
    SET_REG(u32, BG1HOFS,  gDispIo.bg_off[1]);
    SET_REG(u32, BG2HOFS,  gDispIo.bg_off[2]);
    SET_REG(u32, BG3HOFS,  gDispIo.bg_off[3]);

#if MODERN
    REG_WIN0H = gDispIo.win0_right + (gDispIo.win0_left << 8);
    REG_WIN1H = gDispIo.win1_right + (gDispIo.win1_left << 8);
    REG_WIN0V = gDispIo.win0_bottom + (gDispIo.win0_top << 8);
    REG_WIN1V = gDispIo.win1_bottom + (gDispIo.win1_top << 8);
#else
    // set both WIN0H and WIN1H with a single 32-bit copy
    SET_REG(u32, WIN0H,    gDispIo.win0_right);
    // set both WIN0V and WIN1V with a single 32-bit copy
    SET_REG(u32, WIN0V,    gDispIo.win0_bottom);
#endif

    // set both WININ and WINOUT with a single 32-bit copy
    SET_REG(u32, WININ,    gDispIo.win_ct);

    SET_REG(u16, MOSAIC,   gDispIo.mosaic);
    SET_REG(u16, BLDCNT,   gDispIo.blend_ct);
#if MODERN
    REG_BLDALPHA = gDispIo.blend_coef_a + (gDispIo.blend_coef_b << 8);
#else
    SET_REG(u16, BLDALPHA, gDispIo.blend_coef_a);
#endif
    SET_REG(u8,  BLDY,     gDispIo.blend_y);

#if MODERN
    REG_BG2PA = gDispIo.bg2pa;
    REG_BG2PB = gDispIo.bg2pb;
    REG_BG2PC = gDispIo.bg2pc;
    REG_BG2PD = gDispIo.bg2pd;
#else
    // set both BG2PA and BG2PB with a single 32-bit copy
    SET_REG(u32, BG2PA,    gDispIo.bg2pa);
    // set both BG2PC and BG2PD with a single 32-bit copy
    SET_REG(u32, BG2PC,    gDispIo.bg2pc);
#endif

    SET_REG(u32, BG2X,     gDispIo.bg2x);
    SET_REG(u32, BG2Y,     gDispIo.bg2y);

#if MODERN
    REG_BG3PA = gDispIo.bg3pa;
    REG_BG3PB = gDispIo.bg3pb;
    REG_BG3PC = gDispIo.bg3pc;
    REG_BG3PD = gDispIo.bg3pd;
#else
    // set both BG3PA and BG3PB with a single 32-bit copy
    SET_REG(u32, BG3PA,    gDispIo.bg3pa);
    // set both BG3PC and BG3PD with a single 32-bit copy
    SET_REG(u32, BG3PC,    gDispIo.bg3pc);
#endif

    SET_REG(u32, BG3X,     gDispIo.bg3x);
    SET_REG(u32, BG3Y,     gDispIo.bg3y);

    #undef SET_REG
}

struct BgCnt * GetBgCt(u16 bgid)
{
    switch (bgid)
    {

    case 0: return &gDispIo.bg0_ct;
    case 1: return &gDispIo.bg1_ct;
    case 2: return &gDispIo.bg2_ct;
    case 3: return &gDispIo.bg3_ct;

    }

    return NULL;
}

int GetBgChrOffset(int bg)
{
    struct BgCnt * bgCt = GetBgCt(bg);
    return bgCt->chr_block * 0x4000;
}

int GetBgChrId(int bg, int offset)
{
    offset &= 0xFFFF;

    return (offset - GetBgChrOffset(bg)) / 0x20;
}

int GetBgTilemapOffset(int bg)
{
    struct BgCnt * bgCt = GetBgCt(bg);
    return bgCt->tm_block * 0x800;
}

void SetBgChrOffset(int bg, int offset)
{
    struct BgCnt * bgCt = GetBgCt(bg);
    bgCt->chr_block = offset >> 14;
}

void SetBgTilemapOffset(int bg, int offset)
{
    struct BgCnt * bgCt = GetBgCt(bg);

    if ((offset & 0x7FF) != 0)  // must be aligned
        return;

    bgCt->tm_block = offset >> 11;
    gBgMapVramTable[bg] = (void *) (VRAM | offset);
}

void SetBgScreenSize(int bg, int size)
{
    struct BgCnt * bgCt = GetBgCt(bg);
    bgCt->size = size;
}

void SetBgBpp(int bg, int bpp)
{
    struct BgCnt * bgCt = GetBgCt(bg);
    bgCt->color_depth = (bpp == 8) ? BG_COLORDEPTH_8BPP : BG_COLORDEPTH_4BPP;
}

void SyncBgsAndPal(void)
{
    if (sBgSyncBits & BG0_SYNC_BIT)
        CpuFastCopy(gBg0Tm, gBgMapVramTable[0], sizeof gBg0Tm);

    if (sBgSyncBits & BG1_SYNC_BIT)
        CpuFastCopy(gBg1Tm, gBgMapVramTable[1], sizeof gBg1Tm);

    if (sBgSyncBits & BG2_SYNC_BIT)
        CpuFastCopy(gBg2Tm, gBgMapVramTable[2], sizeof gBg2Tm);

    if (sBgSyncBits & BG3_SYNC_BIT)
        CpuFastCopy(gBg3Tm, gBgMapVramTable[3], sizeof gBg3Tm);

    sBgSyncBits = 0;

    if (sPalSyncFlag == TRUE)
    {
        CpuFastCopy(gPal, (void *) PLTT, sizeof gPal);
        sPalSyncFlag = FALSE;
    }
}

void TmFill(u16 * dest, int tileref)
{
    tileref = tileref + (tileref << 16);
    CpuFastFill(tileref, dest, sizeof gBg0Tm);
}

void SetBlankChr(int chr)
{
    RegisterDataFill(0, (void *)(VRAM + 0x20 * chr), 0x20);
}

void SetOnVBlank(IrqFunc func)
{
    if (func != NULL)
    {
        gDispIo.disp_stat.vblank_int_enable = TRUE;

        SetIrqFunc(INT_VBLANK, func);
        REG_IE |= INTR_FLAG_VBLANK;
    }
    else
    {
        gDispIo.disp_stat.vblank_int_enable = FALSE;
        REG_IE &= ~INTR_FLAG_VBLANK;
    }
}

void SetOnVMatch(IrqFunc func)
{
    if (func != NULL)
    {
        gDispIo.disp_stat.vcount_int_enable = TRUE;

        SetIrqFunc(INT_VCOUNT, func);
        REG_IE |= INTR_FLAG_VCOUNT;
    }
    else
    {
        gDispIo.disp_stat.vcount_int_enable = FALSE;
        REG_IE &= ~INTR_FLAG_VCOUNT;

        gDispIo.disp_stat.vcount_compare = 0;
    }
}

void SetNextVCount(int vcount)
{
    u16 disp_stat;

    disp_stat = REG_DISPSTAT;
    disp_stat = disp_stat & 0xFF;
    disp_stat = disp_stat | (vcount << 8);

    REG_DISPSTAT = disp_stat;
}

void SetVCount(int vcount)
{
    gDispIo.disp_stat.vcount_compare = vcount;
}

void SetBgOffset(u16 bgid, u16 x_offset, u16 y_offset)
{
    switch (bgid)
    {

    case 0:
        gDispIo.bg_off[0].x = x_offset;
        gDispIo.bg_off[0].y = y_offset;
        break;

    case 1:
        gDispIo.bg_off[1].x = x_offset;
        gDispIo.bg_off[1].y = y_offset;
        break;

    case 2:
        gDispIo.bg_off[2].x = x_offset;
        gDispIo.bg_off[2].y = y_offset;
        break;

    case 3:
        gDispIo.bg_off[3].x = x_offset;
        gDispIo.bg_off[3].y = y_offset;
        break;

    }
}

void func_fe6_08001AE4(void)
{
    sUnk_03000014 = sUnk_03000015 = 0;

    TmFill(gBg0Tm, 0);
    EnableBgSync(BG0_SYNC_BIT);
}

void func_fe6_08001B18(u8 a, u8 b)
{
    sUnk_03000014 = a;
    sUnk_03000015 = b;
}

void func_fe6_08001B4C(u16 * a, u16 * b)
{
    int i;

    for (i = 0x27F; i >= 0; i--)
        *a++ = *b++;
}

void func_fe6_08001B8C(void * tm, void const * in_data, u8 base, u8 linebits)
{
    u8 const * it = (u8 const *) in_data + 2;
    u8 * out;

    u8 x_size = (*(u32 const *) in_data);
    u8 y_size = (*(u32 const *) in_data) >> 8;

    i8 ix, iy;

    for (iy = y_size; iy >= 0; iy--)
    {
        out = (u8 *) tm + (iy << linebits);

        for (ix = x_size; ix >= 0; ix--)
            *out++ = *it++ + base;
    }
}

void func_fe6_08001C68(u16 * tm, short const * in_data, int unused)
{
    int x_size = (in_data[0]) & 0xFF;
    int y_size = (in_data[0] >> 8) & 0xFF;

    int ix, iy;

    int acc = 0;

    in_data = in_data + 1;

    for (iy = 0; iy < y_size; ++iy)
    {
        u16 * out = tm + (iy << 5);

        for (ix = 0; ix < x_size; ++ix)
        {
            acc += *in_data++;
            *out++ = acc;
        }
    }
}

void InitBgs(u16 const * config)
{
    SHOULD_BE_STATIC u16 SHOULD_BE_CONST default_config[] =
    {
        // tile offset  map offset  size id
        0x0000,         0x6000,     BG_SIZE_256x256, // BG 0
        0x0000,         0x6800,     BG_SIZE_256x256, // BG 1
        0x0000,         0x7000,     BG_SIZE_256x256, // BG 2
        0x8000,         0x7800,     BG_SIZE_256x256, // BG 3
    };

    int i;

    if (config == NULL)
        config = default_config;

#if MODERN
    gDispIo.bg0_ct = (struct BgCnt){ 0 };
    gDispIo.bg1_ct = (struct BgCnt){ 0 };
    gDispIo.bg2_ct = (struct BgCnt){ 0 };
    gDispIo.bg3_ct = (struct BgCnt){ 0 };
#else
    *(u16 *) &gDispIo.bg0_ct = 0;
    *(u16 *) &gDispIo.bg1_ct = 0;
    *(u16 *) &gDispIo.bg2_ct = 0;
    *(u16 *) &gDispIo.bg3_ct = 0;
#endif

    gDispIo.disp_ct.forced_blank = FALSE;
    gDispIo.disp_ct.mode = 0;

    SetDispEnable(1, 1, 1, 1, 1);
    SetWinEnable(0, 0, 0);

    for (i = 0; i < 4; i++)
    {
        SetBgChrOffset(i, *config++);
        SetBgTilemapOffset(i, *config++);
        SetBgScreenSize(i, *config++);

        SetBgOffset(i, 0, 0);
        TmFill(GetBgTilemap(i), 0);
    }

    InitBmBgLayers();

    EnableBgSync(BG0_SYNC_BIT + BG1_SYNC_BIT + BG2_SYNC_BIT + BG3_SYNC_BIT);

    InitOam(0);

    PAL_COLOR(0, 0) = 0;
    EnablePalSync();
}

u16 * GetBgTilemap(int bg)
{
    static u16 * SHOULD_BE_CONST lut[] =
    {
        gBg0Tm,
        gBg1Tm,
        gBg2Tm,
        gBg3Tm,
    };

    return lut[bg];
}

void SoftResetIfKeyCombo(void)
{
    if (gKeySt->held == (KEY_BUTTON_A + KEY_BUTTON_B + KEY_BUTTON_SELECT + KEY_BUTTON_START))
        SoftReset(GBA_RESET_ALL);
}

void func_fe6_0800285C(int unk)
{
    u16 ie = REG_IE;

    REG_KEYCNT = unk - 0x4000;
    REG_IE &= ~(INTR_FLAG_SERIAL | INTR_FLAG_GAMEPAK);
    REG_IE |= INTR_FLAG_KEYPAD;
    REG_DISPCNT |= DISPCNT_FORCE_BLANK;

    SoundBiasReset();
    asm("swi 3"); // enter sleep mode
    SoundBiasSet();

    REG_IE = ie;
}

void OnHBlankBoth(void)
{
    if (gOnHBlankA)
        gOnHBlankA();

    if (gOnHBlankB)
        gOnHBlankB();
}

void RefreshOnHBlank(void)
{
    int st = 0;

    if (gOnHBlankA != NULL)
        st += 1;

    if (gOnHBlankB != NULL)
        st += 2;

    switch (st)
    {

    case 0:
        // no funcs

        gDispIo.disp_stat.hblank_int_enable = 0;
        REG_IE &= ~INTR_FLAG_HBLANK;

        break;

    case 1:
        // only func A

        gDispIo.disp_stat.hblank_int_enable = 1;

        SetIrqFunc(INT_HBLANK, gOnHBlankA);
        REG_IE |= INTR_FLAG_HBLANK;

        break;

    case 2:
        // only func B

        gDispIo.disp_stat.hblank_int_enable = 1;

        SetIrqFunc(INT_HBLANK, gOnHBlankB);
        REG_IE |= INTR_FLAG_HBLANK;

        break;

    case 3:
        // both funcs

        gDispIo.disp_stat.hblank_int_enable = 1;

        SetIrqFunc(INT_HBLANK, OnHBlankBoth);
        REG_IE |= INTR_FLAG_HBLANK;

        break;

    }
}

void SetOnHBlankA(Func func)
{
    gOnHBlankA = func;
    RefreshOnHBlank();
}

void SetOnHBlankB(Func func)
{
    gOnHBlankB = func;
    RefreshOnHBlank();
}
