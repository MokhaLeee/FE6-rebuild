#include "prelude.h"
#include "oam.h"
#include "irq.h"
#include "oam.h"
#include "text.h"
#include "event.h"
#include "face.h"
#include "map.h"
#include "mapwork.h"
#include "ai_decide.h"
#include "manim.h"
#include "eventinfo.h"
#include "secretscreen.h"
#include "worldmap.h"
#include "m4a.h"

/**
 * hardware ?
 */
#if !CONFIG_USE_M4A_HQ_MIXER
IWRAM_DATA u8 SoundMainRam[0x400] = {};
#endif

IWRAM_DATA u16 *gOamLoPutIt = NULL;
IWRAM_DATA struct DispIo gDispIo = {};

/**
 * IRQ
 */
IWRAM_DATA IrqFunc gIrqFuncs[INT_COUNT] = {};

/**
 * RAM func
 */
IWRAM_DATA void (* MapFloodCoreRamFunc)(void) = NULL;

/**
 * OAM
 */
IWRAM_DATA u16 gOamAffinePutId = 0;
IWRAM_DATA Func gOnHBlankA = NULL;
IWRAM_DATA u16 gOam[0x200] = {};
IWRAM_DATA u16 *gOamHiPutIt = NULL;
IWRAM_DATA Func gOnHBlankB = NULL;

/**
 * Arm func
 */
IWRAM_DATA struct OamView *gOamAffinePutIt = NULL;
IWRAM_DATA u32 IntrMainRam[0x200] = {};
IWRAM_DATA void (* MapFloodCoreStepRamFunc)(void) = NULL;

/**
 * Event
 */
IWRAM_DATA u8 gEventScriptQueueIt = 0;
IWRAM_DATA EventScr const *gEventScriptQueue[8] = {};
IWRAM_DATA struct SpriteEntry *gSpriteAllocIt = NULL;

/**
 * Face
 */
IWRAM_DATA struct FaceProc *gFaces[FACE_SLOT_COUNT] = {};

/**
 * Map
 */
IWRAM_DATA u8 **gWorkingMap = NULL;
IWRAM_DATA struct MapFloodSquareEnt gMapFloodSquareBufB[0x80] = {};
IWRAM_DATA i8 gWorkingMovTable[0x40] = {};
IWRAM_DATA struct Unit gStatGainSimUnit = {};

// ALIGN(16)
IWRAM_DATA struct MapFloodSquareEnt gMapFloodSquareBufA[0x80] = {};

/**
 * Unit
 */
IWRAM_DATA struct Unit *gActiveUnit = NULL;

// ALIGN(16)
IWRAM_DATA struct MapFloodSt gMapFloodSt = {};

/**
 * AI
 */
IWRAM_DATA void (*AiDecideFunc)(void) = NULL;

/**
 * Map anim
 */
IWRAM_DATA struct UnkSt_030046D0 gUnk_030046D0[0x10] = {};
IWRAM_DATA u16 gUnk_03004750[10 * 0x10] = {};

/**
 * Event info
 */
IWRAM_DATA ALIGNED(4) u8 gPermanentFlagBits[(MAX_PERMANENT_FLAGS + CHAR_BIT - 1) / CHAR_BIT] = {};
IWRAM_DATA ALIGNED(4) u8 gChapterFlagBits[(MAX_CHAPTER_FLAGS + CHAR_BIT - 1) / CHAR_BIT] = {};
IWRAM_DATA ALIGNED(4) u8 gEndingMonologueState = 0;
IWRAM_DATA ALIGNED(4) u8 gUnk_030048A8 = 0;
IWRAM_DATA u8 gEndingMonologueTextDone = 0;

/**
 * Secret screen
 */
IWRAM_DATA struct UnkStruct_SecretScreen_030048C0 gSecretScreen_030048C0 = {};

/**
 * Play rank
 */
IWRAM_DATA ProcPtr gEndingFace1 = NULL;

/**
 * WM
 */
IWRAM_DATA struct WmArrowSt gWmArrowSt[3] = {};

/**
 * OP
 */
IWRAM_DATA bool bool_opanim_03005284 = false;
IWRAM_DATA int gOpAnimStep[8] = {};
