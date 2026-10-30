//! `fe6extract` -- command-line shell around the `fe6-core` library.
//!
//! ```text
//! fe6extract info  <rom>                    what cartridge is this?
//! fe6extract pinfo <rom> [options]          dump pr_PInfoTable
//!
//! options:
//!   --sym FILE   symbol file      (default: <rom>.sym)
//!   --addr HEX   PInfoTable address
//!   --ptr  HEX   address of the pr_PInfoTable pointer cell
//!   --count N    number of entries (default: inferred from the next symbol)
//!   --limit N    print only the first N entries
//!   --json       machine-readable output
//!   --out FILE   write to FILE instead of stdout
//!   --verify     check invariants, exit code 1 on failure
//! ```
//!
//! Exit codes: 0 ok, 1 verification failed, 2 usage / I/O error.

use std::fs::File;
use std::io::{self, BufWriter, Write};
use std::path::{Path, PathBuf};
use std::process::ExitCode;

use fe6_core::{PInfo, Rom, SymbolTable, PINFO_COUNT, PINFO_SIZE, ROM_BASE, ROM_LIMIT};

const USAGE: &str = "\
用法:
  fe6extract info  <rom>                         查看 ROM 头
  fe6extract pinfo <rom> [选项]                  提取 pr_PInfoTable

选项:
  --sym FILE    符号表 (默认: 与 ROM 同名的 .sym)
  --addr HEX    直接指定 PInfoTable 地址
  --ptr  HEX    指定 pr_PInfoTable 指针所在地址
  --count N     条目数 (默认按下一个符号推断)
  --limit N     只打印前 N 条
  --json        输出 JSON
  --out FILE    写入文件而不是标准输出
  --verify      校验数据并报告 (失败时退出码为 1)";

struct Options {
    sym_path: Option<PathBuf>,
    addr: Option<u32>,
    ptr: Option<u32>,
    count: u32,
    limit: u32,
    json: bool,
    out: Option<PathBuf>,
    verify: bool,
}

impl Default for Options {
    fn default() -> Self {
        Self {
            sym_path: None,
            addr: None,
            ptr: None,
            count: 0,
            limit: 0,
            json: false,
            out: None,
            verify: false,
        }
    }
}

/// Where the table really is, and which cell pointed at it.
struct Resolved {
    table: u32,
    ptr_cell: Option<u32>,
    hits: usize,
}

fn parse_hex(s: &str) -> Result<u32, String> {
    let t = s.trim();
    let (radix, digits) = match t.strip_prefix("0x").or_else(|| t.strip_prefix("0X")) {
        Some(d) => (16, d),
        None => (10, t),
    };
    u32::from_str_radix(digits, radix).map_err(|_| format!("无效地址 {s}"))
}

fn parse_args(args: &[String]) -> Result<Options, String> {
    let mut opt = Options::default();
    let mut i = 3;

    while i < args.len() {
        let next = |i: &mut usize| -> Result<&String, String> {
            *i += 1;
            args.get(*i).ok_or_else(|| format!("{} 缺少参数", args[*i - 1]))
        };

        match args[i].as_str() {
            "--sym" => opt.sym_path = Some(PathBuf::from(next(&mut i)?)),
            "--addr" => opt.addr = Some(parse_hex(next(&mut i)?)?),
            "--ptr" => opt.ptr = Some(parse_hex(next(&mut i)?)?),
            "--count" => {
                opt.count = next(&mut i)?
                    .parse()
                    .map_err(|_| "无效条目数".to_string())?
            }
            "--limit" => {
                opt.limit = next(&mut i)?
                    .parse()
                    .map_err(|_| "无效条目数".to_string())?
            }
            "--out" => opt.out = Some(PathBuf::from(next(&mut i)?)),
            "--json" => opt.json = true,
            "--verify" => opt.verify = true,
            "-h" | "--help" => {
                println!("{USAGE}");
                std::process::exit(0);
            }
            other => return Err(format!("不认识的参数 {other}")),
        }
        i += 1;
    }

    Ok(opt)
}

/// `<rom without extension>.sym`
fn default_sym_path(rom: &Path) -> PathBuf {
    rom.with_extension("sym")
}

/// Find the pointer cell that holds `table`, when the symbol file has no
/// `pr_PInfoTable` entry (in this rebuild the reloc symbol is shadowed by
/// `__reloc_map_start` at the same address).
fn locate_ptr(rom: &Rom, table: u32, known: Option<u32>) -> (Option<u32>, usize) {
    match known {
        Some(addr) => (Some(addr), 0),
        None => {
            let hits = rom.find_words(table);
            match hits.first() {
                Some(&addr) => (Some(addr), hits.len()),
                None => (None, 0),
            }
        }
    }
}

