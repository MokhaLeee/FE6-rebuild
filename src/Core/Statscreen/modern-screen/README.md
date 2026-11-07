# Modern Statscreen (mss) 工作笔记

本目录是 `CONFIG_USE_MODERN_STATSCREEN = 1` 时使用的重写版 statscreen。
这份文档记录当前实现、测试方法、用户需求、已完成与待办，方便后续 agent 接手。

---

## 1. 文件结构

```
src/Core/Statscreen/modern-screen/
├── mss-core.c      入口 proc、初始化、每页独立的滑动 proc、sprites（页码/箭头/标题）
├── draw-pages.c    四页内容绘制（DUAL / PERSONAL / ITEMS / WEXP）+ 每页边框
├── mssfx.S         图形资源 incbin（TSA、UI 图、标题图、sprites 图）
└── README.md       本文件

contents/statscreen/Modern/
├── ModernStatScreen_UI.png       面板边框/填充 tile 图集（256x32；tile 63 为装备行深红条）
├── ModernStatScreen_UI2.png      statbar 图集
├── ModernStatScreen_Spirtes.png  页码/箭头/小图标（256x32）
├── ModernStatScreen_Titles.png   整词艺术字（16x384，SKILLS/ITEMS/SUPPORT/STATS/COMBAT/WEAPON）
├── ModernStatScreen_TitleLetters.png  旧版 8x16 字符集（A-Z + space），config=0 时使用
├── Tsa_Mss_Upper.c               Upper 面板 TSA（20x6）
├── Tsa_Mss_Left.c                Left 面板 TSA（20x14）
├── Tsa_Mss_Right.c               Right 面板 TSA（10x19）
├── Tsa_Mss_Dual.c                DUAL 页左面板 TSA（20x20）
└── Tsa_Mss_FaceFrame.c           头像相框 TSA（12x11，4px 渐变边框）
```

`Tsa_Mss_*.c` 是数据源，`make` 会把它们编成 `.dmp` 再压成 `.dmp.lz`，由 `mssfx.S`
`.incbin` 进来。`.dmp*` 被 `contents/.gitignore` 忽略，Makefile 里给 `mssfx.o` 加了
对 `Tsa_Mss_*.c` 的生成依赖，clean 后能自动重建。

关键头文件：`include/statscreen.h`（`ProcMss`、`MssSlideState`、`TmBuff_Mss*`、videoalloc 常量、文本索引）。

---

## 2. 布局与渲染层

坐标单位是 tile（8x8）。有**两种布局**，每个页面选一种：

### 2.1 三面板布局（page 1..3）

| 面板 | 尺寸 | 位置 | 内容 |
|---|---|---|---|
| Upper | 20 x 6 | (0,0) | chibi、LV/HP、名字/职业 |
| Left | 20 x 14 | (0,6) | 技能、魔法、物品、支援（按页变化） |
| Right | 10 x 20 | (20,0) | Str/Mag/... 或战斗数值、武器经验 |

### 2.2 双面板布局（page 0）

没有 Upper，Left 拉满整个画面高度。左面板目前只放一张 80x72 的立绘，外面套一圈
相框，框下面再排角色描述：

| 面板 | 尺寸 | 位置 | 内容 |
|---|---|---|---|
| Left (Dual) | 20 x 20 | (0,0) | 80x72 立绘 + 12x11 相框 + 描述 |
| Right | 10 x 20 | (20,0) | Str/Mag/... |

立绘用 `PutFace80x72()`（和 vanilla statscreen 同一个函数，自带 `Decompress` 和
`ApplyPalette`），画在 `(2,2)`，占 10x9 tile。

相框用 `Tsa_Mss_FaceFrame`，12x11，画在 `(1,1)`，**框在 BG0、立绘在 BG1**：BG0 优先级
更高，所以边框线会压在立绘最外 2px 上，而不是被立绘盖掉。

