/*
 * fe6.c -- implementation of the FE6 ROM reader (see fe6.h).
 */
#include "fe6.h"

#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Fail the build if the struct below ever drifts from include/unit.h. */
typedef char assert_pinfo_size[(sizeof(Fe6PInfo) == 0x30) ? 1 : -1];
typedef char assert_off_id[(offsetof(Fe6PInfo, id) == 0x04) ? 1 : -1];
typedef char assert_off_fid[(offsetof(Fe6PInfo, fid) == 0x06) ? 1 : -1];
typedef char assert_off_base[(offsetof(Fe6PInfo, base_level) == 0x0B) ? 1 : -1];
typedef char assert_off_wexp[(offsetof(Fe6PInfo, wexp) == 0x14) ? 1 : -1];
typedef char assert_off_growth[(offsetof(Fe6PInfo, growth_hp) == 0x1C) ? 1 : -1];
typedef char assert_off_attrs[(offsetof(Fe6PInfo, attributes) == 0x28) ? 1 : -1];
typedef char assert_off_supp[(offsetof(Fe6PInfo, support_info) == 0x2C) ? 1 : -1];

/* ---------------------------------------------------------------- ROM ---- */

int fe6_rom_load(Fe6Rom *rom, const char *path)
{
    FILE *fp;
    long  end;
    size_t got;

    memset(rom, 0, sizeof(*rom));

    fp = fopen(path, "rb");
    if (fp == NULL)
        return -1;

    if (fseek(fp, 0, SEEK_END) != 0 || (end = ftell(fp)) <= 0) {
        fclose(fp);
        return -1;
    }
    if (fseek(fp, 0, SEEK_SET) != 0) {
        fclose(fp);
        return -1;
    }

    rom->data = malloc((size_t) end);
    if (rom->data == NULL) {
        fclose(fp);
        return -1;
    }

    got = fread(rom->data, 1, (size_t) end, fp);
    fclose(fp);
    if (got != (size_t) end) {
        free(rom->data);
        memset(rom, 0, sizeof(*rom));
        return -1;
    }

    rom->size = (size_t) end;
    strncpy(rom->path, path, sizeof(rom->path) - 1);
    return 0;
}

void fe6_rom_free(Fe6Rom *rom)
{
    free(rom->data);
    memset(rom, 0, sizeof(*rom));
}

int fe6_rom_offset(const Fe6Rom *rom, uint32_t addr, size_t len, size_t *out_off)
{
    size_t off;

    if (addr < FE6_ROM_BASE || addr >= FE6_ROM_LIMIT)
        return -1;

    off = (size_t) (addr - FE6_ROM_BASE);
    if (off >= rom->size || len > rom->size - off)
        return -1;

    *out_off = off;
    return 0;
}

int fe6_read_u8(const Fe6Rom *rom, uint32_t addr, uint8_t *out)
{
    size_t off;

    if (fe6_rom_offset(rom, addr, 1, &off) != 0)
        return -1;
    *out = rom->data[off];
    return 0;
}

int fe6_read_u16(const Fe6Rom *rom, uint32_t addr, uint16_t *out)
{
    size_t off;

    if (fe6_rom_offset(rom, addr, 2, &off) != 0)
        return -1;
    *out = (uint16_t) (rom->data[off] | (rom->data[off + 1] << 8));
    return 0;
}

int fe6_read_u32(const Fe6Rom *rom, uint32_t addr, uint32_t *out)
{
    size_t off;

    if (fe6_rom_offset(rom, addr, 4, &off) != 0)
        return -1;
    *out = (uint32_t) rom->data[off]
         | ((uint32_t) rom->data[off + 1] << 8)
         | ((uint32_t) rom->data[off + 2] << 16)
         | ((uint32_t) rom->data[off + 3] << 24);
    return 0;
}

/* ------------------------------------------------------------ symbols ---- */

static char *dup_string(const char *s)
{
    size_t len = strlen(s) + 1;
    char  *p = malloc(len);

    if (p != NULL)
        memcpy(p, s, len);
    return p;
}