fn resolve_table(
    rom: &Rom,
    sym: Option<&SymbolTable>,
    addr_override: Option<u32>,
    ptr_override: Option<u32>,
) -> Result<Resolved, String> {
    if let Some(table) = addr_override {
        let (ptr_cell, hits) = locate_ptr(rom, table, None);
        return Ok(Resolved {
            table,
            ptr_cell,
            hits,
        });
    }

    let ptr_cell = match ptr_override {
        Some(p) => p,
        None => {
            let sym = sym.ok_or("没有符号表，请用 --ptr 指定 pr_PInfoTable 地址")?;
            match sym.find("pr_PInfoTable") {
                Some(p) => p,
                None => {
                    let table = sym
                        .find("PInfoTable")
                        .ok_or("符号表里找不到 pr_PInfoTable / PInfoTable")?;
                    let (ptr_cell, hits) = locate_ptr(rom, table, None);
                    return Ok(Resolved {
                        table,
                        ptr_cell,
                        hits,
                    });
                }
            }
        }
    };

    let table = rom
        .read_u32(ptr_cell)
        .ok_or_else(|| format!("无法读取指针 0x{ptr_cell:08X}"))?;
    if !(ROM_BASE..ROM_LIMIT).contains(&table) {
        return Err(format!("指针内容 0x{table:08X} 不在 ROM 范围内"));
    }

    Ok(Resolved {
        table,
        ptr_cell: Some(ptr_cell),
        hits: 0,
    })
}

fn infer_count(sym: Option<&SymbolTable>, table: u32) -> u32 {
    if let Some(sym) = sym {
        if let Some(next) = sym.next_after(table) {
            let delta = next - table;
            if delta % PINFO_SIZE as u32 == 0 && delta / PINFO_SIZE as u32 <= 0x400 {
                return delta / PINFO_SIZE as u32;
            }
        }
    }
    PINFO_COUNT
}

fn print_info(rom: &Rom, sym: Option<&SymbolTable>) -> Result<(), String> {
    println!("文件      : {}", rom.path().display());
    println!(
        "大小      : {} 字节 ({:.2} MiB)",
        rom.size(),
        rom.size() as f64 / (1024.0 * 1024.0)
    );
    println!("标题      : \"{}\"", rom.title());
    println!("游戏代码  : {}", rom.game_code());
    println!("厂商      : {}", rom.maker());

    let r = resolve_table(rom, sym, None, None)?;
    let count = infer_count(sym, r.table);

    match r.ptr_cell {
        Some(cell) => println!(
            "pr_PInfoTable : 0x{cell:08X}  ->  0x{:08X}{}",
            r.table,
            if r.hits > 1 { "  (扫描定位, 另有引用)" } else { "" }
        ),
        None => println!("PInfoTable    : 0x{:08X}", r.table),
    }
    println!(
        "条目          : {count} 条 x {PINFO_SIZE} 字节 = {} 字节",
        count as usize * PINFO_SIZE
    );
    if let Some(next) = sym.and_then(|s| s.next_after(r.table)) {
        println!("下表结束于    : 0x{next:08X}");
    }
    Ok(())
}

fn decode_all(rom: &Rom, table: u32, count: u32) -> Result<Vec<PInfo>, String> {
    let len = count as usize * PINFO_SIZE;
    let bytes = rom
        .bytes(table, len)
        .ok_or_else(|| format!("表格 [0x{table:08X}, +{len}) 超出 ROM 范围"))?;

    Ok(bytes
        .chunks_exact(PINFO_SIZE)
        .filter_map(PInfo::decode)
        .collect())
}

fn verify(entries: &[PInfo], rom: &Rom) -> bool {
    let mut bad_id = 0usize;
    let mut bad_name = 0usize;
    let mut bad_ptr = 0usize;

    for (i, p) in entries.iter().enumerate() {
        if p.id as usize != i + 1 {
            if bad_id < 3 {
                println!("  id 不连续: 第 {i} 条 id={} (期望 {})", p.id, i + 1);
            }
            bad_id += 1;
        }
        if p.msg_name == 0 {
            if bad_name < 3 {
                println!("  名字为空: 第 {i} 条 pid={}", p.id);
            }
            bad_name += 1;
        }
        if p.support_info != 0
            && rom.bytes(p.support_info, 4).is_none()
        {
            if bad_ptr < 3 {
                println!("  支援指针越界: pid={} -> 0x{:08X}", p.id, p.support_info);
            }
            bad_ptr += 1;
        }
    }

    println!(
        "校验结果: {} 条, id 异常 {bad_id}, 名字为空 {bad_name}, 支援指针越界 {bad_ptr}",
        entries.len()
    );
    bad_id + bad_name + bad_ptr == 0
}