> `TmApplyTsa()` 是**从最后一行往上画**的（见 `armfunc-asm.iwram.S`），所以 TSA 数组必须
> 倒序存放——第 0 行对应画面最底部。写正序数组会让整个框上下颠倒、四个角错位。
>
> 边框 4px 渐变的配色取自面板边框：`6 → 7 → 15 → 8`（深蓝紫 → 亮蓝紫 → 米白高光 →
> 深棕）。底边和两个底角是 `8 → 15 → 7 → 6`（深棕贴着脸）。左右线画在格子的内侧半格，
> 底线的 4px 落在格子的上半，这样四条边都能贴住立绘，不留背景缝。

### 2.3 TM buffer

每块面板三层 TM buffer：

- `TmBuff_MssU0/L0/R0` → BG0（文字）
- `TmBuff_MssU1/L1/R1` → BG1（statbar / gauge；ITEMS 页的装备行深红条也画在这里）
- `TmBuff_MssU2/L2/R2` → BG2（UI 边框、填充）
- `TmBuff_MssD0/D1/D2` → 双面板页的 Left；20 行，比三面板的 Left 高。D0 放相框和描述文字，
  D1 放立绘（框压着立绘的边缘），D2 目前空着

双面板页的 BG VRAM：立绘占 `BGCHR_MSS_FACE_BIG` 那块 90 tile（`0x4C00`），相框的 8 个 tile
画在 UI 图集的空闲位（tile 13–20）。

滑动时 `slide_up/left/right`（三面板）或 `slide_dual_left` + `slide_right`（双面板）
把 buffer 的内容按列/行复制到 `gBg0Tm`/`gBg1Tm`/`gBg2Tm`。

OBJ 资源加载到 `OBJ_VRAM0`：

- `OBCHR_MSS_SPRITES = 0x5800 / 0x20`，palette `OBPAL_MSS_SPRITES = 2`（页码、箭头）
- `OBCHR_MSS_TITLES = 0x6800 / 0x20`，palette `OBPAL_MSS_TITLES = 3`（标题）

---

## 3. 滑动动画

### 3.1 每个布局一个 slide proc

slide 流程不在主 proc 里内联，而是**每个布局各自一个 proc**：

```c
static const struct ProcScr ProcScr_mss_slide_in[] = {
	PROC_CALL(mss_init_slide_unit_in),
	PROC_REPEAT(mss_loop_unit_slidein),
	PROC_END,
};
```

主 proc 只做「按当前 page 选 proc → 起进程 → 等它结束」：

```c
PROC_LABEL(PL_MSS_SLIDE_PAGE),
	PROC_CALL(mss_spawn_slide_out),
	PROC_YIELD,          /* SpawnProcLocking 下一帧才生效，这里必须停一帧 */
	PROC_CALL(mss_apply_page),
	PROC_CALL(Mss_PreparePage),
	PROC_CALL(mss_spawn_slide_in_page),
	PROC_YIELD,
	PROC_GOTO(PL_MSS_IDLE),
```

`mss_spawn_slide_*()` 用 `SpawnProcLocking()`：它给子 proc 打 blocking 标记、给父 proc
`proc_lock_cnt++`，子 proc `Proc_End` 时自动 `--`，父 proc 的脚本在这期间完全停摆。

> `PROC_CALL(spawn)` 之后**必须**跟一个 `PROC_YIELD`。`StepProcScr` 在 `PROC_CALL`
> 之后不会停，会在同一帧继续执行下一条命令；少了 YIELD 就会在滑出刚开始时把
> `mss_end()` / `mss_slide_idle()` 提前跑掉，表现为换人时面板丢失混合、背景变成一块纯色。

选哪个 proc 由三个函数决定：

```c
if (proc->page == 0)
	return ProcScr_mss_slide_dual_in;   /* 双面板：只驱动左右两块 */

return ProcScr_mss_slide_in;            /* 三面板 */
```

加新布局时：写自己的 ProcScr + init/loop，在这三个函数里按 page 返回即可，
不用动主流程。

### 3.2 时序

`struct MssSlideState`（`include/statscreen.h`）保存每块面板自己的状态：

```c
i16 step;    // current slide step in tiles
i16 delay;   // frames to wait before sliding (stagger)
i16 clock;   // frames elapsed since the slide started
i16 length;  // total slide duration in frames
```

