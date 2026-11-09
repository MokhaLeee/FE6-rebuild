# promotion-UI

使用 promotion item 后先进入的转职选择界面。

```
tree3
└─ PromoHandler
   └─ PromoMain                     // 背景 + 布局
      ├─ PromoEkrFx                 // ekrmini 角色动画 + 地形
      └─ PromoSel                   // 职业图标列表 / 输入 / 预览
```

## 流程

1. `DoItemPromoteAction()` → `StartBmDemoPromotion()`。
2. `PromoHandle_StartSelect` 起 `PromoMain`，等它结束。
3. `PromoSel` 用 `GetPromoChoices()` 取候选职业：
   - A：`handler->jid_promo = choices[idx]`，置 `ending` 并 break `PromoMain`；
   - B：`handler->action_type = PROMO_ACT_CANCEL`，同样置 `ending` 并 break `PromoMain`。
   两种情况下 `PromoSel` 都**不立刻结束**，而是继续绘制到父进程淡出完成。
4. 淡出黑屏后 `PromoMain_End` 结束 `PromoSel`/`PromoEkrFx`：
   - 转职：保持黑场，`PromoMain_AfterEnd` 只解锁 BM display 并用 `InitBmDisplay`
     重建地图图块；handler 的 `PromoHandle_ExecAnim` 再
     `UnitUpdateUsedItem()` + `StartUnitPromotionAction(unit, jid_promo, item)`；
   - 取消：`UnlockBmDisplay` + `InitBmDisplay` 后淡入地图，不消耗道具、不转职。

## 候选职业表

`PromotionData.c` 的 `sPromoChoiceDefs`：

```c
{ JID_MAGE,   { JID_SAGE, JID_BISHOP, JID_DRUID, JID_VALKYRIE, JID_NONE, JID_NONE } },
{ JID_MAGE_F, { JID_SAGE_F, JID_BISHOP_F, JID_DRUID_F, JID_VALKYRIE, JID_NONE, JID_NONE } },
```

按基础职业（`unit->jinfo->id`）查表；查不到时回退到
`jinfo->jid_promote` 的单目标。道具是否可用仍由
`CanUnitUsePromotionItem()` 决定，这张表只决定“转成什么”。
面板一屏显示 4×3 = 12 个；候选超过 12 个时按整行滚动，选中项始终保持在可见范围内。
`PROMO_CHOICE_MAX` 是硬上限（24），超出的部分会被 `GetPromoChoices()` 截断。

## 界面布局

参考图的结构：左上图标框、上方职业名、中右角色动画、底部整条 desc、
最右侧 7 项数值栏。

| 区域 | tile / 像素 |
| --- | --- |
| 职业图标框 | `(1,1)`，11×13 tile，固定显示 4 行 × 3 列；候选不足时空位留白，超过 12 个时整行滚动 |
| 滚动条 | 图标框最右一列（tile x=11）：轨道 + 4px 滑块，上/下各一个三角；只在 `choice_count > 12` 时绘制，箭头只在对应方向还有隐藏行时出现 |
| 职业图标 | 3 列 × 4 行，间距 3 tile（24px），左边留 8px 给手形光标；sprite 按可见像素包围盒在 24×24 格子内水平、垂直居中 |
| 职业名 | `(9,0)`，宽 13 tile，艺术字 OAM，按字符宽度居中；行高 24px，整体上移 4px |
| 职业 desc | `(1,14)`，28×6，占满整个下边栏，自动按宽度折行，最多 2 行 |
| 数值变更 | `(22,0)`，7×14，HP/Po/Ma/Sk/Sp/De/Re（无 Con）；单色半透明圆角块，无边框 |
| ekrmini | 像素 `(152,80)`，地形 `(104,96)` |

渲染层：

- BG0：文字；BG1：`PutUiWindowFrame` 的 desc 窗口边框；BG2：图标框和数值栏
  两个单色半透明圆角块 + ekrmini 的魔法背景；BG3：壁画；OBJ：ekrmini、地形、
  职业图标、手形光标。
