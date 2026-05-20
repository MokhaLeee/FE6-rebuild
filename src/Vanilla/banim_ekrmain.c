#include "prelude.h"
#include "proc.h"
#include "oam.h"
#include "move.h"
#include "hardware.h"
#include "unit.h"
#include "battle.h"
#include "banim_sprite.h"
#include "banim.h"
#include "banim_data.h"
#include "constants/banims.h"
#include "constants/jids.h"

EWRAM_OVERLAY(banim) u8 gBanimImgSheetBuf_Left[BAS_IMG_MAX_SIZE] = {};
EWRAM_OVERLAY(banim) u8 gBanimKakudaiBuf_Left[BAS_IMG_MAX_SIZE] = {};
EWRAM_OVERLAY(banim) u8 gBanimImgSheetBuf_Right[BAS_IMG_MAX_SIZE] = {};
EWRAM_OVERLAY(banim) u8 gBanimKakudaiBuf_Right[BAS_IMG_MAX_SIZE] = {};
EWRAM_OVERLAY(banim) u16 gBanimPaletteLeft[0x50] = {};
EWRAM_OVERLAY(banim) u16 gBanimPaletteRight[0x50] = {};
EWRAM_OVERLAY(banim) u8 gBanimOamBufs[2 * BAS_OAM_MAX_SIZE] = {};
EWRAM_OVERLAY(banim) u8 gBanimScrs[2 * BAS_SCR_MAX_SIZE] = {};
EWRAM_OVERLAY(banim) u8 gBanimTerrainfxBufObj[0x2000] = {};
EWRAM_OVERLAY(banim) u16 gEfxPal[0x200] = {};
EWRAM_OVERLAY(banim) u16 Buf_EkrGaugeNumImg[0x200] = {};
EWRAM_OVERLAY(banim) u16 gUnk_Banim_02016DC0[0x40] = {};
EWRAM_OVERLAY(banim) u8 gUnk_Banim_02016E40[0x200] = {};
EWRAM_OVERLAY(banim) u8 gUnk_Banim_02017040[0x200] = {};
EWRAM_OVERLAY(banim) u8 gUnk_Banim_02017240[0x200] = {};
EWRAM_OVERLAY(banim) u8 gUnk_Banim_02017440[0x200] = {};
EWRAM_OVERLAY(banim) struct Font gBanimFont = {};
EWRAM_OVERLAY(banim) struct Text gBanimText[20] = {};
EWRAM_OVERLAY(banim) u16 gEkrGaugeDecoder[18] = {};
EWRAM_OVERLAY(banim) u32 gEkrBattleEndFlag = 0;
EWRAM_OVERLAY(banim) u32 gEkrHpBarCount = 0;
EWRAM_OVERLAY(banim) u32 gEfxSpellAnimExists = 0;
EWRAM_OVERLAY(banim) u32 gUnk_Banim_02017728 = 0;
EWRAM_OVERLAY(banim) u32 gEkrDeadExist = 0;
EWRAM_OVERLAY(banim) u32 gEkrDeadEventExist = 0;
EWRAM_OVERLAY(banim) u32 gEfxQuakeExist = 0;
EWRAM_OVERLAY(banim) u32 gEfxHitQuakeExist = 0;
EWRAM_OVERLAY(banim) u32 gEkrInitPosReal = 0;
EWRAM_OVERLAY(banim) u32 gEfxFarAttackExist = 0;
EWRAM_OVERLAY(banim) u32 gEfxBgSemaphore = 0;
EWRAM_OVERLAY(banim) u32 gEfxHpBarResireFlag = 0;
EWRAM_OVERLAY(banim) u32 gUnk_Banim_0201774C = 0;
EWRAM_OVERLAY(banim) u32 gEfxTeonoState = 0;
EWRAM_OVERLAY(banim) u32 gEfxTerrainLayerLow = 0;
EWRAM_OVERLAY(banim) struct Vec2i gEkrBg2QuakeVec = {};
EWRAM_OVERLAY(banim) i16 gUnk_Banim_0201775C[2] = {};
EWRAM_OVERLAY(banim) i16 gEfxSpecalEffectExist[2] = {};
EWRAM_OVERLAY(banim) struct ProcEfxStatusUnit *gpProcEfxStatusUnits[2] = {};
EWRAM_OVERLAY(banim) struct ProcEfxWeaponIcon *gpProcEfxWeaponIcon = NULL;
EWRAM_OVERLAY(banim) struct ProcEfxSpellCast *gpProcEfxSpellCast = NULL;
EWRAM_OVERLAY(banim) struct ProcEfxHpBarColorChange *gpProcEfxHpBarColorChange = NULL;
EWRAM_OVERLAY(banim) i16 gEkrHitNow[2] = {};
EWRAM_OVERLAY(banim) u8 gSpellAnimBgfx[0x1D00] = {};
EWRAM_OVERLAY(banim) u16 gEkrBarfxBuf[0x300 / 2] = {};
EWRAM_OVERLAY(banim) u16 gEkrTsaBuffer[0x1000 / 2] = {};
EWRAM_OVERLAY(banim) u8 gBuf_Banim[0x2000] = {};
EWRAM_OVERLAY(banim) u16 gPal_Banim[0xA0] = {};
EWRAM_OVERLAY(banim) u16 gTmA_Banim[0xB58 / sizeof(u16)] = {};
EWRAM_OVERLAY(banim) u16 gTmB_Banim[0xB58 / sizeof(u16)] = {};
EWRAM_OVERLAY(banim) i8 gEfxSplitedColorBufA[2][0x30] = {};
EWRAM_OVERLAY(banim) i8 gEfxSplitedColorBufB[2][0x30] = {};
EWRAM_OVERLAY(banim) i16 gEfxSplitedColorBufC[2][0x30] = {};
EWRAM_OVERLAY(banim) int gEkrWindowAppearUnexist = 0;
EWRAM_OVERLAY(banim) int gEkrNameWinAppearExist = 0;
EWRAM_OVERLAY(banim) int gProcEkrBaseAppearExist = 0;
EWRAM_OVERLAY(banim) u32 gUnk_Banim_0201E0F8 = 0;
EWRAM_OVERLAY(banim) struct EkrTerrainfxDesc gEkrTerrainfxDesc = {};
EWRAM_OVERLAY(banim) u32 gBanimDoneFlag[2] = {};
EWRAM_OVERLAY(banim) u32 gEkrBgPosition = 0;
EWRAM_OVERLAY(banim) u32 gUnk_Banim_0201E130[2] = {};
EWRAM_OVERLAY(banim) ProcPtr gpProcEfxAnimeDrv = NULL;
EWRAM_OVERLAY(banim) const void *gpImgSheet[2] = {};