`mss_slide_tick()` 用 16 段 ease-out 表推进（`s_mss_ease_out`），每块独立计时。
`mss_init_slide_*` 设置每块的 delay / length：

| 场景 | Upper | Right | Left |
|---|---|---|---|
| unit out | 0 / 8 | 2 / 10 | 4 / 12 |
| unit in | 4 / 8 | 8 / 10 | 0 / 12 |
| page out | 0 / 8 | 2 / 10 | 4 / 12 |
| page in | 3 / 8 | 6 / 10 | 0 / 12 |

双面板（page 0）只列左右两块：

| 场景 | Right | Left (Dual) |
|---|---|---|
| out | 2 / 10 | 0 / 12 |
| in | 6 / 10 | 0 / 12 |

方向：Upper 从上、Left 从左、Right 从右；OUT 时反向飞出。

滑出结束后才调用 `Mss_PreparePage()` 生成新页，再滑入。

### 页码跟随

页码和箭头是 OAM，位于 Right 面板底部。`mss_page_slide_offset()` 返回：

- OUT：`slide_r.step * 8`（向右飞出）
- IN：`(MSS_R_WIDTH - slide_r.step) * 8`（从右侧飞入）

`ProcMss.page_to_change` 记录目标页，滑出结束、重画之前由 `mss_apply_page()` 才真正写回 `page`。
所以滑出阶段显示旧页码，滑入阶段显示新页码。

---

## 4. 标题 sprite

标题不再用 BG 文字，而是图片 + OAM。两套方案由 `include/configs/configs.h` 里的宏切换：

```c
/* 1 = 整词艺术字；0 = 旧版 8x16 字符集逐字母 */
#define CONFIG_MSS_TITLE_WHOLE_WORD 1
```

### 4.1 整词艺术字（默认）

- `ModernStatScreen_Titles.png`：16x384，六行整词图，顺序 `SKILLS / ITEMS / SUPPORT / STATS / COMBAT / WEAPON`。
- 每个词是 64x16 的艺术字，拆成 4x2 个 **16x8** chunk；每个 chunk = 2 个 tile，所以每个词 16 tile，六词共 96 tile。
- 字形使用 DejaVu Serif Condensed Bold Italic，1px 深棕描边，主体按 y 映射到调色板 `2..12` 的 11 级渐变。
- `mss_put_title_word()` 用 8 个 `Sprite_16x8` 拼出整词：

```c
for (row = 0; row < 2; row++)
    for (col = 0; col < 4; col++)
        PutSprite(1, x + col * 16, y + row * 8, Sprite_16x8,
            base + (row * 4 + col) * 2);
```

> 不要改用 32x16、64x32 这类大 OAM。这个 OBJ tile 布局下它们的跨行 tile 顺序和 64x16 图不一致，会把相邻词也读进来。16x8 条带最稳，同时仍然是一整词的图，不是逐字母画。

### 4.2 旧版字符集（`CONFIG_MSS_TITLE_WHOLE_WORD = 0`）

- `ModernStatScreen_TitleLetters.png`：8x432，顺序 A-Z + 空格，每个字母 8x16。
- 每字符画两个 8x8 sprite：

```c
PutSprite(1, x + i * 8, y,     Sprite_8x8, oam2 + idx * 2);
PutSprite(1, x + i * 8, y + 8, Sprite_8x8, oam2 + idx * 2 + 1);
```

- 词表：Left `SKILLS / ITEMS / SUPPORT`，Right `STATS / COMBAT / WEAPON`。

两套图都在 `mssfx.S` 里各有一份 `Img_*` / `Pal_*`，`mss_sprites_init()` 按宏选择加载；OAM 绘制也按宏选择 `mss_put_title_word()` 的实现。

标题 x 跟随 `slide_l.step` / `slide_r.step`，翻页时跟面板一起飞。

