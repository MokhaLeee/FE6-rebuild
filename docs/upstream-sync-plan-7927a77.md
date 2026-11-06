# 上游同步排期：fe6 `977cbd5` → `7927a77`

> 生成于 2026-11-06，只做排期与风险评估，不含代码改动。当前同步状态见 `docs/upstream-sync.md`。

## 0. 结论

上游这一轮是 **45 个 commit / 17 个 PR / 742 个文件（+9173 −5704）**，但其中 469 个文件是 `#130` 的立绘素材，真正的代码改动集中在 9 个「命名 PR」上。

- **命名/重构部分可以按模块切成 4 批（批 1–4）**，每批独立可构建、可验证；
- `#130`（PNG 立绘管线）是独立特性，和命名批互不干扰；
- `#118`（批量删 `#include`）、`#148–#150`（banim 寄存器 pin 清理）放最后，属于可选优化；
- `#139`（soundroom）本仓库没有对应模块，**整批跳过**。

## 1. 这一轮上游改了什么

| PR | 内容 | 文件 | 目标模块在本仓库 |
|---|---|---|---|
| #130 | 立绘改为 PNG/pal 源文件 + Makefile 规则（467 个素材） | 469 | `vanilla/face_img.s` 仍是 ROM incbin |
| #134 | augury 函数/数据/枚举/字段命名、magic number 常量 | 4 | `vanilla/augury.c`（与上游基线一致） |
| #135 | 战绩（play rank）等级枚举修正、符号与字段命名 | 6 | `vanilla/playrank.c`（有本地裁剪） |
| #136 | helpbox_2 命名（函数/Proc/数据/字段）+ TODO 清理 | 14 | `vanilla/helpbox_2.c`（有本地合并） |
| #137 | helpbox_2 的 fakematch 控制流改写成普通 C | 1 | 同上 |
| #138 | helpbox_2 拆成 `helpbox_display.c` / `helpbox_alt.c` / `helpdialogue.c` | 6 | 需要新建 3 个文件 |
| #118 | 全局删掉约 1048 行未使用 `#include` | 249 | 对应文件大多存在但目录不同 |
| #139 | soundroom 命名 | 5 | **无 `soundroom.c` / `soundroom.h` / `xmap.c`** |
| #140 | titlescreen 命名 | 6 | `vanilla/titlescreen.c` 基本一致 |
| #147 | prep_menuscrollbar 命名 | 2 | 基本一致 |
| #141 | `prep_subitemscreen_disp` 命名，把 `prepscreenfx*.c` 的 770 行搬进新文件 | 8 | `prepscreenfx.c`/`prepscreenfx2.c` 与上游基线接近 |
| #142 | prepscreen_disp 命名 | 7 | 基本一致 |
| #144 | `code_0802B814` → `commandflags`，新建头文件 | 5 | 文件与上游基线一致 |
| #148 | `EkrMainMini_C0D_ExecNextRoundAfterAttack` 去寄存器 pin | 1 | 本仓库 banim 代码改动较大 |
| #149 | `EfxAdvanceFrameLut` 去寄存器 pin、去临时变量 | 1 | 同上，且本仓库签名是 `void *` |
| #150 | `BattleAIS_ExecCommands` 去寄存器 pin | 1 | 同上 |
| #151 | debugmenu / menuinfo 命名 | 4 | 与上游基线几乎一致 |

## 2. 适配性实测

方法：把每个 PR 的 `git diff <merge>^1 <merge>` 逐文件对「本仓库对应文件」做 `patch -l --dry-run`（路径映射：`src/` → `vanilla/`，`data/` → `vanilla/data/`，`include/` → `include/`，查不到的再按文件名兜底）。

| PR | 文件数 | 可直接打 | 有冲突 | 新建文件 | 无对应 |
|---|---|---|---|---|---|
| #151 | 4 | 3 | 1（`debugmenu.c`） | 0 | 0 |
| #147 | 2 | 1 | 1（`prep_menuscrollbar.c`） | 0 | 0 |
| #142 | 7 | 5 | 1（`prep_img.s`） | 0 | 1 |
| #144 | 5 | 1 | 1（`unknown_funcs.h`） | 2 | 1 |
| #134 | 4 | 2 | 2（`rodata.s`、`augury.h`） | 0 | 0 |
| #135 | 6 | 3 | 3（`rodata.s`、`playrank.h`、`playrank.c`） | 0 | 0 |
| #136 | 14 | 6 | 6 | 0 | 2（soundroom/xmap） |
| #137 | 1 | 0 | 1 | 0 | 0 |
| #138 | 6 | 0 | 2 | 3 | 1 |
| #141 | 8 | 2 | 4 | 1 | 1 |
| #140 | 6 | 3 | 3（`opanim6.s`、`unknown_objects.h`、`titlescreen_img.s`） | 0 | 0 |
| #130 | 2 | 1（Makefile） | 1（`face_img.s`） | 0 | 0 |
| #118 | 249 | 219 | 15 | 0 | 15 |
| #139 | 5 | 0 | 2 | 0 | 3 |
| #148/#149/#150 | 1 each | 0 | 1 | 0 | 0 |