- 职业图标直接用 unit sprite（`UseUnitSprite` + `PutUnitSpriteExt`），
  和 prep unit screen 一样；图标 OAM 优先级设为 1，显示在圆角块填充之上、
  BG0 文字之下。选中的格子用 `PutUiHand` 画手形光标。
- `PutUnitSpriteExt()` 对三种尺寸的锚点不同：32×32 画在 `(x-8, y-16)`、
  16×32 画在 `(x, y-16)`、16×16 画在 `(x, y)`，所以格子定位要按
  `GetUnitSpriteInfo(...).size` 分支，不能一律按 32×32 算。
- 每个 sprite 的美术在 32×32 帧里并不居中（例如 Bishop 的杖偏向左侧），
  直接按帧对齐会让列间距看起来忽宽忽窄。`PromoSel_Init` 里在
  `UseUnitSprite()` 之后**显式 `Decompress()`** 一次再扫 `UnitSpriteUnpackBuf`
  求非透明像素的包围盒中心（`Promo_MeasureIcon()`，按尺寸取 tile 行列布局），
  缓存到 `sPromoIconCx/Cy`（`EWRAM_OVERLAY_PROMOTION`，与其它 overlay 缓冲同段），
  绘制时以这个中心对齐格子中心。显式解包是必须的：`UseUnitSprite()` 只在第一次
  加载某个 sprite 时解包，候选表里出现重复职业时，第二次量到的会是上一张图。
- 滚动条画在 **BG1**（不在混合目标里，所以是纯色不透明），用
  `BGCHR_UIPROMO_SCROLL_*` 四个 8×8 tile（上三角 / 下三角 / 2px 轨道 / 4px 滑块，
  调色板沿用窗口边框）：轨道固定画满，滑块高度按 `4 / 总行数` 缩放、位置按
  `scroll_row` 插值，上/下三角只在对应方向还有隐藏行时画。
  整块只在 `choice_count > 12` 时才出现。
  注：vanilla 的 `prep_menuscrollbar.c` 是 OAM 那套（container/segment/arrow
  sprite），图形装在 OBJ VRAM，转职界面 OBJ chr 已被 ekrmini/magi/地形占满，
  所以这里只沿用它的「轨道 + 滑块 + 箭头」结构，图形自己生成。
- 数值栏参考 vanilla statscreen 左下角，但**没有窗口边框**：BG2 直接用
  5 个 tile 铺一个单色半透明圆角块：
  - `BGCHR_UIPROMO_STATSBLOCK + 0`：纯色；
  - `+1 ~ +4`：左上/右上/左下/右下圆角，外侧像素透明；
  - 位置 `(22,0)`，7×14；只列 7 项，去掉 Con，整体上移，底部让给 desc。
  注意项目里的 `TmFillRect()` 实际会填 `width+1` / `height+1` 格，所以这里传
  `PROMO_STATS_W - 1` / `PROMO_STATS_H - 1`；否则会多铺一格到右边/下面，
  看起来像一直延伸到屏幕边缘。
  `SetBlendTargetA(BG2)`、`SetBlendTargetB(BG3+OBJ)`、`SetBlendAlpha(8,8)`。
  BG2 优先级设为 1，压在 OBJ 动画之上；OBJ 也在混合目标里，所以动画滑到块
  下方时会以半透明透出来，而不是被裁掉或完全遮住。文字仍在 BG0，不受混合影响。
- 地图淡入会留下 darken 混合，所以 `PromoSel_Loop` 在 `PromoEkrFx` 存在后每帧
  重设一次 alpha；如果正在播放 class reel 魔法，就让位给
  `promofx_ekrmagi_callback` 的混合配置。
- ekrmini 的魔法背景从 BG1 移到 BG2，`promofx_ekrmagi_callback` 的混合目标
  同步调整，BG1 留给窗口框。
- 职业名用 OBJ 8×8 拼字，调色板 13；tile 缓存在 OBJ `0x280`（与 magi 对象图
  共用）。播放 class reel 魔法时隐藏标题，结束后重建缓存。

### 动画进出