int fe6_sym_load(Fe6Sym *sym, const char *path)
{
    FILE *fp;
    char  line[1024];

    memset(sym, 0, sizeof(*sym));

    fp = fopen(path, "r");
    if (fp == NULL)
        return -1;

    while (fgets(line, sizeof(line), fp) != NULL) {
        char    name[512];
        unsigned addr;
        char   *p = line;

        while (*p == ' ' || *p == '\t')
            p++;
        if (*p == ';' || *p == '\n' || *p == '\r' || *p == '\0')
            continue;

        if (sscanf(p, "%x %511s", &addr, name) != 2)
            continue;

        sym->name = realloc(sym->name, (sym->count + 1) * sizeof(*sym->name));
        sym->addr = realloc(sym->addr, (sym->count + 1) * sizeof(*sym->addr));
        if (sym->name == NULL || sym->addr == NULL) {
            fclose(fp);
            fe6_sym_free(sym);
            return -1;
        }

        sym->name[sym->count] = dup_string(name);
        sym->addr[sym->count] = (uint32_t) addr;
        sym->count++;
    }

    fclose(fp);
    return 0;
}

void fe6_sym_free(Fe6Sym *sym)
{
    size_t i;

    for (i = 0; i < sym->count; i++)
        free(sym->name[i]);
    free(sym->name);
    free(sym->addr);
    memset(sym, 0, sizeof(*sym));
}

int fe6_sym_find(const Fe6Sym *sym, const char *name, uint32_t *out_addr)
{
    size_t i;

    for (i = 0; i < sym->count; i++) {
        if (strcmp(sym->name[i], name) == 0) {
            *out_addr = sym->addr[i];
            return 0;
        }
    }
    return -1;
}

int fe6_sym_next(const Fe6Sym *sym, uint32_t addr, uint32_t *out_next)
{
    size_t   i;
    uint32_t best = 0;
    int      found = 0;

    for (i = 0; i < sym->count; i++) {
        uint32_t a = sym->addr[i];

        if (a <= addr || a >= FE6_ROM_LIMIT)
            continue;
        if (!found || a < best) {
            best = a;
            found = 1;
        }
    }

    if (!found)
        return -1;
    *out_next = best;
    return 0;
}

/* -------------------------------------------------------------- PInfo ---- */

void fe6_pinfo_decode(const uint8_t *s, Fe6PInfo *out)
{
    memset(out, 0, sizeof(*out));

    out->msg_name  = (uint16_t) (s[0x00] | (s[0x01] << 8));
    out->msg_desc  = (uint16_t) (s[0x02] | (s[0x03] << 8));
    out->id        = s[0x04];
    out->jid_default = s[0x05];
    out->fid       = (uint16_t) (s[0x06] | (s[0x07] << 8));
    out->chibi_id  = s[0x08];
    out->affinity  = s[0x09];
    out->sort_order_key = s[0x0A];

    out->base_level = (int8_t) s[0x0B];
    out->base_hp    = (int8_t) s[0x0C];
    out->base_pow   = (int8_t) s[0x0D];
    out->base_skl   = (int8_t) s[0x0E];
    out->base_spd   = (int8_t) s[0x0F];
    out->base_def   = (int8_t) s[0x10];
    out->base_res   = (int8_t) s[0x11];
    out->base_lck   = (int8_t) s[0x12];
    out->bonus_con  = (int8_t) s[0x13];

    memcpy(out->wexp, s + 0x14, sizeof(out->wexp));

    out->growth_hp  = s[0x1C];
    out->growth_pow = s[0x1D];
    out->growth_skl = s[0x1E];
    out->growth_spd = s[0x1F];
    out->growth_def = s[0x20];
    out->growth_res = s[0x21];
    out->growth_lck = s[0x22];

    out->banim_pal[0] = s[0x23];
    out->banim_pal[1] = s[0x24];

    out->base_mag   = (int8_t) s[0x25];
    out->growth_mag = (int8_t) s[0x26];

    out->attributes = (uint32_t) s[0x28]
                    | ((uint32_t) s[0x29] << 8)
                    | ((uint32_t) s[0x2A] << 16)
                    | ((uint32_t) s[0x2B] << 24);
    out->support_info = (uint32_t) s[0x2C]
                      | ((uint32_t) s[0x2D] << 8)
                      | ((uint32_t) s[0x2E] << 16)
                      | ((uint32_t) s[0x2F] << 24);
}
