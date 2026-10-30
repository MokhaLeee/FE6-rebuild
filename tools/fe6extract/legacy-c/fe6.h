/*
 * fe6.h -- minimal, dependency-free reader for FE6 (Fire Emblem 6) GBA ROMs.
 *
 * This is the "core" layer: pure data handling, no UI, no terminal output,
 * no platform APIs.  The CLI in main.c is one shell around it; a Windows GUI
 * would be the other shell around the very same functions.
 *
 * Portable C99, no external dependencies.
 */
#ifndef FE6_H
#define FE6_H

#include <stddef.h>
#include <stdint.h>

/* GBA cartridge address space. */
#define FE6_ROM_BASE  0x08000000u
#define FE6_ROM_LIMIT 0x0A000000u

/* ---------------------------------------------------------------- ROM ---- */

typedef struct {
    uint8_t *data;
    size_t   size;
    char     path[1024];
} Fe6Rom;

/* Load a .gba image into memory.  Returns 0 on success, -1 on failure
 * (errno-style message is written to stderr by the CLI, not here). */
int  fe6_rom_load(Fe6Rom *rom, const char *path);
void fe6_rom_free(Fe6Rom *rom);

/* Convert a GBA bus address (0x08......) to a file offset and make sure that
 * [addr, addr+len) really exists inside the image.  Returns 0 or -1. */
int fe6_rom_offset(const Fe6Rom *rom, uint32_t addr, size_t len, size_t *out_off);

int fe6_read_u8 (const Fe6Rom *rom, uint32_t addr, uint8_t  *out);
int fe6_read_u16(const Fe6Rom *rom, uint32_t addr, uint16_t *out);
int fe6_read_u32(const Fe6Rom *rom, uint32_t addr, uint32_t *out);

/* ------------------------------------------------------------ symbols ---- */

/* The .sym file produced by elf2sym: one "ADDRESS NAME" pair per line. */
typedef struct {
    char    **name;
    uint32_t *addr;
    size_t    count;
} Fe6Sym;

int  fe6_sym_load(Fe6Sym *sym, const char *path);
void fe6_sym_free(Fe6Sym *sym);

/* Exact name lookup. */
int fe6_sym_find(const Fe6Sym *sym, const char *name, uint32_t *out_addr);

/* Smallest symbol address strictly greater than `addr` -- lets us infer the
 * size of a table from the symbol that follows it. */
int fe6_sym_next(const Fe6Sym *sym, uint32_t addr, uint32_t *out_next);

/* -------------------------------------------------------------- PInfo ---- */

/* Mirrors `struct PInfo` from include/unit.h (this rebuild keeps the layout).
 * Field offsets are asserted in fe6.c, so if the struct ever changes the
 * build breaks instead of silently producing garbage. */
typedef struct {
    uint16_t msg_name;        /* 0x00 */
    uint16_t msg_desc;        /* 0x02 */
    uint8_t  id;              /* 0x04 pid */
    uint8_t  jid_default;     /* 0x05 */
    uint16_t fid;             /* 0x06 face id */
    uint8_t  chibi_id;        /* 0x08 */
    uint8_t  affinity;        /* 0x09 */
    uint8_t  sort_order_key;  /* 0x0A */

    int8_t   base_level;      /* 0x0B */
    int8_t   base_hp;         /* 0x0C */
    int8_t   base_pow;        /* 0x0D */
    int8_t   base_skl;        /* 0x0E */
    int8_t   base_spd;        /* 0x0F */
    int8_t   base_def;        /* 0x10 */
    int8_t   base_res;        /* 0x11 */
    int8_t   base_lck;        /* 0x12 */
    int8_t   bonus_con;       /* 0x13 */

    uint8_t  wexp[8];         /* 0x14 */

    uint8_t  growth_hp;       /* 0x1C */
    uint8_t  growth_pow;      /* 0x1D */
    uint8_t  growth_skl;      /* 0x1E */
    uint8_t  growth_spd;      /* 0x1F */
    uint8_t  growth_def;      /* 0x20 */
    uint8_t  growth_res;      /* 0x21 */
    uint8_t  growth_lck;      /* 0x22 */

    uint8_t  banim_pal[2];    /* 0x23 */

    int8_t   base_mag;        /* 0x25 */
    int8_t   growth_mag;      /* 0x26 */
    /* 0x27: padding */

    uint32_t attributes;      /* 0x28 */
    uint32_t support_info;    /* 0x2C */
} Fe6PInfo;

#define FE6_PINFO_SIZE 0x30u

/* Decode one little-endian record.  Never fails for a 48-byte buffer. */
void fe6_pinfo_decode(const uint8_t *src, Fe6PInfo *out);

/* Number of PInfo entries in a stock FE6 table (MAX_PIDS - 1). */
#define FE6_PINFO_COUNT 226u

#endif /* FE6_H */
