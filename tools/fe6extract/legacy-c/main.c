/*
 * fe6extract -- command-line shell around the fe6 core library.
 *
 *   fe6extract info  <rom>                       what is this cartridge?
 *   fe6extract pinfo <rom> [options]             dump pr_PInfoTable
 *
 * Options (pinfo):
 *   --sym FILE     symbol file (default: <rom>.sym next to the image)
 *   --addr HEX     treat HEX as the PInfoTable address (skip symbol lookup)
 *   --ptr  HEX     address of the pr_PInfoTable pointer cell
 *   --count N      number of entries (default: inferred from the next symbol)
 *   --limit N      only print the first N entries
 *   --json         machine-readable output
 *   --out FILE     write to FILE instead of stdout
 *   --verify       check invariants and report (exit 1 on failure)
 *
 * Exit codes: 0 ok, 1 verification failed, 2 bad usage / I/O error.
 */
#include "fe6.h"

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static void usage(FILE *fp)
{
    fprintf(fp,
        "用法:\n"
        "  fe6extract info  <rom>                         查看 ROM 头\n"
        "  fe6extract pinfo <rom> [选项]                  提取 pr_PInfoTable\n"
        "\n"
        "选项:\n"
        "  --sym FILE    符号表 (默认: 与 ROM 同名的 .sym)\n"
        "  --addr HEX    直接指定 PInfoTable 地址\n"
        "  --ptr  HEX    指定 pr_PInfoTable 指针所在地址\n"
        "  --count N     条目数 (默认按下一个符号推断)\n"
        "  --limit N     只打印前 N 条\n"
        "  --json        输出 JSON\n"
        "  --out FILE    写入文件而不是标准输出\n"
        "  --verify      校验数据并报告 (失败时退出码为 1)\n");
}

static int parse_hex(const char *s, uint32_t *out)
{
    char *end = NULL;
    unsigned long v;

    errno = 0;
    v = strtoul(s, &end, 0);
    if (errno != 0 || end == s || *end != '\0' || v > 0xFFFFFFFFul)
        return -1;
    *out = (uint32_t) v;
    return 0;
}

/* Build "<rom without extension>.sym". */
static void default_sym_path(const char *rom, char *out, size_t cap)
{
    size_t len = strlen(rom);

    if (len + 5 >= cap) {
        out[0] = '\0';
        return;
    }
    memcpy(out, rom, len + 1);
    if (len > 4 && strcmp(out + len - 4, ".gba") == 0) {
        out[len - 4] = '\0';
        len -= 4;
    }
    strcat(out, ".sym");
}

/* Follow pr_PInfoTable (a pointer cell in the reloc list) to the real table.
 * Returns the table address, or 0 on failure. */

/* Find the first 4-byte word in the image that equals `value`; used to locate
 * the pr_PInfoTable pointer cell when the symbol file does not carry it. */
static uint32_t find_ptr_cell(const Fe6Rom *rom, uint32_t value, size_t *out_count)
{
    size_t   i;
    size_t   n = 0;
    uint32_t first = 0;

    for (i = 0; i + 4 <= rom->size; i += 4) {
        uint32_t w = (uint32_t) rom->data[i]
                   | ((uint32_t) rom->data[i + 1] << 8)
                   | ((uint32_t) rom->data[i + 2] << 16)
                   | ((uint32_t) rom->data[i + 3] << 24);

        if (w == value) {
            if (n == 0)
                first = FE6_ROM_BASE + (uint32_t) i;
            n++;
        }
    }
    *out_count = n;
    return first;
}

