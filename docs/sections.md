# ROM 内存模型与数据隔离

本文（文件名沿用 `sections.md`）定义 fe6-rebuild 的 ROM 地址空间模型：
代码、reloc 指针区、内核数据（kdata）和用户数据（user data）各自占哪一段、
哪些大小是强制的、哪些不是。

- 开发规范（怎么新增表、怎么写消费者）：`src/reloc/README.md`
- 现状评估与后续工作：`src/reloc/assessment.md`
- 本文取代旧版本文中的 `0x08010000` / `0x08012000` / `0x08050000` 布局表。

## 1. 总览

GBA 卡带 ROM 映射在 `0x08000000`–`0x09FFFFFF`（32 MiB）。本作不做 ROM 到 RAM
的覆盖，代码和数据都就地读；运行时可写状态放 EWRAM/IWRAM，不参与本文模型。

```
0x08000000  +--------------------------------+
            | ROM header + .crt0 + .text     |  代码区
            | + .iwram_code LMA              |  大小不强制，上限 0x08100000
0x08100000  +--------------------------------+
            | .reloc                         |  reloc 区
            | fixed as size=0x20000          |  前 0x58 字节是 22 个单元格
0x08120000  +--------------------------------+  __reloc_map_end
            | kdata                          |  内核只读数据
            | .data + .rodata                |  大小不强制
            +--------------------------------+  __rodata_start
            | user data                      |  用户可定制数据
            | .gameinfo_data                 |  大小不强制
            | .content_data                  |
            +--------------------------------+  __rodata_end = ROM 文件尾
```

## 2. 分区

| 区 | 起点 | 大小 | 硬边界 |
|---|---|---|---|
| 代码区 | `0x08000000` | 不强制 | 必须 `<= 0x08100000` |
| reloc 区 | `0x08100000` | 固定 `0x20000` | `0x08120000` |
| kdata | `0x08120000` | 不强制 | 结束于 `__rodata_start` |
| user data | `__rodata_start` | 不强制 | `<= 0x0A000000` |

### 2.1 代码区

- `0x08000000` 是硬件固定的 ROM 头位置，不能挪；头之后是 `.crt0` 和 `.text`。
- `.iwram_code` 的 VMA 在 `0x03000000`，加载镜像（LMA）跟在 `.text` 后面，
  启动时由 `crt0` 拷到 IWRAM；这段 LMA 也算代码区。
- 代码区**不设固定大小**，但不得超过 `0x08100000`。超过就必须改 reloc 基址，
  那是一次 ABI 变更，不能悄悄发生。

### 2.2 reloc 区（固定 `0x20000`）

- 从 `0x08100000` 开始，长度固定 `0x20000`（128 KiB）。
- 前 `0x58` 字节是当前 22 个指针单元格（4 字节/项），其余是保留槽。
- 新增表直接往保留槽追加，不改基址、不移动 kdata。
- 128 KiB 可容纳 32768 个单元格；按现在的增长速度，这个上限不是瓶颈。
- reloc 区是**整块保留**的：即使只填了 `0x58` 字节，`0x08120000` 之前也不放
  任何别的东西。这样 kdata 的起点始终是 `0x08120000`，工具和链接脚本都不需要
  跟着单元格数量调整。
- 目标写法（当前 lds 只填了 `0x58` 字节，剩下的空洞地址上等价，但建议显式 pad）：

  ```ld
  RELOC_BASE = 0x08100000;
  RELOC_SIZE = 0x20000;

  .reloc RELOC_BASE : AT (RELOC_BASE)
  {
      KEEP(*(.rodata.reloc_list))
      . = RELOC_BASE + RELOC_SIZE;
  } >rom = 0xff

  __reloc_map_start = RELOC_BASE;
  __reloc_map_end   = RELOC_BASE + RELOC_SIZE;
  __krodata_start   = __reloc_map_end;
  ```

### 2.3 kdata

- 从 `0x08120000` 开始，收 `*(.data*)` 和 `*(.rodata*)`。
- 大小**不强制**：随内核代码和数据增长，链接器自然往后排。
- 结束位置就是 `__rodata_start`。它是链接期符号，不是固定常量；外部工具
  要读符号表或 reloc 表头，不能硬编码。

### 2.4 user data

- 紧接 kdata，起点 `__rodata_start` 由链接器给出。
- 收 `.gameinfo_data`（`GAMEINFO_DATA`）和 `.content_data`（`CONTENT_DATA`）。
- 大小**不强制**：用户可以继续往 ROM 尾部追加，只要不超过 `0x0A000000`。
- `__rodata_end` 通常就是 ROM 文件尾。二次修改时把新表写在它后面即可，
  不需要扩展现有段。