- 图标：`PromoSel_Init` 载入候选职业的 unit sprite 后要调一次
  `ForceSyncUnitSpriteSheet()`。`UseUnitSprite()` 只往 EWRAM 的
  `gUnitSpriteBuf` 里填数据，真正上传 OBJ VRAM 要等 `SyncUnitSpriteSheet()`
  走到 `GetGameTime() % 72` 的特定帧；不强制同步的话，进场最初几十帧
  OBJ VRAM 里还是地图部队的 sprite sheet，图标会显示成我方部队的兵种图，
  直到自然同步到才变回职业图标。
- 进场：`PromoMain_StartFadeIn` 起 `ProcScr_PromoFade`（palette fade）做淡入，
  淡入结束后才起 `PromoEkrFx`。角色和地形先放在屏幕右侧外
  （`PROMO_MINI_X + 0x60`），停 4 帧后 8 帧滑入到 `(152,80)`。
- 淡入/淡出走**调色板缩放**而不是 `StartFastFadeFromBlack`/`ToBlack`：
  左右两块面板的半透明靠全局 alpha 混合（BG2 ↔ BG3+OBJ），而硬件
  darken fade 和 alpha 共用 `BLDCNTR`/`BLDY`，两者不能同时成立。
  用调色板缩放（`PromoFade_Apply()`：把 `gPal` 所有颜色乘 `scale/16`）
  就能在整个淡入/淡出过程中保持面板半透明；淡出结束时恢复调色板，
  再用 `SetBlendDarken(0x10)` 压黑，交给 banim/地图重建。
- `PromoSel_Init` **不能**改混合配置：此时屏幕仍被 map→promo 的
  `StartFastFadeToBlack` 压黑；palette fade 的 `PromoFade_Init` 在
  调色板仍是黑色时把混合切成面板 alpha，两项同时生效，不会闪。
- 切换：选中职业变化时，角色 + 地形先 8 帧向右滑出到 `x + 0x60`，在屏幕外
  `EkrMainMini_ChangeAnim()` 换成新职业，再 8 帧滑入。
- 滑动期间输入锁定；职业名/desc/数值用 `ui_dirty` 延迟到换动画的那一帧才重绘，
  避免“新文字配旧动画”。
- 数值块在 BG2 上、优先级 1，压在 OBJ 动画之上；混合目标 B 包含 OBJ，
  所以动画滑到块下方时仍能看到半透明图像。没有 WIN1 裁剪。
- 确认/取消：A/B 只置 `PromoSel.ending` 并 break `PromoMain`，**不结束** `PromoSel`。
  父进程开始 palette fade-out 时图标、手形光标、职业名、desc、数值、ekrmini
  都还在画；黑屏后才在 `PromoMain_End` 里用 `Proc_EndEach` 收掉
  `PromoSel`/`PromoEkrFx`。这样不会出现“图标和职业名先消失、空面板和文字
  留在屏幕上”的过渡帧。
  `ending` 后 `PromoSel_Loop` 不再每帧重设混合，避免它在 palette fade-out
  结束后把 black cover 又换回 alpha（会闪一帧）；palette fade 本身不动混合。
  A/B 时还会 `EndActiveClassReelSpell()` / `EndActiveClassReelBgColorProc()`，
  防止正在播放的 class reel 魔法继续改写混合/调色板。
- 退场：palette fade-out 结束后恢复调色板并保持 darken 黑场，`PromoMain_End`
  收掉 `PromoSel`/`PromoEkrFx`；`PromoMain_AfterEnd` 再 `UnlockBmDisplay` +
  `InitBmDisplay` 重建地图图块，并 `StartFastFadeFromBlack` 让地图**从黑色淡入**。
  `PromoMain` 等淡入结束后才结束，handler 随后
  `StartUnitPromotionAction()` → `BeginBattleAnimations()`，banim intro 接着
  在已经淡入的地图上做窗口收缩转场。
  注意这里会先看到旧职业站在地图上淡入；这是道具使用流程的正常过渡，
  转职结果由随后的转职动画展示，动画结束后由 banim 的 ending 恢复地图显示。