static uint32_t resolve_table(const Fe6Rom *rom, const Fe6Sym *sym,
                              int have_sym, uint32_t addr_override,
                              uint32_t ptr_override, uint32_t *out_ptr_cell,
                              size_t *out_hits)
{
    uint32_t ptr_cell = 0;
    uint32_t table = 0;

    *out_ptr_cell = 0;
    *out_hits = 0;

    if (addr_override != 0) {
        table = addr_override;
        goto locate_ptr;
    }

    if (ptr_override != 0) {
        ptr_cell = ptr_override;
    } else if (have_sym) {
        if (fe6_sym_find(sym, "pr_PInfoTable", &ptr_cell) != 0) {
            /* The reloc symbol may be shadowed by another name at the same
             * address (e.g. __reloc_map_start); fall back to the table symbol
             * and look the pointer cell up by scanning. */
            if (fe6_sym_find(sym, "PInfoTable", &table) != 0) {
                fprintf(stderr, "错误: 符号表里找不到 pr_PInfoTable / PInfoTable\n");
                return 0;
            }
            goto locate_ptr;
        }
    } else {
        fprintf(stderr, "错误: 没有符号表，请用 --ptr 指定 pr_PInfoTable 地址\n");
        return 0;
    }

    if (fe6_read_u32(rom, ptr_cell, &table) != 0) {
        fprintf(stderr, "错误: 无法读取指针 0x%08lX\n", (unsigned long) ptr_cell);
        return 0;
    }
    if (table < FE6_ROM_BASE || table >= FE6_ROM_LIMIT) {
        fprintf(stderr, "错误: 指针内容 0x%08lX 不在 ROM 范围内\n",
                (unsigned long) table);
        return 0;
    }

locate_ptr:
    if (ptr_cell == 0) {
        size_t   hits = 0;
        uint32_t cell = find_ptr_cell(rom, table, &hits);

        if (cell != 0 && hits > 0) {
            ptr_cell = cell;
            *out_hits = hits;
        }
    }

    *out_ptr_cell = ptr_cell;
    return table;
}

static void print_info(const Fe6Rom *rom, const Fe6Sym *sym, int have_sym)
{
    char title[13];
    char code[5];
    char maker[3];
    uint32_t ptr_cell = 0;
    uint32_t table;
    uint32_t next = 0;
    uint32_t count = 0;
    size_t   ptr_hits = 0;

    memcpy(title, rom->data + 0xA0, 12);
    title[12] = '\0';
    memcpy(code, rom->data + 0xAC, 4);
    code[4] = '\0';
    maker[0] = (char) rom->data[0xB0];
    maker[1] = (char) rom->data[0xB1];
    maker[2] = '\0';

    printf("文件      : %s\n", rom->path);
    printf("大小      : %lu 字节 (%.2f MiB)\n",
           (unsigned long) rom->size, (double) rom->size / (1024.0 * 1024.0));
    printf("标题      : \"%s\"\n", title);
    printf("游戏代码  : %s\n", code);
    printf("厂商      : %s\n", maker);

    table = resolve_table(rom, sym, have_sym, 0, 0, &ptr_cell, &ptr_hits);
    if (table == 0)
        return;

    if (fe6_sym_next(sym, table, &next) == 0 && next > table) {
        uint32_t delta = next - table;

        if (delta % FE6_PINFO_SIZE == 0 && delta / FE6_PINFO_SIZE <= 0x400)
            count = delta / FE6_PINFO_SIZE;
    }
    if (count == 0)
        count = FE6_PINFO_COUNT;

    if (ptr_cell != 0)
        printf("pr_PInfoTable : 0x%08lX  ->  0x%08lX%s\n",
               (unsigned long) ptr_cell, (unsigned long) table,
               ptr_hits > 1 ? "  (扫描定位, 另有引用)" : "");
    else
        printf("PInfoTable    : 0x%08lX\n", (unsigned long) table);

    printf("条目          : %lu 条 x %u 字节 = %lu 字节\n",
           (unsigned long) count, FE6_PINFO_SIZE,
           (unsigned long) (count * FE6_PINFO_SIZE));
    if (next != 0)
        printf("下表结束于    : 0x%08lX\n", (unsigned long) next);
}