fn print_table<W: Write>(out: &mut W, entries: &[PInfo], r: &Resolved, limit: u32) -> io::Result<()> {
    writeln!(
        out,
        "# pr_PInfoTable 0x{:08X} -> PInfoTable 0x{:08X}, {} 条 ({} 处引用)",
        r.ptr_cell.unwrap_or(0),
        r.table,
        entries.len(),
        r.hits
    )?;
    writeln!(
        out,
        "idx  pid  name   desc  jid  fid lv  hp pw sk sp df rs lc cn | gHp gPw gSk gSp gDf gRs gLc |    attributes  support"
    )?;

    for (i, p) in entries.iter().enumerate() {
        if limit != 0 && i >= limit as usize {
            writeln!(
                out,
                "... 还有 {} 条 (用 --limit 0 看全部)",
                entries.len() - i
            )?;
            break;
        }
        writeln!(
            out,
            "{:3}  {:3}  0x{:04X} 0x{:04X} {:3}  {:3} {:2}  {:2} {:2} {:2} {:2} {:2} {:2} {:2} {:2} | \
             {:3} {:3} {:3} {:3} {:3} {:3} {:3} |  0x{:08X}  0x{:08X}",
            i,
            p.id,
            p.msg_name,
            p.msg_desc,
            p.jid_default,
            p.fid,
            p.base_level,
            p.base_hp,
            p.base_pow,
            p.base_skl,
            p.base_spd,
            p.base_def,
            p.base_res,
            p.base_lck,
            p.bonus_con,
            p.growth_hp,
            p.growth_pow,
            p.growth_skl,
            p.growth_spd,
            p.growth_def,
            p.growth_res,
            p.growth_lck,
            p.attributes,
            p.support_info
        )?;
    }
    Ok(())
}

fn json_escape(s: &str) -> String {
    let mut out = String::with_capacity(s.len() + 2);
    for c in s.chars() {
        match c {
            '"' => out.push_str("\\\""),
            '\\' => out.push_str("\\\\"),
            '\n' => out.push_str("\\n"),
            '\r' => out.push_str("\\r"),
            '\t' => out.push_str("\\t"),
            c if (c as u32) < 0x20 => out.push_str(&format!("\\u{:04x}", c as u32)),
            c => out.push(c),
        }
    }
    out
}

/// Hand-written JSON writer: keeps this crate free of external crates, so
/// `cargo build` works offline and the binary stays small.
fn write_json<W: Write>(
    out: &mut W,
    rom: &Rom,
    r: &Resolved,
    entries: &[PInfo],
) -> io::Result<()> {
    writeln!(out, "{{")?;
    writeln!(out, "  \"rom\": \"{}\",", json_escape(&rom.path().display().to_string()))?;
    writeln!(out, "  \"pr_PInfoTable\": \"0x{:08X}\",", r.ptr_cell.unwrap_or(0))?;
    writeln!(out, "  \"PInfoTable\": \"0x{:08X}\",", r.table)?;
    writeln!(out, "  \"entry_size\": {},", PINFO_SIZE)?;
    writeln!(out, "  \"count\": {},", entries.len())?;
    writeln!(out, "  \"entries\": [")?;

    for (i, p) in entries.iter().enumerate() {
        writeln!(out, "    {{")?;
        writeln!(out, "      \"index\": {},", i)?;
        writeln!(out, "      \"pid\": {},", p.id)?;
        writeln!(out, "      \"msg_name\": {},", p.msg_name)?;
        writeln!(out, "      \"msg_desc\": {},", p.msg_desc)?;
        writeln!(out, "      \"jid\": {},", p.jid_default)?;
        writeln!(out, "      \"fid\": {},", p.fid)?;
        writeln!(out, "      \"chibi_id\": {},", p.chibi_id)?;
        writeln!(out, "      \"affinity\": {},", p.affinity)?;
        writeln!(out, "      \"sort_order_key\": {},", p.sort_order_key)?;
        writeln!(out, "      \"level\": {},", p.base_level)?;
        writeln!(
            out,
            "      \"base\": {{ \"hp\": {}, \"pow\": {}, \"skl\": {}, \"spd\": {}, \"def\": {}, \"res\": {}, \"lck\": {}, \"con\": {}, \"mag\": {} }},",
            p.base_hp, p.base_pow, p.base_skl, p.base_spd, p.base_def, p.base_res, p.base_lck,
            p.bonus_con, p.base_mag
        )?;
        writeln!(
            out,
            "      \"growth\": {{ \"hp\": {}, \"pow\": {}, \"skl\": {}, \"spd\": {}, \"def\": {}, \"res\": {}, \"lck\": {}, \"mag\": {} }},",
            p.growth_hp, p.growth_pow, p.growth_skl, p.growth_spd, p.growth_def, p.growth_res,
            p.growth_lck, p.growth_mag
        )?;
        writeln!(
            out,
            "      \"wexp\": [{},{},{},{},{},{},{},{}],",
            p.wexp[0], p.wexp[1], p.wexp[2], p.wexp[3], p.wexp[4], p.wexp[5], p.wexp[6],
            p.wexp[7]
        )?;
        writeln!(
            out,
            "      \"banim_pal\": [{},{}],",
            p.banim_pal[0], p.banim_pal[1]
        )?;
        writeln!(out, "      \"attributes\": \"0x{:08X}\",", p.attributes)?;
        writeln!(out, "      \"support_info\": \"0x{:08X}\"", p.support_info)?;
        writeln!(out, "    }}{}", if i + 1 == entries.len() { "" } else { "," })?;
    }

    writeln!(out, "  ]")?;
    writeln!(out, "}}")?;
    Ok(())
}

