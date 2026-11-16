# reloc 数据隔离：现状评估与后续工作

本文记录 2026-11-16 对 reloc 方案的审计结果、风险和后续工作。
地址模型见 `docs/sections.md`，开发规范见 `src/reloc/README.md`。

## 1. 摘要

方案方向正确：GBA 没有 MMU，ROM 只读且就地执行，EWRAM 只有 256 KiB，
做不了运行时重定位。用固定地址的指针单元格 + ROM 尾部连续数据区解耦，
是成本最低的做法。

但当前实现只完成了 "根表基址可搬"，离 "用户改数据不用动程序" 还有距离：

1. 10 个用户区符号（11 处取值）仍被内核代码直接引用；
2. `gpSkillInfo` / `gpIndividualAnimConf` 两个单元格指向 kdata，间接层没有意义；
3. 用户区内部存在大量绝对指针，搬移只能整区按 delta 重写；
4. reloc 区没有表头、没有断言，外部工具只能靠符号表猜布局。

## 2. 布局与预算

设计目标（`docs/sections.md`）：reloc 区固定 `0x08100000`–`0x08120000`
（`0x20000`），kdata 从 `0x08120000` 起，kdata 和 user data 大小不强制。

当前实现只填了 reloc 区的前 `0x58` 字节，`0x08100058`–`0x08120000` 是空洞。
地址上等价，但建议按设计把 `.reloc` 显式 pad 到 `0x20000`。

| 项 | 实测 |
|---|---|
| 代码区结束 | `0x08081FB0`（距 `0x08100000` 约 500 KiB） |
| reloc 已用 | `0x58`（22 项） |
| kdata | `0x08120000`–`0x084BC148`（约 3.6 MiB） |
| user data | `0x084BC148`–`0x088FD450`（约 4.25 MiB） |
| ROM 文件 | 9,426,000 B |

## 3. 审计结果

### 3.1 内核直接引用用户区（高优先级）

扫描 `fe6re.elf` 的 PC 相对字面池，命中 33 个 4 字节字，涉及 10 个符号
（11 个不同取值）。这是代码直接取地址的部分，不排除经内核数据表间接引用：

| 符号 | 引用者 | 修法 |
|---|---|---|
| `UnitSpriteTable` | `UseUnitSprite`、`RefreshUnitSprites`；`include/unitsprite.h` 的 `GetUnitSpriteInfo()` 宏 | 加 `gpUnitSpriteTable`，改宏 |
| `gMusicPlayerTable` | `PlaySeSpacial`（`src/Common/sound/m4a.c`）、`vanilla/util.c:1670`、`vanilla/banim_efxsound.c:115` | 加 `gpMusicPlayerTable` |
| `dummy_song` | `PlayBgmSong28` 等（`vanilla/eventfunctions.c`） | 加单元格；`BgmAutoDetection.c:22` 的 `&dummy_song` 比较改为比较索引 |
| `TextGlyphs_System` | `SetTextFontGlyphs`（`vanilla/text.c:119`） | 加 `gpTextGlyphs_System` |
| `TextGlyphs_Talk` | 同上 | 加 `gpTextGlyphs_Talk` |
| `AnimScr_EfxSkillBoxIconRight` | `EfxSkillBoxOnDraw`（`src/Common/banim/C07/efxskillbox.c`） | 资源移回 kdata |
| `AnimScr_EfxSkillBoxIconLeft` | 同上 | 同上 |
| `AnimScr_EfxSkillBoxNameRight` | 同上 | 同上 |
| `AnimScr_EfxSkillBoxNameLeft` | 同上 | 同上 |
| `Img_EfxSkillBoxBG` | 同上 | 同上 |

最后 5 个是 `src/Common/banim/C07/efxskillboxfx.s` 标成
`.content_data.skillsys` 的代码资源，不是给用户定制的，移回内核 `.rodata`
即可。

### 3.2 两个单元格指向 kdata（中优先级）

- `gameinfo/skillsys/skill-info.c:7`：`gSkillInfo` 缺 `GAMEINFO_DATA`；
- `gameinfo/banim/individual_anim.c:9`：`gIndividualAnimConf` 缺 `GAMEINFO_DATA`。