> 注意：`slide_left()` 内部的 step 是**半宽（0~10）**，换算成像素要用 `step * 16`。
> 这里之前写成 `(MSS_L_WIDTH - step) * 8`，step 走到 10 时标题还在 `x = -72`，
> 看起来就是“切换完成后才突然出现”。正确写法：
>
> ```c
> lx -= mss->slide_l.step * 16;                        // OUT
> lx -= (MSS_L_WIDTH - mss->slide_l.step * 2) * 8;     // IN
> ```

标题位置：Left `(8, 44)`，Right `(168, 4)`。标题高 16px，会轻微压到 `Skills:` / `Str` 顶部约 4px（用户确认可以接受）。

### 4.1 调色板渐变

标题使用专用 OBJ pal bank `OBPAL_MSS_TITLES = 3`。字符图主体使用索引 `2..12`，每个字符按 y 映射成完整的 11 级纵向渐变。

`mss_update_title_palette` 直接复用 vanilla statscreen 页面标题的 11 色滑动窗口：

```c
int color_num = (GetGameTime() / 4) & 0x3F;

CpuCopy16(
    gpPal_StatscreenPageNameFlashing + color_num,
    gPal + (0x10 + OBPAL_MSS_TITLES) * 0x10 + 2,
    sizeof(u16) * 11);
```

标题主体索引 `2..12` 对应窗口里的 11 个颜色，颜色依次经过白、金、粉、青，和 vanilla 页面标题的金属高光一致。

---

## 5. 当前内容布局

标题是 OAM，不占 BG 内容行；面板内容保持原坐标（与加标题之前一致）：

### Page 0（DUAL，双面板）

- Left（20x20）：80x72 立绘在 `(2,2)`，外面 12x11 相框在 `(1,1)`；框下面排三行角色
  描述（`pinfo->msg_desc`，为 0 时回退 `jinfo->msg_desc`），y=12/14/16，每行 19 字符，
  文本里的换行符由 `put_multi_line_text()` 切分。
- 名字、职业、LV/HP、Con/Aid、技能列表等内容**暂时都清空了**，等确定放什么再加。
- Right：`Str/Mag/Skl/Spd/Def/Res/Lck/Mov`，y=2,4,...,16（与 PERSONAL 页共用同一段绘制）。
- 这一页**不放左侧标题**：左面板顶到画面最上沿，标题会压内容；只有右侧 `STATS`。

### Page 1（PERSONAL，三面板）

- Upper：chibi、`LV n EXP n`、`HP a/b`、名字/职业。
- Left：`Skills:` y=1，技能图标 y=3（横排，最多 3 个），`B.Magic:` y=8。
- Right：`Str/Mag/Skl/Spd/Def/Res/Lck/Mov`，y=2,4,...,16。

### Page 2（ITEMS）

- Left：最多 5 个物品行，y=2,4,...,10；空槽显示灰色 `---` 和 `--/--`，装备中的物品右侧显示绿色 `E`，该行底部加 vanilla 风格的深红装备条。
- 物品少于 5 件时，最后一行让给装备武器摘要：`Rank / Wgt / Rng`；满 5 件时五格全显示，不再压缩物品行。
- Right：`Attack/Hit/Crit/Avoid/Dodge/Silencer/Range/AS`，y=2,4,...,16。

### Page 3（WEXP）

- Left：支援候选列表，最多 5 行；已建立支援按等级排在前面，未建立显示 `-`；没有支援信息时显示 `No supports`。
- Right：8 个武器经验条，y=2,4,...,16。

标题 sprite 的 y 比内容高（Left 44、Right 4），只压面板顶部边框/接缝，不占内容行。

---

## 6. 构建

环境（远程 Linux）：

```bash
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export PATH=/opt/devkitpro/tools/bin:/opt/devkitpro/devkitARM/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

cd /home/mokha/fe6-rebuild
make -j16 fe6re.elf
arm-none-eabi-objcopy --strip-debug -O binary fe6re.elf fe6re.gba
gbafix fe6re.gba -tfe6re -c0000 -m00
python3 tools/scripts/elf2sym.py fe6re.elf | python3 tools/scripts/sym_modify.py > fe6re.sym
```

