#include "hardware.h"

#include "move.h"
#include "oam.h"
#include "bm.h"
#include "klib.h"

#ifdef MODERN
#undef MODERN
#endif
#define MODERN 0

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

void InitBgs(u16 const *config)
{
    static const u16 default_config[] = {
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