修法：补段属性；不打算让用户改就删掉单元格，避免误导。

### 3.3 用户区内部的绝对指针（中优先级）

- `ChapterAssets[]` 的元素指向 `.content_data` 里的图像/地图；
- `gSongTable[]` 的元素指向 `dummy_song` 和各首 `Song_*`；
- `gAffinIcons[]` 的元素指向 `GFX_AffinIcon_*`；
- `PInfoTable[].support_info` 指向 kdata 的 `SupportInfo_Roy`：kdata 基址固定
  （`0x08120000`），指针本身不会失效，但支持对话数据因此不可定制。

这些指针在 "整区搬移 + 统一 delta" 时能修，但需要工具知道哪些字是指针；
随机扫描会误伤压缩数据。见第 5 节。

### 3.4 reloc 区没有自描述信息（中优先级）

- 没有 magic/version/count；
- 没有 `user_start`/`user_end`；
- 没有 reserved 槽（设计上整块 `0x20000` 是保留的，但 ABI 上没有声明）；
- `pr_PInfoTable` 在偏移 0，和 `__reloc_map_start` 同址，在 `.sym` 里遮住符号名。

建议表头（只给工具看，内核不读）：

```
+0x00  u32  magic      'F6RL'
+0x04  u16  version    = 1
+0x06  u16  count
+0x08  u32  user_start
+0x0C  u32  user_end
+0x10  ...  单元格 ...
```

代价是单元格整体后移 `0x10`，内核重新链接即可；外部工具按符号名走的不受影响。

### 3.5 段边界没有断言（中优先级）

`lds/gba_cart.lds` 用 `0x100000` / `0x120000` 作为 reloc 和 kdata 基址，
没有 `ASSERT`。代码长过 1 MiB 时是否报错取决于 ld 的重叠检查，不应依赖。
需要的断言列表见 `docs/sections.md` 2.6。

### 3.6 旧布局文档（已修正）

旧版 `docs/sections.md` 写的是 `0x08010000` / `0x08012000` / `0x08050000`，
和实现不一致。2026-11-16 已按实测布局重写为内存模型文档（含 reloc 区
固定 `0x20000` 的设计）。后续只需保证改 `lds` 时同步更新它。

归档的旧值见附录 C。

## 4. 风险分级

| 级别 | 风险 | 后果 |
|---|---|---|
| 高 | 直接引用（3.1） | 用户搬表后静默读旧地址，表现为 "改了没生效" 或随机崩溃 |
| 中 | 表内绝对指针（3.3） | 整区搬移时容易漏改或误改 |
| 中 | 无构建检查 | 新增表时再次引入直接引用，问题延迟到用户侧暴露 |
| 低 | 无表头/版本 | 工具只能靠符号表，跨版本兼容性差 |
| 低 | 文档与 `lds` 脱节 | 新工具按过期地址开发（已修正一次，需要持续同步） |

## 5. 二次修改的操作边界

| 操作 | 是否安全 | 条件 |
|---|---|---|
| 原地改内容（尺寸不变/变小） | 安全 | 表项布局匹配 |
| 表变大，追加到 ROM 尾部，改单元格 | 安全 | 没有别的数据指向旧表 |
| 只搬一张表，不动其他 | 有条件安全 | 表内指针不指向被搬走的数据 |
| 整区搬移 + 统一 delta | 有条件安全 | 能准确识别区内所有绝对指针 |
| 在用户区中间插入/删除字节 | 不安全 | 后续地址全部移位，没有 fixup 表 |
| 重排/重新打包用户区 | 当前不支持 | 需要完整 fixup 描述 |

整区 delta 的具体步骤见附录 A。

## 6. 后续工作

### P0（先做，直接消除静默错误）

1. 修 3.1 的 10 个符号（11 处取值）：
   - 5 个 `EfxSkillBox` 资源移回 kdata；
   - 5 个数据表加单元格并改调用点。
   验收：`objdump` 扫描不再有用户区命中的 `.word`。