注意两点：

1. 「有冲突」不代表要重写，绝大多数是 1–10 行的本地差异（例如 `gpChapterInfoTable` 间接层、`#if !NONMATCHING` 已删、`.align 2,0` 已加），按上游最终文件手工对一下即可。
2. `#136 → #137 → #138`、`#141 → #142` 是同一文件链上的连续改动，**冲突数字要按「链」看**，单打后一个必然大面积失败。

## 3. 分批方案

### 批 0 —— 基线（约 0.5h）

```bash
git switch -c sync/7927a77
make clean && make all                      # 确认基线可构建、无新增 warning
sha1sum fe6re.gba > /tmp/base.sha1          # 改前 ROM 指纹
cp fe6re.sym /tmp/base.sym 2>/dev/null      # 若产物存在
./tools/emu/run-tests.sh                    # 全量 5 个用例
```

### 批 1 —— 零依赖小模块（约 1h）

| 顺序 | PR | 说明 |
|---|---|---|
| 1 | #151 | `vanilla/debugmenu.c` + `include/debugmenu.h` + `menuinfo.*`；29 个全局符号。3 个文件可直接打，`debugmenu.c` 只有 1 个 hunk 冲突（offset 9 行） |
| 2 | #147 | `Sprite_08679578/08679580/08679590/08679598` → `Sprite_MenuScroll*`、`MenuScrollBarProc` 字段、`SetPrepMenuScrollBarBaseInfo` 参数名、`MENUSCROLL_*` 常量。改动全部落在 `prep_menuscrollbar.c` + `prepscreen.h` |
| 3 | #144 | `git mv vanilla/code_0802B814.c vanilla/commandflags.c`，新建 `include/commandflags.h`，从 `include/unknown_funcs.h` 删 9 条外链，改 `eventfunctions.c` 3 处调用点 |

验证：`make all` + `.sym` 同名地址不变 + `run-tests.sh --quick`。

### 批 2 —— augury + playrank（约 2h，注意语义陷阱）

顺序：**#134 先，#135 后**（#134 的 augury 用 `PLAYRANK_MAX` 作数组长度，值 7，与原来的字面量 `[7]` 一致，不会改尺寸）。

- #134：28 个全局符号（`func_fe6_0808D*`、`AuguryMsgs0-6`、`Proc_0868AFF0_*`、`gAuguryChoice→gAuguryHandState`、`AUGURY_CHOICE_*→AUGURY_HAND_*`）+ videoalloc 常量。`src/augury.c` 可直接打，`include/augury.h` 与 `data/rodata.s` 各 1 处冲突。
- #135：46 个全局符号 + `PlayRankSt` 字段（删 `unk_32/unk_34`、`unk_5E→disp_grades`、`unk_7A→STRUCT_PAD`）+ `Pal_08342A98→Pal_GoldHighlight` 等素材标签。

**最大的坑：等级枚举不是简单前缀替换。**`PALYRANK_D/C/B/A`（值 0..3）在数据结构里其实对应新的 **E/D/C/B**（原枚举少写了 E，还漏了 S/SS）。另外 `PALYRANK_MAX`（等级上限，旧值 4）不能改名叫 `PLAYRANK_MAX`——`PLAYRANK_MAX` 在本仓库已存在，是 `enum PlayRankSt_ranks`（战术/战斗/生存/经验/资产/战力）的上限（值 7），语义完全不同。正确做法：按位置映射 `D→E/C→D/B→C/A→B`，`PALYRANK_MAX→PLAYRANK_GRADE_MAX`，`PALYRANK_S` 单独确认；数组长度原来写死在 `7` 的地方顺手换成 `PLAYRANK_GRADE_MAX`。

- `PlayRankGetter_XmapTactics` 在本仓库被剪成 `return 0;`（没有 xmap），移植时保留本地裁剪，只跟符号改名。
- `ChapterInfoTable` 在本仓库走 `gpChapterInfoTable` 间接层，合并时保留。