`gbafix` 需要显式在 PATH 里，否则 Makefile 的 `.gba` 规则会报 `gbafix: Not a directory`。
PNG → `.4bpp` / `.gbapal` / `.lz` 由 Makefile 自动生成，不要提交这些生成物，只提交 PNG。

快速回归：

```bash
./tools/emu/run-tests.sh --quick
```

---

## 7. 测试方法（进 modern statscreen）

### 7.1 关键点

- `CONFIG_USE_MODERN_STATSCREEN = 1` 时，只有在 **playerphase** 按 R 才会走 `StartModernStatScreen`。
- 准备画面（prep）按 R 打开的是 **vanilla statscreen**（`prepphase.c` 里直接调 `StartStatScreen`），不是 modern。
- 所以必须先出击进入战斗地图，把光标移到角色上，再按 R。
- 不要为了截图去改 `playerphase.c` 加 hook；用户明确要求走正常流程。

### 7.2 状态判据

`gbarun` 支持 `--probe` / `--press-when`（格式 `<addr>:<width>:<op><value>`）：

- `gPlaySt+0xE:8` = chapter
- `gBmSt+0x4:8` = flags（`BM_FLAG_PREP = 0x10`）
- `gBmSt+0x1:8` = lock

准备画面：`gBmSt+0x4 & 0x10 != 0`。
战斗地图 idle：`chapter == 2` 且 `flags == 0`。

### 7.3 一条可用的输入脚本

从开机到打开 modern statscreen（帧号固定，已验证）：

```bash
./tools/emu/.build/gbarun fe6re.gba --quiet --frames 31200 --sym fe6re.sym \
  --hold-every 720:9000:50:A:3 \
  --hold-every 9500:10500:40:B:4 \
  --press-when "gBmSt+0x4:8:&16;START;5;0" \
  --hold 10650:A:5 --hold 10900:B:5 --hold 11100:DOWN:5 --hold 11200:A:5 \
  --hold 11500:B:5 --hold 11700:DOWN:5 --hold 11800:A:5 --hold 12100:B:5 \
  --hold 12300:DOWN:5 --hold 12400:A:5 --hold 12700:B:5 --hold 12900:DOWN:5 --hold 13000:A:5 \
  --hold 15700:A:5 \
  --hold 16100:DOWN:5 --hold 16200:DOWN:5 --hold 16300:DOWN:5 --hold 16400:DOWN:5 \
  --hold 16600:A:5 --hold 16900:A:5 \
  --hold-every 17500:23000:40:A:3 \
  --hold 24000:A:5 --hold 24200:A:5 \
  --hold 24400:DOWN:5 --hold 24550:DOWN:5 --hold 24700:DOWN:5 --hold 24850:DOWN:5 \
  --hold 25100:A:5 --hold 25400:A:5 \
  --hold 26200:B:5 \
  --hold 26400:DOWN:5 --hold 26500:DOWN:5 --hold 26600:DOWN:5 --hold 26700:DOWN:5 \
  --hold 26900:A:5 --hold 27200:A:5 --hold 27600:R:5 \
  --hold 28200:B:5 --hold 28600:B:5 \
  --hold 29200:L:5 \
  --hold 29700:R:5 \
  --hold 30100:RIGHT:6 --hold 30500:RIGHT:6 \
  --stats 29900 --stats 30300 --stats 30700 \
  --shot 29900 --shot 30300 --shot 30700 \
  --out /tmp/deco
```

说明：

- `29200:L` 把光标切到蓝方单位（`TrySwitchViewedUnit`），否则光标在空地时按 R 不响应。
- `29700:R` 打开 modern statscreen。
- `30100/30500:RIGHT` 翻到第 2/3 页。
- `29900/30300/30700` 是稳定后的截图帧。

### 7.4 翻页动画逐帧抓取

```bash
SHOTS=()
for f in $(seq 30000 2 30060); do SHOTS+=(--shot "$f"); done
# 在 7.3 的脚本基础上，把 30000 的 RIGHT 加上，并追加 "${SHOTS[@]}"
```

