#ifndef CONFIG_H
#define CONFIG_H

#define CONFIG_VERSION "v0.1.0"

/* remove io print */
#define CONFIG_MGBA_PRINT_EN 0
#define CONFIG_NCGB_PRINT_EN 1

/* save media config: sram or flash */
#define CONFIG_SAVE_USE_SRAM 1
#define CONFIG_SAVE_USE_FLASH 0

/* read/write save in 4K sector */
#define CONFIG_SECTOR_OPERATION_IN_4K 1

/* m4a_hq_mixer */
#define CONFIG_USE_M4A_HQ_MIXER 1

/* remove unit-kakudai */
#define CONFIG_REMOVE_BANIM_UNITKAKUDAI 1

/* auto-left OAM */
#define CONFIG_AUTO_LEFT_OAM 1

/* use rewritten statscreen */
#define CONFIG_USE_MODERN_STATSCREEN 1

/* MSS title style: 1 = whole-word art, 0 = per-letter sheet */
#define CONFIG_MSS_TITLE_WHOLE_WORD 1

/* use all-instrument */
#define CONFIG_ALL_INSTRUMENT_EN 1

/* use demo promotion */
#define CONFIG_DEMO_PROMO_EN 1

/* banim command misc fix */
#define CONFIG_BANIM_ENTRY_FIX 1

/* dprintf log level */
#define CONFIG_DEBUG_LEVEL 2

/* battle damage calc */
#define CONFIG_BATTLE_MAX_DAMAGE 99
#define CONFIG_BATTLE_CRIT_CORRECTION 300

/* gaiden magic: magic books that live outside the inventory */
#define CONFIG_USE_GAIDEN_MAGIC 1

#if CONFIG_USE_GAIDEN_MAGIC
/* 0: every weapon may enter the B.Mag list, not just the magic ones */
#define CONFIG_GAIDEN_MAGIC_MUST_BE_MAGIC 0
/* 0: magic beyond the unit's weapon rank is allowed */
#define CONFIG_GAIDEN_MAGIC_REQUIRES_WRANK 0
#endif

/* debug config */
#define CONFIG_USE_DEBUG 1

#if CONFIG_USE_DEBUG
#include "configs/config-debug.h"
#endif

#endif