验证：`make all`；进游戏看「战绩」画面（章节中/章末评价）和 augury 占卜屋各选项；`run-tests.sh` 全量。

### 批 3 —— helpbox 三连（约 4h，必须一次做完）

`#136 → #137 → #138` 改的是同一条文件链，中间状态不可构建，建议作为一次提交（或至少一次分支内连续提交、一起验证）。

- #136：51 个全局符号 + `HelpBoxProc` / `HelpBoxSt` 字段；调用点散落到 `eventfunctions.c`、`statusscreen.c`、`sioerror.c`、`bmio_img.s`、`statscreen_img.s`、`gameinfo/chapterinfo/event_scripts/tutorial.c`。
- 本仓库本地差异要保留：`helpbox_2.c` 已经把上游的 `func_fe6_08070E` + `func_fe6_08070EEC` 合并成 `LoadHelpBoxGfx`（没有 `LoadHelpBoxGfxTwoLines`），字段仍是 `unk_30`，且删掉了 `#if !NONMATCHING` 分支。**#138 拆分时不要顺手把 `LoadHelpBoxGfxTwoLines` 加回来**（上游也没人调用）。
- `prep_subitemscreen.c` 在本仓库已拆成 `prep_subitemscreen.c` + `prep_subitemscreen1.c` + `prep_subitemscreen3.c` + `prep_subitemscreen_viewall.c`，上游只改了其中一个文件的调用点，合并时四个文件都要 grep。
- 跳过 `soundroom.c` / `xmap.c` 的调用点（本仓库没有）。
- 事件脚本文件打完补丁后，**新增行的 4 空格缩进要归一化成 tab**（`patch -l` 只忽略匹配，不忽略写入）。
- #138：拆成 `helpbox_display.c`（392 行）/ `helpbox_alt.c`（259）/ `helpdialogue.c`（634），`helpbox_2.c` 删除。本仓库 `.text` 是通配，**不用改 `lds/`**；三个新文件没有 `EWRAM_OVERLAY(0)` 数据，`gHelpBoxSt` 走 `EWRAM_DATA` + `*(ewram_data)` 通配，也不需要进 `section_ewram_ov0.lds`。

验证：`make all`；游戏中打开任意帮助框（武器说明、道具说明、教程对话、战场对话）逐一看；`run-tests.sh` 全量。注意 #138 是文件拆分，符号会换 object，**这一批不要求 `.sym` 地址不变**，只要求构建通过 + 功能正常。

### 批 4 —— prep 链（约 3h）

顺序 `#141 → #142`。

- #141：把 `vanilla/prepscreenfx.c`（492 行）+ `prepscreenfx2.c`（286 行）里约 770 行搬到新建的 `vanilla/prep_subitemscreen_disp.c`，并改名 23 个全局（`PrepItemDesc_*`、`PrepTradeFx_*`、`PrepViewAllFx_*`、`PrepSupplyFx_*`、`PrepSubItem_*`、`Tm_Offset_Inline`）。
  - 已核对：这些定义目前都在 `prepscreenfx*.c`，搬走不会和本仓库的 `prep_subitemscreen1/3/viewall.c` 重复定义。
  - 新建文件会被 Makefile 的 `find` 自动收进来，不需要改 `lds/`。
- #142：主要是 `struct PrepUpperDispProc → struct ProcPrepUpperDisp` 及 `unk_29..unk_33` 等字段命名，外加少量函数名；改动集中在 `prepscreen_disp.c`，还有 `prepmenu.c` / `prepmenuitem.c` / `prep_img.s` 的调用点。7 个文件里 5 个可直接打，是这批里最省事的。

验证：准备画面各子界面（物品、运输队、交易、丢弃、查看全部）依次点开；`run-tests.sh` 全量。和 #138 一样，#141 搬了代码，不要求 `.sym` 地址不变。

### 批 5 —— 立绘 PNG 管线 #130（约 2h，独立特性）

1. 拷贝素材：`data/portraits/`（238 个 `*_face.png` / `*_chibi.png` + 229 个 `*.pal`）→ `vanilla/data/portraits/`。
2. `Makefile` 加规则（本仓库 `gbagfx` 的通用 `%.4bpp: %.png` 规则没有 `-num_tiles`，必须单独加）：

