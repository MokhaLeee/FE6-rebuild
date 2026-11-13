# FE6 → Nintendo DS 移植进展

> 状态时间：2026-11-13
> 目标平台：**标准 DS / DS Lite（4MB RAM）**
> 验证方式：模拟器（无头 + 截图）

---

## 0. 一句话状态

**代码层已经全部打通**：604 个目标文件编译成功，所有符号已解析，libnds 链接脚本正常加载。
**只差最后一步**：`ewram` 溢出 **389 KB**（4MB 装不下当前约 4.4MB 的数据）。

下一步要么削减 390KB 数据（快），要么做卡带分页（正确但工程量大）。

---

## 1. 目标与范围（第一阶段）

- 保留游戏逻辑与显示
- **屏蔽存档**（`src/Core/SaveData/hw-ops/`）
- **去掉声音**（`src/Common/sound/m4a.c` + 音频数据）
- 产出可运行的 `.nds`，在模拟器上跑通

---

## 2. 已验证的关键结论

### 2.1 不需要 agbcc，全部可用现代 GCC 编译

| 范围 | 结果 |
|---|---|
| `vanilla/` | **113/113** 个 C 文件编译通过 |
| `src/` | **172/172** 个 C 文件编译通过 |

用 `-march=armv5te -mtune=arm946e-s -mthumb -mthumb-interwork` 即可。
`agbcc` 只是为了匹配原版 ROM 的汇编，移植版不需要。

### 2.2 工具链可用

- devkitARM 13.2.0 + libnds（`/opt/devkitpro`）
- `ndstool` 能正常产出 `.nds`
- 最小 hello_world 验证过：`139264` 字节的 `.nds` 能跑

### 2.3 硬件地址在 DS 上恰好兼容（重要）

| 区域 | GBA | DS | 结论 |
|---|---|---|---|
| PLTT | `0x05000000` | `0x05000000` | 相同 |
| VRAM | `0x06000000` | `0x06000000` | 相同 |
| OAM | `0x07000000` | `0x07000000` | 相同 |
| OBJ VRAM | `0x06010000` | **`0x06400000`** | **唯一差异** |
| 显示寄存器 | `0x04000000–0x0400005F` | 同区间（Engine A） | 基本兼容 |

所以 IMG 相关代码几乎不用改，只需重定向 OBJ VRAM 常量。

### 2.4 FE6 的自定义段与 libnds 链接脚本冲突

FE6 用 `.ewram_data` / `.iwram_data` / `ewram_overlay_*` / `.content_data` 等段，
libnds 的 `ds_arm9.ld` 不认识 → 溢出。

**解法**：`nds/include/attributes.h` 用 `#include_next` 覆盖，把这些段全部改成标准段。
代价：`EWRAM_OVERLAY` 的"多 overlay 共享同一内存区"语义暂时失效。

### 2.5 GBA BIOS 必须软件实现

DS 没有 GBA 的 SWI 表。已在 `nds/source/nds_bios.c` 实现：

- ✅ `Div` / `DivRem` / `Sqrt`
- ✅ `CpuSet` / `CpuFastSet`
- ✅ `LZ77UnCompWram` / `LZ77UnCompVram`
- ✅ `RLUnCompWram` / `RLUnCompVram`
- ✅ `SoftReset` / `RegisterRamReset` / `VBlankIntrWait`
- ⚠️ `ArcTan2` / `BgAffineSet` / `ObjAffineSet` —— **目前是占位实现，旋转/缩放会不正确**
- ⚠️ `HuffUnComp` —— 占位（主流程未用到）

---

## 3. 当前阻塞：ewram 溢出 389KB