- 如果将来要对外发布 "内核 ROM + 独立数据包"，才需要把 `__rodata_start`
  固定成常量；那是另一种发布模型，见 5.3。

### 2.5 段归属规则

- 用户可定制的数据必须显式标 `GAMEINFO_DATA` 或 `CONTENT_DATA`；
- 只写 `const` 或 `CONST_DATA` 会落到 kdata，用户无法搬移；
- 代码自带资源（UI 图、技能特效等）应留在 kdata，不要放 `.content_data`，
  否则会制造内核直接引用。

### 2.6 边界必须可检查

设计上要求链接期断言，不能靠人肉记住：

```ld
ASSERT(__text_end <= __reloc_map_start,
       "text overflows reloc area")
ASSERT(__iwram_code_lma_end <= __reloc_map_start,
       "iwram image overflows reloc area")
ASSERT(__reloc_map_size == 0x20000,
       "reloc area must stay 0x20000")
ASSERT(__krodata_start == __reloc_map_end,
       "kdata must start right after reloc area")
ASSERT(__krodata_end == __rodata_start,
       "user data must follow kdata")
ASSERT(__rodata_end <= 0x0A000000,
       "rom overflow")
```

`__reloc_map_size` 不是现成符号，需要先在脚本里定义，例如
`__reloc_map_size = SIZEOF(.reloc);`，或者直接用常量 `RELOC_SIZE`。

## 3. 地址稳定性

| 地址/符号 | 是否 ABI | 说明 |
|---|---|---|
| `0x08000000` ROM 头 | 是（硬件） | GBA 规定 |
| `0x08100000` reloc 基址 | 是 | 工具和代码都按它取单元格 |
| 单元格偏移（`0x00`–`0x54`…） | 是 | 只能追加，不能插入/重排 |
| `0x08120000` kdata 基址 | 是 | 由 reloc 区固定大小推出 |
| kdata 大小、表地址 | 否 | 随构建变化 |
| `__rodata_start` | 否（当前） | 随 kdata 变化；固定基址是另一套发布模型 |
| user data 大小、表地址 | 否 | 用户可改 |

结论：对外部工具而言，**只有 `0x08100000` 和单元格偏移是常量**。
表地址一律从单元格读，`__rodata_start` 一律从符号表或表头读。

## 4. 访问模型

```
内核代码 --(常量 0x08100000 + 偏移)--> 单元格 --(链接期填入)--> 根表 --> 数据
```

- 编译器在代码里常量化的只是**单元格地址**，不是表地址。
- 单元格内容在 ROM 里，二次修改时改这 4 字节即可，不需要改代码。
- 没有 MMU，所谓 "隔离" 是链接期约定 + 检查，不是硬件保护。

## 5. 扩展规则

### 5.1 新增一张可定制表

在 reloc 区末尾追加一个单元格，kdata / user data 的基址都不变。
操作步骤见 `src/reloc/README.md`。

### 5.2 新增一个分区

必须重新定义 ABI：更新本文、更新 `lds`、更新外部工具，并保证
`0x08100000` / `0x08120000` 不变，或接受一次全量工具迁移。
不允许在 reloc 区和 kdata 之间"临时"插一段。

### 5.3 是否固定 user 基址

| 方案 | 优点 | 代价 |
|---|---|---|
| 动态（当前） | 省 ROM，kdata 想长多大就长多大 | `__rodata_start` 每次构建都可能变，工具必须读符号 |
| 固定（例如 `0x08600000`） | 数据包地址稳定，可硬编码 | 中间留洞；kdata 有上限；需要重新划分预算 |

在没有"内核和数据分开发布"的需求前，保持动态即可。

### 5.4 空间预算

2026-11-16 构建实测（仅用于说明量级）：

| 项 | 值 |
|---|---|
| 代码区结束 | `0x08081FB0`（距上限约 500 KiB） |
| reloc 区 | `0x08100000`–`0x08120000`，已用 `0x58` |
| kdata | `0x08120000`–`0x084BC148`，约 3.6 MiB |
| user data | `0x084BC148`–`0x088FD450`，约 4.25 MiB |
| ROM 文件 | 9,426,000 B，距 32 MiB 上限约 23 MiB |

## 6. 与旧版本文档的关系

旧版 `sections.md` 的 `0x08010000` / `0x08012000` / `0x08050000` 已被本文取代。
旧版里 "gamedata 要声明成 `CONTENT_DATA`" 的提醒保留在 2.5。