```make
PORTRAIT_DIR := $(VANILLA_DIR)/data/portraits

$(PORTRAIT_DIR)/%_face.4bpp: $(PORTRAIT_DIR)/%_face.png
	@echo "[GEN]	$@"
	@$(GBAGFX) $< $@ -num_tiles 136

CLEAN_FILES2 += $(patsubst %.pal,%.gbapal,$(wildcard $(PORTRAIT_DIR)/*.pal))
```

3. `vanilla/face_img.s` **不要直接打补丁**：本仓库每个符号前都加了 `.align 2,0`（2341 行 vs 上游 1873 行）。用脚本按「符号 → 资产路径」映射重写 `.incbin` 行，保留 `.align`。
4. 验证：构建产物与改前**逐字节相同**（`__DATE__`/`__TIME__` 几字节除外）——如果不同，说明 `-num_tiles 136` 或调色板处理有偏差；之后再随便改一张 PNG 确认头像能跟着变。

### 批 6 —— banim 可读性 #148 / #149 / #150（已完成）

> 状态：已移植。`6398971` 去掉三处寄存器 pin 残留（含 #141 的 `register` 限定），`8852aee` 把 frame LUT 端到端改成 `i16` 并给 `EfxAdvanceFrameLut` 上了强类型签名（`void *` shim 已删，调用点 cast 已清理）。下面保留原计划作为记录。

三个函数手工重写，位置在 `src/Common/banim/source/`：

- `EfxAdvanceFrameLut`（`banim_ekrutils.c`）：本仓库签名是 `(void *, void *, const void *)`，顺带改强类型，调用点在 `banim_efxmagic.c` 有十几处；
- `EkrMainMini_C0D_ExecNextRoundAfterAttack`（`banim_ekrmainmini.c`）；
- `BattleAIS_ExecCommands`（`banim_main.c`）：会删掉 `#if !NONMATCHING` 死分支，本仓库本来就用 `NONMATCHING=1`。

收益是可读性，风险是 banim 核心被本仓库改得较多。建议最后做，一个函数一次提交。

### 批 7 ——（可选，建议最后）批量删 include #118

219/249 文件可以直接打，但会牵动本仓库的头文件布局（很多文件换了目录、`prelude.h` 统一引入），删掉 include 有触发 agbcc 隐式声明错误的可能。建议只在「构建报错能立刻定位并回滚」的前提下做，并且只挑 `vanilla/` 下 clean 的那些。

## 4. 每批的通用操作流程

1. 取补丁：`git -C ~/fe6 diff <merge>^1 <merge> -- src include data > /tmp/pr.patch`；
2. 打之前先 `patch -l --dry-run`（`-l` 忽略空白差异），确认冲突位置；
3. 冲突处以上游最终文件（`git -C ~/fe6 show <merge>:<path>`）为准手工合并，保留本仓库的本地改动（`gpChapterInfoTable`、已删的 matching 分支、已合并的函数）；
4. `include/unknown_objects.h` 不要整段打 hunk —— 本仓库已经自行改过名，按「被删符号」逐行删即可；
5. 校验：
   - `make clean && make all` 无新增 warning；
   - 改前/改后 `.sym` 对比：只允许「旧名消失、新名出现」，同名符号地址必须全部不变；
   - `./tools/emu/run-tests.sh --quick`（每批），提交前跑全量；
6. 提交信息沿用现有风格：`Rebuild: sync upstream <module> (fe6 #NNN)`；
7. 每批完成后在 `docs/upstream-sync.md` 的「已同步」表里加一行。

## 5. 不跟的部分

- **#139（soundroom 命名）**：本仓库没有 `soundroom.c` / `include/soundroom.h` / `xmap.c`，`data/xmap_rodata.s` 也不存在；`data/rodata_3278AC.s` 的标签改名没有消费者，可留。整批跳过。
- **#136 中 soundroom / xmap 的调用点**：同上，合并时忽略这两个文件即可。

## 6. 收尾

全部批次完成后：

- `docs/upstream-sync.md` 基线改为 `7927a77`，补「已同步」条目；
- 记一次「剩余差异」统计（去空白 diff + 缺失文件清单），方便下一轮。

## 7. 工作量预估

| 批次 | 内容 | 预估 |
|---|---|---|
| 0 | 基线 | 0.5h |
| 1 | #151 / #147 / #144 | 1h |
| 2 | #134 / #135 | 2h |
| 3 | #136 / #137 / #138 | 4h |
| 4 | #141 / #142 | 3h |
| 5 | #130 立绘管线 | 2h |
| 6 | #148 / #149 / #150（已完成） | 2h |
| 7 | #118（可选） | 1h |
| | **合计** | **约 15h** |