拿到 PNG 后可以用远程 Python + Pillow 合成 GIF：

```python
frames = [Image.open(f) for f in sorted(glob.glob('/tmp/anim2/frame_*.png'))]
frames[0].save('/tmp/slide.gif', save_all=True, append_images=frames[1:], duration=60, loop=0)
```

---

## 8. 用户需求汇总

按对话里明确提到的：

1. **保留三块面板**（上、左、右），不要合并成一整块。
2. 三块 **各自 slide in/out**，有先后错峰，比同步滑动“丝滑”。
3. 滑动再加 **ease-out**，起步快、落位慢。
4. **页码/箭头跟 Right 面板一起飞**，不要瞬切：
   - 滑出显示旧页码；
   - 滑入显示新页码。
5. 每页内容太少、空白多 → **填充有效信息**（技能名、支援、状态、Con/Aid/Talk、武器摘要等）。
6. 装饰太少、缺旧版华丽感 → 加装饰（标题、分隔线、图标、边框、高光/阴影、底栏、背景）。
7. **标题不要用 BG 文字**：
   - 做成图片；
   - 加载到 `OBJ_VRAM0`；
   - 用 sprite 展示。
8. 注释一律 **英文**。
9. 不要为了截图“魔改”代码，走正常流程进 playerphase 按 R。
10. 交流用中文；代码、路径、日志保持原文。

---

## 9. 已完成

提交记录（从旧到新）：

| commit | 内容 |
|---|---|
| `bb5eb12` | 三块面板独立滑动：`MssSlideState`，各自 delay/length |
| `b941960` | ease-out + 页码跟随 Right 面板 + 延迟切页 |
| `d76140c` | 标题图片 + OBJ_VRAM0 + 8x8 sprite 字符 |
| `c90bd8c` | Page 2 左面板填充支援候选（已建立优先，未建立显示 `-`） |
| `82f3dc3` | 标题改用 vanilla page-name 的 11 色循环窗口 |
| `e3c2e02` | 标题改为正弦波驱动的暖金色循环渐变，去除白闪和循环停顿 |
| `9c14d82` | 延迟 MSS 调色板/OAM，修复 playerphase 单位信息框退出残帧 |
| `9187f10` | 标题改为整词艺术字，并保留 `CONFIG_MSS_TITLE_WHOLE_WORD` 逐字母回退 |
| `86fd8c9` | Page 1 物品槽、装备条、Rank/Wgt/Rng 摘要与 COMBAT `AS` |
| `06a4e21` | 双面板 page 0、四页重排、每布局独立 slide proc |
| （本次） | page 0 换成 80x72 立绘 + 12x11 相框 + 角色描述 |

具体：

- page 0 的左面板改为一张 80x72 立绘（`PutFace80x72()`，与 vanilla statscreen 同源），
  外面套 12x11 相框，框下排三行角色描述；名字/职业/等级/HP/Con/Aid/技能列表暂时清空。
- 相框的 tile 画在 `ModernStatScreen_UI.png` 的空闲位（13–20），配色沿用面板边框的
  4px 渐变 `6/7/15/8`；底边和底角用 `8/15/7/6`，深棕贴着脸。
- 新增 `contents/statscreen/Modern/Tsa_Mss_FaceFrame.c`（12x11，倒序存放）。
- 立绘占 `BGCHR_MSS_FACE_BIG`（`0x4C00`，90 tile）。
- 新增双面板布局 page 0（左 20x20 全高 + 右 10x20），原 PERSONAL / ITEMS / WEXP 后移为
  page 1 / 2 / 3，`page_count = 4`。
- slide 流程从主 proc 内联改为**每个布局一个 `ProcScr`**，主 proc 用 `SpawnProcLocking()`
  起子进程并等它 `Proc_End`；`mss_spawn_slide_*()` 里按 `page` 选 proc。