fn run(args: &[String]) -> Result<u8, String> {
    if args.len() < 3 {
        return Err(USAGE.to_string());
    }

    let command = args[1].as_str();
    let rom_path = PathBuf::from(&args[2]);
    let opt = parse_args(args)?;

    let rom = Rom::load(&rom_path)
        .map_err(|e| format!("打不开 ROM {}: {e}", rom_path.display()))?;
    if rom.size() < 0xC0 {
        return Err(format!("{} 不像 GBA ROM (太小)", rom_path.display()));
    }

    let sym_path = opt.sym_path.clone().unwrap_or_else(|| default_sym_path(&rom_path));
    let sym = SymbolTable::load(&sym_path).ok();

    match command {
        "info" => {
            print_info(&rom, sym.as_ref())?;
            Ok(0)
        }
        "pinfo" => {
            let r = resolve_table(&rom, sym.as_ref(), opt.addr, opt.ptr)?;
            let count = if opt.count != 0 {
                opt.count
            } else {
                infer_count(sym.as_ref(), r.table)
            };
            let entries = decode_all(&rom, r.table, count)?;

            let mut ok = true;
            if opt.verify {
                println!("数据源: {}", rom.path().display());
                match r.ptr_cell {
                    Some(cell) => println!(
                        "pr_PInfoTable 0x{cell:08X} -> PInfoTable 0x{:08X} ({} 处引用)",
                        r.table, r.hits
                    ),
                    None => println!("PInfoTable 0x{:08X}", r.table),
                }
                ok = verify(&entries, &rom);
            }

            match &opt.out {
                Some(path) => {
                    let file = File::create(path)
                        .map_err(|e| format!("无法写入 {}: {e}", path.display()))?;
                    let mut w = BufWriter::new(file);
                    if opt.json {
                        write_json(&mut w, &rom, &r, &entries)
                            .map_err(|e| format!("写出 JSON 失败: {e}"))?;
                    } else {
                        print_table(&mut w, &entries, &r, opt.limit)
                            .map_err(|e| e.to_string())?;
                    }
                }
                None => {
                    let stdout = io::stdout();
                    let mut w = stdout.lock();
                    if opt.json {
                        write_json(&mut w, &rom, &r, &entries)
                            .map_err(|e| format!("写出 JSON 失败: {e}"))?;
                    } else {
                        writeln!(w, "# {}", rom.path().display())
                            .map_err(|e| e.to_string())?;
                        print_table(&mut w, &entries, &r, opt.limit)
                            .map_err(|e| e.to_string())?;
                    }
                }
            }

            Ok(if ok { 0 } else { 1 })
        }
        other => Err(format!("未知命令 {other}\n{USAGE}")),
    }
}

fn main() -> ExitCode {
    let args: Vec<String> = std::env::args().collect();
    match run(&args) {
        Ok(code) => ExitCode::from(code),
        Err(msg) => {
            eprintln!("错误: {msg}");
            ExitCode::from(2)
        }
    }
}