```
region `ewram' overflowed by 389092 bytes
address 0x244cff0 of .data is not within region `ewram'
address 0x245efe4 of .bss  is not within region `ewram'
```

- 链接脚本：`nds/lds/ds_arm9.mem` 把 `ewram` 设为完整 4MB（`0x02000000–0x023FFFFF`）
- `.data` 末端 `0x0244CFF0`、`.bss` 末端 `0x0245EFE4`，都超出 `0x02400000`
- 即：**当前数据约 4.4MB，比 4MB 多 389KB**

### 已排除的大块（无法再省）

- `gamedata/sounds/AllInstruments/AllInstruments.s`（1.09MB 源）
- `gamedata/sounds/vanilla_songs.s`（8.1MB 源）
- `gamedata/sounds/DemoSounds/**`（约 3MB，demo 音乐）
- `src/Common/sound/m4a*.S`、`src/Common/armfunc/armfunc-asm.iwram.S`

---

## 4. 下一步方案（按优先级）

### 方案 A：削减 390KB（最快，推荐先做）

候选目标文件：

| 文件 | `.o` 大小 | 符号数 | 说明 |
|---|---|---|---|
| `vanilla/data/rodata_banim_0811AE34.s` | ~0.72MB | 896 | 战斗动画图形 |
| `vanilla/textglyph_special.s` | ~0.40MB | 较少 | 特殊字形 |

**做法**：排除 `rodata_banim_0811AE34.s`，再为它定义的 896 个符号生成空桩。

生成桩的脚本（在仓库根目录执行）：

```bash
# 1) 提取该文件所有 .global 符号，生成 stub
grep '^\.global' vanilla/data/rodata_banim_0811AE34.s | awk '{print $2}' > /tmp/banim_syms.txt
{
  echo '\t.section .rodata'
  while read -r s; do
    echo ".global $s"
    echo "$s:"
    echo '\t.zero 4'
  done < /tmp/banim_syms.txt
} > nds/source/banim_nodata_stub.s

# 2) 在 nds/Makefile 的 EXCLUDE_S 里加入：
#    vanilla/data/rodata_banim_0811AE34.s
```

风险：桩只有 4 字节，播放战斗动画时越界读会崩。但**启动到标题/地图应该没问题**。

### 方案 B：卡带分页 + MMU（正确方案，工程量大）

思路：

1. 链接脚本把 `.rodata` 的 VMA 放到虚拟地址（如 `0x08000000` 起），`NOLOAD`
2. 用 `objcopy` 把 `.rodata` 提取成 `payload.bin`，用 `ndstool -d` 打包进 nitrofs
3. 运行时用 MMU 把虚拟区间映射到 RAM 的有限窗口（如 2.5MB）
4. Data Abort handler 缺页 → 从卡带读 4KB/64KB → 更新页表 → 重试
5. LRU 淘汰

工作量估计 600–900 行 + 调试。这是让标准 DS 完整跑起来**唯一正确**的路。

### 方案 C：DSi 16MB（最快验证，但不符合目标平台）

改 `nds/lds/ds_arm9.mem` 的 `ewram` 为 `16M` 即可装下。
但注意 `dtcm` 在 `0x02FF0000` 会与 16MB 区间冲突，需要一并调整。
仅用于验证移植代码是否正确，不是最终形态。

---

## 5. 文件清单

远程仓库 `~/fe6-rebuild/nds/`：

| 文件 | 作用 |
|---|---|
| `Makefile` | 平行构建，**不影响**原 GBA 的 `make all` |
| `include/defines.h` | 覆盖 OBJ VRAM 地址 |
| `include/attributes.h` | 把 FE6 自定义段改成标准段 |
| `lds/ds_arm9.mem` | ewram 扩到完整 4MB |
| `source/nds_main.c` | 替代 `AgbMain`，去掉存档/声音 |
| `source/nds_hw.c` | VRAM bank 映射、中断适配 |
| `source/nds_bios.c` | GBA BIOS 软件实现 |
| `source/nds_stub.c` | m4a 声音接口桩 |
| `source/nds_save_stub.c` | 存档影子缓冲 + `dummy_song` + `gSongTable` |

---

## 6. 构建命令

```bash
cd ~/fe6-rebuild
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export PATH=/opt/devkitpro/devkitARM/bin:/opt/devkitpro/tools/bin:$PATH

# 全量（改过 attributes.h 必须 clean）
make -f nds/Makefile clean
make -f nds/Makefile -j8

# 产物
# fe6ds.nds / fe6ds.elf
```

**注意**：本机 `$PATH` 在远程 shell 里常为空，`tail`/`head` 会找不到，
建议把命令写成脚本再执行（参考 `out/build_nds_full.sh`）。

---

## 7. 无头验证（已就绪）

同事已经在本机搭好 melonDS DS 1.4.0 的 headless 运行器：

```bash
~/nds-headless/bin/nds-headless fe6ds.nds \
    --frames 300 --shot 120 --shot 299 --out /tmp/ndsout \
    --peek 0x02000000:64
```

- 产物：`/tmp/ndsout/*.png`（256×384，上下屏拼接）、`main-ram.bin`
- 支持 `--expect 0xADDR=VALUE` 做内存断言
- 完整说明：`~/nds-headless/README.md`
- 注意：**16bpp 位图 bit15 是 alpha**，写 `0x7C00` 会透明，要用 `ARGB16(1,r,g,b)`

---

## 8. 踩坑记录（避免重复）

1. **`nds.h` 与 `gbaio.h` 宏冲突**
   `REG_IE`/`REG_IF`/`REG_IME`/`DMA_*`/`TIMER_ENABLE`/`SOUND_MASTER_ENABLE` 同名不同义。
   → `nds_hw.c` 不 include FE6 的 `prelude.h`，只 include libnds 头。

2. **`-I` 顺序决定覆盖**
   `nds/include` 必须排在 `include` 前，且用 `#include_next` 才能覆盖原头。

3. **改了 `attributes.h` 必须 `make clean`**
   否则旧 `.o` 仍带旧段名，会出现莫名的 `ewram_overlay_0` 段。

4. **Makefile 里要显式 `CC := $(DEVKITARM)/bin/arm-none-eabi-gcc`**
   否则 make 用系统 `cc`（x86），报 `bad value 'armv5te' for -march`。

5. **管道会吞掉链接错误的退出码**
   `$(CC) ... | head` 会让 make 以为成功，导致后续 `ndstool` 报 `invalid ELF file`。
   → 用 `> log 2>&1 || { head -40 log; exit 1; }`。

6. **`region ewram overflowed by 18446744073709546408` 这种巨大数字**
   是链接器 64 位下溢的表现，本质是段没定义/段名不匹配，不是真的超那么多。

7. **`songtable.c` 引用了 409 个 `song_*` 符号**
   排除音频数据后必须一起排除 `songtable.c`，并 stub `gSongTable`。

---

## 9. 下次继续的最短路径

1. 让它链接通过（方案 A 削 390KB，或方案 C 临时用 16MB）
2. 用 `nds-headless` 跑，看是否启动、是否黑屏
3. 黑屏就查显示初始化（`nds_hw_init` 的 VRAM bank 映射）
4. 能显示后再补 `ArcTan2`/`BgAffineSet`/`ObjAffineSet`
5. 之后再决定要不要做卡带分页（方案 B）