- 新增 `TmBuff_MssD0/D1/D2`（20 行）与 `slide_dual_left()`，右面板继续复用 `slide_right()`。
- 新增 `contents/statscreen/Modern/Tsa_Mss_Dual.c`（20x20 边框），由 `mssfx.S` `.incbin`。
- `Mss_PreparePage()` 统一成一个 `switch`，每页一个 case；三面板边框抽成 `put_default_frames()`。
- Makefile 给 `mssfx.o` 补了对 `Tsa_Mss_*.dmp.lz` 的生成依赖（`.incbin` 对 make 不可见，
  而这些 blob 被 gitignore），clean 后能重建。
- 三块面板独立 tick，`MssSlideState` 每块一份。
- 16 段 ease-out 表（`s_mss_ease_out`）。
- 页码/箭头 OAM 按 `slide_r.step` 跟随 Right 面板。
- `page_to_change` + `mss_apply_page`，滑出旧页、滑入新页。
- 标题图 `ModernStatScreen_Titles.png`（16x384，六整词艺术字，11 级渐变主体 + 深棕描边）；`CONFIG_MSS_TITLE_WHOLE_WORD = 0` 时改用 `ModernStatScreen_TitleLetters.png` 的旧版逐字母方案，两套资源都保留。
- `Img_MssTitles` / `Pal_MssTitles`，加载到 `OBCHR_MSS_TITLES` / `OBPAL_MSS_TITLES`。
- 每词用 8 个 `16x8` OAM sprite 拼成整词，跟随左右面板滑动（`step * 16` 修正）。
- 标题使用专用 pal bank，直接复制 `gpPal_StatscreenPageNameFlashing` 的 11 色滑动窗口，颜色与 vanilla 页面标题一致（白/金/粉/青）。
- `mss_load_gfx` 在进入 MSS 后延迟两帧加载调色板/UI，再启动 OAM 标题；这样 playerphase 单位面板的 OAM HP 数字会先随面板一起消失，不会在面板 BG 尚未清掉时被 MSS 的 OAM 覆盖成米黄色方块。
- `mss_load_gfx` 显式把 `Pal_Text` 应用到 `BGPAL_MSS_TEXT`，避免地图调色板残留把蓝色 HP 数字染成与 HP 条相同的颜色。
- 面板内容恢复原坐标（不再为标题让位）；标题在 Left (8,44) / Right (168,4)。
- 文本槽位改为按页重建：`Mss_InitPageText()` 在 `Mss_PreparePage()` 开头 `ResetTextFont()` 后初始化上栏 + 当前页的 text，三页不再同时占 VRAM。
- Page 1 左面板最多 5 个物品槽；空槽灰色占位。装备物品有绿色 `E`，行底在 BG1 铺深红装备条。物品不足 5 件时最后一行显示 `Rank / Wgt / Rng`，满 5 件时五格全显示。
- Page 1 右面板补 `AS`，整体从 y=2 开始，结束于 y=16，避免压到页码。

---

## 10. 计划/待办

### P0 内容填充（纯代码，优先）

- **Page 1（PERSONAL）左面板**：
  - 技能列表加名称（图标 + 名字），最多 6 个；空时显示 `None`。
  - B.Magic 列表（现在只有标签）。
  - 底部小表：`Cond / Affin / Con / Aid / Talk / 移动类型`。
- **Page 2（ITEMS）左面板**：已完成。
  - 物品行图标 + 名字 + 耐久；空槽灰色占位，装备中 `E` 标记。
  - 装备行底部加深红装备条（复用 UI tile 63），对应 vanilla 的装备武器背景条。
  - 底部加武器摘要：`Rank / Wgt / Rng`；满 5 件物品时用五格全显示，摘要让位。
- **Page 2（ITEMS）右面板**：已补 `AS`（攻击速度）到 y=16。
- **Page 3（WEXP）左面板**：支援候选列表（已建立优先，未建立显示 `-`）已完成。
- **Page 0（DUAL）**：左面板目前只有立绘 + 相框 + 三行描述，其余内容待定。候选：名字/职业、
  `LV/HP`、`Con/Aid`、技能列表、支援摘要。描述数据源 `texts/gamedata/character_desc.txt`
  现在 527 行全是占位符 `YOU KNOW WHO`，要真正显示角色介绍得先写文本。
