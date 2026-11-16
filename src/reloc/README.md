# src/reloc — 数据隔离开发指南

这个目录只有一件事：定义内核到用户数据（user data）的**指针单元格**。
内核代码不直接引用用户区的表，而是通过这里的 4 字节绝对地址取表基址。
这样用户改表大小、把表搬到 ROM 尾部时，只需要改单元格，不需要动代码。

- 地址布局与分区规则：`docs/sections.md`
- 现状评估与后续工作：`assessment.md`

## 1. 机制

```
内核代码 --(0x08100000 + 偏移)--> 单元格 --(链接期填入)--> 根表 --> 数据
```

`Reloc.S` 里每一项就是一个单元格：

```asm
.section .rodata.reloc_list
.align 2, 0

.global pr_PInfoTable
pr_PInfoTable: .word PInfoTable

.global gpSongTable
gpSongTable: .word gSongTable
```

C 侧声明成 "指向 const 的 const 指针"：

```c
extern struct PInfo const *const pr_PInfoTable;
extern struct SongEnt const *const gpSongTable;
```

消费者只写 `gpSongTable[...]`，不写 `gSongTable[...]`。编译器会把
`0x08100000 + 偏移` 编进字面池，单元格内容留给链接器和 ROM 修改者。

命名约定：

- `gp_`：global pointer，新表统一用它；
- `pr_`：早期三张表的命名（`PInfo` / `JInfo` / `IInfo`），语义同 `gp_`，
  保留是为了不改历史符号。

## 2. 新增一张可定制表

以 `FooTable` 为例，六步。

### 2.1 定义数据，放进用户区

数据必须落在 `.gameinfo_data` 或 `.content_data`，否则会进 kdata，
指针表就失去意义：

```c
/* gameinfo/foo.c */
#include "prelude.h"
#include "foo.h"

GAMEINFO_DATA struct Foo const FooTable[] = {
	...
};
```

- 纯数据表用 `GAMEINFO_DATA`；资源/图像/脚本类用 `CONTENT_DATA`。
- 只写 `const` 或 `CONST_DATA` 会落到 kdata（0x08120000 起），不要用错。

### 2.2 在头文件里声明单元格

```c
/* include/foo.h */
extern struct Foo const *const gpFooTable;
```

放在消费者都包含的头文件里，避免每个 `.c` 各写一份 `extern`。

### 2.3 在 Reloc.S 末尾追加单元格

```asm
/* src/reloc/Reloc.S 末尾 */
.global gpFooTable
gpFooTable: .word FooTable
```

**只能追加**。单元格偏移是外部工具的 ABI：在中间插入会让之后所有偏移
平移，基于旧偏移的工具会改错单元格。

### 2.4 改所有消费者

把 `FooTable` 的直接引用全部换成 `gpFooTable`：

```c
/* before */
return FooTable[id];

/* after */
return gpFooTable[id];
```

改完用第 5 节的命令确认代码里不再出现 `FooTable` 的绝对地址。

### 2.5 处理表内指针

如果 `FooTable` 的元素本身是指针（例如指向图像、字符串、另一张表），
先确认它指向的数据不会被单独搬走。当前方案只保证**根表基址**可搬，
不保证表内指针跟着走。详细规则见 `assessment.md` 的 "操作边界"。

### 2.6 重新链接并检查

```sh
export DEVKITPRO=/opt/devkitpro DEVKITARM=/opt/devkitpro/devkitARM
make all

# 只验证符号时，链接出 fe6re.elf 就够了
make fe6re.elf

# 1) 单元格在 reloc 区
arm-none-eabi-nm fe6re.elf | grep gpFooTable
# 期望：0x081000xx R gpFooTable

# 2) 表在用户区
arm-none-eabi-nm fe6re.elf | grep ' FooTable$'
# 期望：__rodata_start <= 地址 < __rodata_end

# 3) 代码没有直接引用（见 5.2 的扫描）
```

## 3. 红线

1. **单元格只能定义在 `Reloc.S`。** 不要在 C 里定义同名对象；编译器
   可能把 C 定义处的初值当作常量传播，绕过指针表。
2. **不要在中间插入、删除或重排单元格。** 只追加。
3. **内核代码不得直接引用用户区符号。** 包括取地址、数组下标、字符串常量、
   函数参数里的 `&FooTable`。一旦有直接引用，用户搬表后会静默读到旧地址。
4. **不要用 `&symbol` 做身份比较。** 例如 `song == &dummy_song`；表被搬走后
   比较结果会变。需要身份判断时比较索引或显式 ID。
5. **不要把代码自带资源放进 `.content_data`。** 技能特效图、UI 图这类
   只给代码用的资源应留在 kdata，不然会制造新的直接引用。
6. **不要在头文件里用宏直接取表地址。** 例如
   `#define GetFoo(i) (FooTable[(i)])`；必须经 `gpFooTable`。

## 4. 当前 ABI 清单

`0x08100000` 起，每项 4 字节。目标地址随构建变化；工具必须从表里读，
不能硬编码。新增项只能往后排。