- 取消路径同样 `UnlockBmDisplay` + `InitBmDisplay` + 淡入地图。

## 数值预览

`Promo_DrawStats()` 复制一份 `struct Unit`，对它调用
`UnitPromote(&preview, jid)`，再和原 unit 做差。这样预览会和实际转职
完全一致（包括上限、等级 1、武器经验等）。当前只显示
HP/Po/Ma/Sk/Sp/De/Re 7 项，Con 不显示。

## 构建与测试

```bash
export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
cd /home/mokha/FE6-rebuild

make -j16 fe6re.elf
arm-none-eabi-objcopy --strip-debug -O binary fe6re.elf fe6re.gba
gbafix fe6re.gba -tfe6re -c0000 -m00
python3 tools/scripts/elf2sym.py fe6re.elf | python3 tools/scripts/sym_modify.py > fe6re.sym
```

回归：

```bash
./tools/emu/run-tests.sh --quick   # 4 项
./tools/emu/run-tests.sh           # 26 项
```

手动测试：让等级 ≥10 的 Mage/Mage_F 使用 Guiding Ring，应进入本界面；
方向键在 3 列网格里移动（左右换列、上下换行，最后一行不满时向下跳到末项），
候选超过 12 个时继续向下会整行滚动、选中项保持可见；
手形光标、职业名、ekrmini、整条 desc、右侧 7 项数值同步变化；A 转职，
B 取消且不消耗道具。

## 后续工作

### 职业名艺术字

已实现。标题是 OBJ sprite 拼出的艺术字，不再使用 16px 普通文字。

- 源图：`contents/promotion/ClassNameLetters.png`。
- 生成脚本：`tools/scripts/gen_promo_classname_font.py`，按字符手工切矩形
  （合并在一起的 `IL`、`ST`、`ce`、`su`、`lP`、`rt` 在脚本里拆开）；
  生成 `src/Core/Promotion/PromotionClassNameFont.c`。
- 每个字符保存 4bpp tile、实际宽高、tile 宽高和 advance；标题按字符实际宽度
  累加并居中，超出 13 tile 时截断。
- 字体使用 OBJ 调色板 13；tile 缓存上限 0x50，放在 `OBCHR_UIPROMO_CLASSNAME`
  （`0x280`，与 magi 对象图共用）。magi 播放期间隐藏标题，结束后重新
  `Promo_BuildTitle()`。
- 字形底边对齐到 24px 行高；`p` 由 `q` 水平翻转生成，避免图集里没有小写 p；
  带 descender 的 g/p/q/y 会沉到 baseline 下方，标题整体再上移 4px。

### 其他

- 左上角是固定 4 行 × 3 列网格；候选超过一屏时按整行滚动
  （`Promo_GetFirstRow()` 让选中行落在可视范围内，图标是 OAM 每帧重画，
  滚动只影响绘制的行号，不需要重铺背景）。
- 目前没有滚动条/箭头指示，超过一屏时看不出下面还有多少项，后续可以在面板右边缘
  加两个小箭头。
- B 键的取消还是简化版，后续可以改成回物品菜单的完整取消流程。
- 长职业名（如 Falcon Knight）在 13 tile / 0x50 tile 缓存上限内会被截断。

## 已知限制

- 图标间距 3 tile（24px），32×32 的 sprite 帧之间会重叠 8px，靠 sprite 自带的
  透明边距保证角色本身不打架；再缩小就会真的压到相邻角色。
- `PROMO_CHOICE_MAX` 是 24，超过 24 个候选会被静默截断（一屏 12 个，滚动按行）。
- 没有滚动条/箭头指示，只能靠滚动本身发现还有更多。
- 艺术字标题最多 13 tile 宽、0x50 tile 缓存；长职业名会被截断。
- 标题实际可用宽度约 80px（图标面板右边缘 x=96 到数值栏 x=176 之间），
  更长的名字会压到面板或数值栏上，例如 `Bishop`、`Valkyrie`、`Paladin`。
- B 键不消耗道具、不转职，但角色移动已经结算。