static void json_entry(FILE *out, size_t idx, const Fe6PInfo *p, int last)
{
    fprintf(out,
        "    { \"index\": %lu, \"pid\": %u, \"msg_name\": %u, \"msg_desc\": %u,\n"
        "      \"jid\": %u, \"fid\": %u, \"chibi_id\": %u, \"affinity\": %u,\n"
        "      \"sort_order_key\": %u, \"level\": %d,\n"
        "      \"base\": { \"hp\": %d, \"pow\": %d, \"skl\": %d, \"spd\": %d,\n"
        "                \"def\": %d, \"res\": %d, \"lck\": %d, \"con\": %d, \"mag\": %d },\n"
        "      \"growth\": { \"hp\": %u, \"pow\": %u, \"skl\": %u, \"spd\": %u,\n"
        "                  \"def\": %u, \"res\": %u, \"lck\": %u, \"mag\": %d },\n"
        "      \"wexp\": [%u,%u,%u,%u,%u,%u,%u,%u],\n"
        "      \"banim_pal\": [%u,%u],\n"
        "      \"attributes\": \"0x%08lX\",\n"
        "      \"support_info\": \"0x%08lX\" }%s\n",
        (unsigned long) idx, p->id, p->msg_name, p->msg_desc,
        p->jid_default, p->fid, p->chibi_id, p->affinity,
        p->sort_order_key, p->base_level,
        p->base_hp, p->base_pow, p->base_skl, p->base_spd,
        p->base_def, p->base_res, p->base_lck, p->bonus_con, p->base_mag,
        p->growth_hp, p->growth_pow, p->growth_skl, p->growth_spd,
        p->growth_def, p->growth_res, p->growth_lck, p->growth_mag,
        p->wexp[0], p->wexp[1], p->wexp[2], p->wexp[3],
        p->wexp[4], p->wexp[5], p->wexp[6], p->wexp[7],
        p->banim_pal[0], p->banim_pal[1],
        (unsigned long) p->attributes, (unsigned long) p->support_info,
        last ? "" : ",");
}

static void table_header(FILE *out)
{
    fprintf(out,
        "idx  pid  name   desc  jid  fid lv  hp pw sk sp df rs lc cn |"
        " gHp gPw gSk gSp gDf gRs gLc |    attributes  support\n");
}

static void table_row(FILE *out, size_t idx, const Fe6PInfo *p)
{
    fprintf(out,
        "%3lu  %3u  0x%04X 0x%04X %3u  %3u %2d  %2d %2d %2d %2d %2d %2d %2d %2d |"
        " %3u %3u %3u %3u %3u %3u %3u |  0x%08lX  0x%08lX\n",
        (unsigned long) idx, p->id, p->msg_name, p->msg_desc,
        p->jid_default, p->fid, (int) p->base_level,
        (int) p->base_hp, (int) p->base_pow, (int) p->base_skl, (int) p->base_spd,
        (int) p->base_def, (int) p->base_res, (int) p->base_lck, (int) p->bonus_con,
        p->growth_hp, p->growth_pow, p->growth_skl, p->growth_spd,
        p->growth_def, p->growth_res, p->growth_lck,
        (unsigned long) p->attributes, (unsigned long) p->support_info);
}

static int verify_entries(const Fe6PInfo *tab, uint32_t count)
{
    uint32_t i;
    uint32_t bad_id = 0, bad_name = 0, bad_ptr = 0;

    for (i = 0; i < count; i++) {
        if (tab[i].id != i + 1) {
            if (bad_id < 3)
                printf("  id 不连续: 第 %lu 条 id=%u (期望 %lu)\n",
                       (unsigned long) i, tab[i].id, (unsigned long) (i + 1));
            bad_id++;
        }
        if (tab[i].msg_name == 0) {
            if (bad_name < 3)
                printf("  名字为空: 第 %lu 条 pid=%u\n",
                       (unsigned long) i, tab[i].id);
            bad_name++;
        }
        if (tab[i].support_info != 0
            && (tab[i].support_info < FE6_ROM_BASE || tab[i].support_info >= FE6_ROM_LIMIT)) {
            if (bad_ptr < 3)
                printf("  支援指针越界: pid=%u -> 0x%08lX\n",
                       tab[i].id, (unsigned long) tab[i].support_info);
            bad_ptr++;
        }
    }

    printf("校验结果: %lu 条, id 异常 %lu, 名字为空 %lu, 支援指针越界 %lu\n",
           (unsigned long) count, (unsigned long) bad_id,
           (unsigned long) bad_name, (unsigned long) bad_ptr);

    return (bad_id || bad_name || bad_ptr) ? 1 : 0;
}