| 偏移 | 符号 | 目标 | 区域 |
|---|---|---|---|
| `0x00` | `pr_PInfoTable` | `PInfoTable` | user |
| `0x04` | `pr_JInfoTable` | `JInfoTable` | user |
| `0x08` | `pr_IInfoTable` | `IInfoTable` | user |
| `0x0C` | `gpImg_Icons` | `Img_Icons` | user |
| `0x10` | `gpPal_Icons` | `Pal_Icons` | user |
| `0x14` | `gpAffinIcons` | `gAffinIcons` | user |
| `0x18` | `gpMountIcons` | `gMountIcons` | user |
| `0x1C` | `gpWTypeIcons` | `gWTypeIcons` | user |
| `0x20` | `gpJobGrowthList` | `gJobGrowthList` | user |
| `0x24` | `gpChapterInfoTable` | `ChapterInfoTable` | user |
| `0x28` | `gpChapterAssets` | `ChapterAssets` | user |
| `0x2C` | `gpSongTable` | `gSongTable` | user |
| `0x30` | `gpUnitMaxStatusConfigTable` | `gUnitMaxStatusConfigTable` | user |
| `0x34` | `gpSkillPTable` | `gSkillPTable` | user |
| `0x38` | `gpSkillJTable` | `gSkillJTable` | user |
| `0x3C` | `gpImg_StatScreenSprites` | `Img_StatScreenSprites` | user |
| `0x40` | `gpPal_StatscreenPageNameFlashing` | `Pal_StatscreenPageNameFlashing` | user |
| `0x44` | `gpSkillExtraInfo` | `gSkillExtraInfo` | user |
| `0x48` | `gpSkillInfo` | `gSkillInfo` | **kernel（待修）** |
| `0x4C` | `gpIndividualAnimConf` | `gIndividualAnimConf` | **kernel（待修）** |
| `0x50` | `gpSysConfig` | `gSysConfig` | user |
| `0x54` | `gpImg_MapAnimSKILL` | `Img_MapAnimSKILL` | user |

`0x48` / `0x4C` 的目标落在 kdata，因为定义处漏了 `GAMEINFO_DATA`；
评估文档的 P0 清单里有这两项。

## 5. 自检

### 5.1 常用命令

```sh
# 单元格地址
arm-none-eabi-nm -n fe6re.elf | grep -E '^0810'

# reloc 区内容（当前只有前 0x58 字节）
arm-none-eabi-objdump -s -j .reloc fe6re.elf

# 用户区边界
arm-none-eabi-nm fe6re.elf | grep -E '__rodata_(start|end)|__krodata'

# 表落在哪个区
arm-none-eabi-nm -n fe6re.elf | grep -E ' FooTable$'
```

### 5.2 直接引用扫描

在链接后的 ELF 上扫 PC 相对字面池，凡是落在
`[__rodata_start, __rodata_end)` 的 `.word` 都说明有直接引用：

```sh
arm-none-eabi-objdump -d fe6re.elf \
  | grep -E '\.word\s+0x08[4-8]' \
  | sort -u
```

这是粗查，会把用户区内部的数据也列出来；正式检查应由
`tools/scripts/check-reloc.py` 按符号范围做（该脚本待实现，见评估文档 P1）。

### 5.3 map 文件

```sh
grep -A3 '\.reloc' fe6re.map
grep -n '__rodata_start' fe6re.map
```

## 6. 常见错误

| 症状 | 原因 | 修法 |
|---|---|---|
| `gpFooTable` 指向 `0x081xxxxx` | 定义漏了 `GAMEINFO_DATA` | 补段属性，重新链接 |
| 改表大小后游戏仍读旧内容 | 有直接引用，或单元格没改 | 按 5.2 扫描；改所有消费者 |
| 外部工具改到了错误的表 | 在中间插入/重排了单元格 | 撤销重排，只追加；必要时升版本 |
| 搬表后字符串/图像乱码 | 表内绝对指针没跟着改 | 原地改内容，或整区 delta 搬移 |
| 单元格值为 0 或未定义 | 符号拼错、目标未参与链接 | 检查 `nm` 和链接脚本 |
| 链接报段重叠 | 代码超过 `0x08100000` | 缩代码或按 ABI 变更流程改基址 |
| 游戏在改表后崩溃 | 表项宽度/长度与消费者不一致 | 对照结构体 `sizeof` 和数组长度 |

## 7. 提交前检查

- [ ] 新表用 `GAMEINFO_DATA` / `CONTENT_DATA`，`nm` 确认在用户区；
- [ ] 单元格追加在 `Reloc.S` 末尾，偏移没有变动；
- [ ] 所有直接引用已改成 `gpXxx`；
- [ ] 5.2 的扫描没有新增命中；
- [ ] 表内指针已确认指向稳定数据，或已在评估文档登记；
- [ ] 更新第 4 节的 ABI 清单（如果新增了单元格）。

## 8. 相关文档

- `docs/sections.md`：分区、边界、地址稳定性和空间预算（内存模型权威来源）；
- `assessment.md`：现状审计、风险、P0/P1/P2 工作项；