- **右面板**：保持 8 项；如果空间允许，补 `Con/Aid/Talk` 到左面板而不是右面板。

### P1 装饰

- 标题字体可继续微调（当前整词艺术字是 DejaVu Serif Condensed Bold Italic 二值化；逐字母回退仍保留）。
- 标题缩放动画：vanilla 用 `SetObjAffineAuto` 在 Y 方向压扁/展开，需要把标题改成整块图 + affine OAM。
- 面板顶部高光 / 底部阴影（新增纯色 tile，覆盖 U2/L2/R2 首尾行）。
- 属性行图标（8x8，Str/Mag/... 各一个）。
- 底栏操作提示（`←→ 翻页  ↑↓ 换人  R 帮助`）。
- 面板边框角花/内金线（改 TSA + UI 图集）。

### P2 功能/氛围

- 背景壁纸（复用 `StartMuralBackground` 或静态纹理）。
- 大立绘（现在只有 chibi）。
- 物品页装备框、支援页完整布局。
- 帮助框（接 `HelpInfo_*` 或新做一份）。

### 已知问题

- 整词艺术字使用 DejaVu Serif Condensed Bold Italic 二值化生成，不是 FE 原生美术字；`CONFIG_MSS_TITLE_WHOLE_WORD = 0` 可切回旧字符集。
- 标题会压 `Skills:` / `Str` 顶部约 4px（用户确认可接受）。
- 没有做 vanilla 那种 Y 轴压扁/展开；当前是跟随面板水平滑入 + vanilla 11 色循环渐变。
- Page 2 在物品满 5 件时不显示 `Rank / Wgt / Rng` 摘要，因为 5 行物品已经占满内容区。
- 没有帮助框；R 在 statscreen 内没有绑定。
- 快速连按翻页时，标题/页码的视觉同步还没有专门测过。
- 双面板页（page 0）没有左侧标题，左右两侧的视觉重量略不对称。
- 相框四角是直角色带，不是圆角；4px 线宽下做不出真正的圆角（要占满整个 8x8 tile）。

---

## 11. 代码约定

- 注释用英文；用户明确要求过。
- 缩进用 tab（与目录内现有文件一致）。
- 新增页面时：
  - 在 `draw-pages.c` 写 `put_<name>_page()`，在 `Mss_PreparePage()` 的 `switch` 里加 case；
  - 加对应的 `mss_text_init_info_*` 表，按 page 号放进 `mss_text_init_info_pages[]`；
  - 面板数量/尺寸跟三面板不同时，写自己的 `ProcScr` + init/loop，并在
    `mss_slide_in_proc()` / `mss_slide_in_page_proc()` / `mss_spawn_slide_out()` 里按 page 返回；
  - 新增 TSA 放 `contents/statscreen/Modern/Tsa_Mss_*.c`，再在 `mssfx.S` 里 `.incbin` 它的
    `.dmp.lz`（Makefile 已按 `Tsa_Mss_*.c` 自动补生成依赖）。
- 新增文本索引加到 `enum mss_text_index`，并在 `mss_text_init_info_upper`（上栏共用）或对应页的 `mss_text_init_info_pageN` 里注册。
- `Mss_InitPageText()` 在每次 `Mss_PreparePage()` 开头按当前页重建文本槽位（`ResetTextFont()` + 逐页 `InitTextList()`），所以每页只占用该页实际需要的 VRAM。新增文本时不要改回启动时一次性 `InitTextList()`。
- 新增 OBJ 资源：
  - 在 `mssfx.S` 加 `Img_*` / `Pal_*`；
  - 在 `include/statscreen.h` 加 `OBCHR_*` / `OBPAL_*` 和 `extern`；
  - 在 `mss_sprites_init` 里 `Decompress` + `ApplyPalette`。
- 提交信息用英文，结尾加 `Co-Authored-By: DeepSeek <noreply@deepseek.com>`。
- 只提交源文件（PNG、`.c`、`.S`、`.h`），不要提交 `.4bpp` / `.gbapal` / `.lz` / `.o`。