int main(int argc, char **argv)
{
    Fe6Rom rom;
    Fe6Sym sym;
    int    have_sym = 0;
    const char *cmd, *rom_path = NULL;
    char   sym_path[1200] = "";
    uint32_t addr_override = 0, ptr_override = 0;
    uint32_t count = 0, limit = 0;
    int    want_json = 0, want_verify = 0;
    const char *out_path = NULL;
    FILE  *out = stdout;
    uint32_t table_addr;
    uint32_t ptr_cell = 0;
    size_t   ptr_hits = 0;
    size_t   i;
    size_t   off;
    Fe6PInfo *tab;
    int    rc = 0;

    memset(&rom, 0, sizeof(rom));
    memset(&sym, 0, sizeof(sym));

    if (argc < 3) {
        usage(stderr);
        return 2;
    }

    cmd = argv[1];
    rom_path = argv[2];

    for (i = 3; i < (size_t) argc; i++) {
        if (strcmp(argv[i], "--sym") == 0 && i + 1 < (size_t) argc)
            snprintf(sym_path, sizeof(sym_path), "%s", argv[++i]);
        else if (strcmp(argv[i], "--addr") == 0 && i + 1 < (size_t) argc) {
            if (parse_hex(argv[++i], &addr_override) != 0) {
                fprintf(stderr, "错误: 无效地址 %s\n", argv[i]);
                return 2;
            }
        } else if (strcmp(argv[i], "--ptr") == 0 && i + 1 < (size_t) argc) {
            if (parse_hex(argv[++i], &ptr_override) != 0) {
                fprintf(stderr, "错误: 无效地址 %s\n", argv[i]);
                return 2;
            }
        } else if (strcmp(argv[i], "--count") == 0 && i + 1 < (size_t) argc)
            count = (uint32_t) strtoul(argv[++i], NULL, 0);
        else if (strcmp(argv[i], "--limit") == 0 && i + 1 < (size_t) argc)
            limit = (uint32_t) strtoul(argv[++i], NULL, 0);
        else if (strcmp(argv[i], "--out") == 0 && i + 1 < (size_t) argc)
            out_path = argv[++i];
        else if (strcmp(argv[i], "--json") == 0)
            want_json = 1;
        else if (strcmp(argv[i], "--verify") == 0)
            want_verify = 1;
        else if (strcmp(argv[i], "--help") == 0 || strcmp(argv[i], "-h") == 0) {
            usage(stdout);
            return 0;
        } else {
            fprintf(stderr, "错误: 不认识的参数 %s\n", argv[i]);
            usage(stderr);
            return 2;
        }
    }

    if (fe6_rom_load(&rom, rom_path) != 0) {
        fprintf(stderr, "错误: 打不开 ROM: %s\n", rom_path);
        return 2;
    }
    if (rom.size < 0xC0) {
        fprintf(stderr, "错误: %s 不像 GBA ROM (太小)\n", rom_path);
        fe6_rom_free(&rom);
        return 2;
    }

    if (sym_path[0] == '\0')
        default_sym_path(rom_path, sym_path, sizeof(sym_path));
    if (fe6_sym_load(&sym, sym_path) == 0)
        have_sym = 1;

    if (strcmp(cmd, "info") == 0) {
        print_info(&rom, &sym, have_sym);
        fe6_sym_free(&sym);
        fe6_rom_free(&rom);
        return 0;
    }

    if (strcmp(cmd, "pinfo") != 0) {
        fprintf(stderr, "错误: 未知命令 %s\n", cmd);
        usage(stderr);
        fe6_sym_free(&sym);
        fe6_rom_free(&rom);
        return 2;
    }

    table_addr = resolve_table(&rom, &sym, have_sym, addr_override, ptr_override,
                               &ptr_cell, &ptr_hits);
    if (table_addr == 0) {
        fe6_sym_free(&sym);
        fe6_rom_free(&rom);
        return 2;
    }

    if (count == 0) {
        uint32_t next = 0;

        if (have_sym && fe6_sym_next(&sym, table_addr, &next) == 0
            && next > table_addr) {
            uint32_t delta = next - table_addr;

            if (delta % FE6_PINFO_SIZE == 0 && delta / FE6_PINFO_SIZE <= 0x400)
                count = delta / FE6_PINFO_SIZE;
        }
        if (count == 0)
            count = FE6_PINFO_COUNT;
    }

    if (fe6_rom_offset(&rom, table_addr, (size_t) count * FE6_PINFO_SIZE, &off) != 0) {
        fprintf(stderr, "错误: 表格 [0x%08lX, +%lu) 超出 ROM 范围\n",
                (unsigned long) table_addr,
                (unsigned long) (count * FE6_PINFO_SIZE));
        fe6_sym_free(&sym);
        fe6_rom_free(&rom);
        return 2;
    }

    tab = malloc((size_t) count * sizeof(*tab));
    if (tab == NULL) {
        fprintf(stderr, "错误: 内存不足\n");
        fe6_sym_free(&sym);
        fe6_rom_free(&rom);
        return 2;
    }
    for (i = 0; i < count; i++)
        fe6_pinfo_decode(rom.data + off + i * FE6_PINFO_SIZE, &tab[i]);

    if (out_path != NULL) {
        out = fopen(out_path, "w");
        if (out == NULL) {
            fprintf(stderr, "错误: 无法写入 %s\n", out_path);
            free(tab);
            fe6_sym_free(&sym);
            fe6_rom_free(&rom);
            return 2;
        }
    }

    if (want_verify) {
        printf("数据源: %s\n", rom.path);
        if (ptr_cell != 0)
            printf("pr_PInfoTable 0x%08lX -> PInfoTable 0x%08lX (%lu 处引用)\n",
                   (unsigned long) ptr_cell, (unsigned long) table_addr,
                   (unsigned long) ptr_hits);
        else
            printf("PInfoTable 0x%08lX\n", (unsigned long) table_addr);
        rc = verify_entries(tab, count);
    }

    if (want_json) {
        fprintf(out,
            "{\n"
            "  \"rom\": \"%s\",\n"
            "  \"pr_PInfoTable\": \"0x%08lX\",\n"
            "  \"PInfoTable\": \"0x%08lX\",\n"
            "  \"entry_size\": %u,\n"
            "  \"count\": %lu,\n"
            "  \"entries\": [\n",
            rom.path,
            (unsigned long) ptr_cell, (unsigned long) table_addr,
            FE6_PINFO_SIZE, (unsigned long) count);
        for (i = 0; i < count; i++)
            json_entry(out, i, &tab[i], i + 1 == count);
        fprintf(out, "  ]\n}\n");
    } else {
        fprintf(out, "# %s\n", rom.path);
        if (ptr_cell != 0)
            fprintf(out, "# pr_PInfoTable 0x%08lX -> PInfoTable 0x%08lX, %lu 条 (%lu 处引用)\n",
                    (unsigned long) ptr_cell, (unsigned long) table_addr,
                    (unsigned long) count, (unsigned long) ptr_hits);
        else
            fprintf(out, "# PInfoTable 0x%08lX, %lu 条\n",
                    (unsigned long) table_addr, (unsigned long) count);

        table_header(out);
        for (i = 0; i < count; i++) {
            if (limit != 0 && i >= limit) {
                fprintf(out, "... 还有 %lu 条 (用 --limit 0 看全部)\n",
                        (unsigned long) (count - i));
                break;
            }
            table_row(out, i, &tab[i]);
        }
    }

    if (out != stdout)
        fclose(out);

    free(tab);
    fe6_sym_free(&sym);
    fe6_rom_free(&rom);
    return rc;
}