2. 给 `gSkillInfo` / `gIndividualAnimConf` 补 `GAMEINFO_DATA`，或删单元格。
   验收：22 个单元格目标全部落在 `[__rodata_start, __rodata_end)`。
3. 在 `lds` 里加 `RELOC_SIZE = 0x20000` 和 `docs/sections.md` 2.6 的断言。
   验收：故意把 `.text` 撑过 1 MiB 时链接失败。

### P1（把纪律变成构建检查）

1. 加 reloc 表头（3.4），保留 reserved 槽。
2. 构建生成 `reloc.manifest`：偏移、符号名、目标地址、`__rodata_start`、
   `__rodata_end`。外部工具和 `fe6extract` 共用。
3. 写 `tools/scripts/check-reloc.py`，至少检查：
   - 每个单元格目标在用户区；
   - 代码区字面池不含用户区地址；
   - `__rodata_end <= 0x0A000000`；
   - 单元格数量与 manifest 一致。

   挂到 `make all`，违反即失败。

### P2（工具与兼容性）

1. `fe6extract` 增加 `reloc` 子命令：列出/改写单元格，校验目标区间。
2. 提供整区 delta 搬移工具，输入是 manifest 里的指针字段描述，而不是盲目扫描。
3. 用 emulator 加一条回归：改单元格 → 进游戏 → 读新表。
4. 决定是否固定 `__rodata_start`（发布模型，见 `docs/sections.md` 5.3）。
5. 让 `lds` 里的 `RELOC_SIZE` 与 `docs/sections.md` 的常量一一对应，
   避免文档和脚本各写一份。

## 7. 备选方案对比

| 方案 | 做法 | 优点 | 缺点 |
|---|---|---|---|
| A. 固定地址 | 所有用户表固定在 ROM 某段 | 零间接、零工具 | 任何表变大都要重链接/重排 |
| B. 指针表 + 尾部区（当前） | 22 个单元格指向根表 | 成本低；换大表只改 4 字节；尾部可追加 | 区内绝对指针仍需处理；依赖纪律 |
| C. 数据偏移化 | 表内引用改成相对基址的偏移 | 真正位置无关，可任意打包 | 要改结构体和所有解析代码 |
| D. 完整 fixup 表 | 每个指针字段登记重定位信息 | 可任意重排，工具全自动 | 需要数据描述文件/生成器 |

结论：现阶段 B 合适，先把 P0/P1 做完；C/D 在 manifest 稳定后再评估。

## 附录 A：整区 delta 搬移

1. 记下旧基址 `old_base = __rodata_start`，旧界 `old_end = __rodata_end`；
2. 整块复制到 `new_base`，`delta = new_base - old_base`；
3. 把指向用户区的单元格（当前 20 个）加 `delta`；
4. 扫描 `[new_base, new_end)` 的 4 字节字，落在 `[old_base, old_end)` 的加
   `delta`。这一步会误伤压缩数据里的巧合值，必须用 manifest 的指针字段
   描述做白名单，不能直接对任意 ROM 使用。

## 附录 B：审计方法

```sh
# 1) 取用户区边界
arm-none-eabi-nm -n fe6re.elf | grep -E '__rodata_start|__rodata_end'

# 2) 反汇编；代码引用的地址都以 .word 形式出现在字面池里
arm-none-eabi-objdump -d fe6re.elf > /tmp/fe6re.dis

# 3) 找出字面池里落在用户区的 .word
grep -E '\.word\s+0x08[4-8]' /tmp/fe6re.dis | sort -u
```

第 3 步会把用户区内部的数据也列出来（数据区同样有 4 字节对齐的字），
所以正式检查要按符号范围过滤，或直接用 P1 的脚本。

## 附录 C：旧布局对照（归档）

旧版 `docs/sections.md` 的表格与实现不符，重写前的值记录在此，供查旧工具：

| 旧文档 | 当前实际 |
|---|---|
| `.rodata.reloc_list` 在 `0x08010000` | `0x08100000` |
| 内核 `.data`/`.rodata` 在 `0x08012000` | `0x08120000` |
| banimdata/gameinfo 在 `0x08050000` | 游戏数据从 `0x084BC148` 起，随 kdata 变化 |
