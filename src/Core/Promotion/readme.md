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
   - A：`handler->jid_promo = choices[idx]`，关闭界面；
   - B：`handler->action_type = PROMO_ACT_CANCEL`，关闭界面，不消耗道具、不转职。
4. `PromoHandle_ExecAnim`：
   - 转职：先记下道具，再 `UnitUpdateUsedItem()`，最后
     `StartUnitPromotionAction(unit, jid_promo, item)`；
   - 取消：直接跳过。

## 候选职业表

`PromotionData.c` 的 `sPromoChoiceDefs`：

```c
{ JID_MAGE,   { JID_SAGE, JID_BISHOP, JID_DRUID, JID_VALKYRIE, JID_NONE, JID_NONE } },
{ JID_MAGE_F, { JID_SAGE_F, JID_BISHOP_F, JID_DRUID_F, JID_VALKYRIE, JID_NONE, JID_NONE } },
```

按基础职业（`unit->jinfo->id`）查表；查不到时回退到
`jinfo->jid_promote` 的单目标。道具是否可用仍由
`CanUnitUsePromotionItem()` 决定，这张表只决定“转成什么”。
每个职业最多 12 个候选（`PROMO_CHOICE_MAX`），正好填满 4×3 的网格。

## 界面布局

参考图的结构：左上图标框、上方职业名、中右角色动画、底部整条 desc、
最右侧 7 项数值栏。

| 区域 | tile / 像素 |
| --- | --- |
| 职业图标框 | `(1,1)`，10×13 tile，固定 4 行 × 3 列；空位留白 |
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
  `UseUnitSprite()` 之后扫 `UnitSpriteUnpackBuf` 求非透明像素的包围盒中心
  （`Promo_MeasureIcon()`，按尺寸取 tile 行列布局），缓存到
  `sPromoIconCx/Cy`（`EWRAM_OVERLAY_PROMOTION`，与其它 overlay 缓冲同段），
  绘制时以这个中心对齐格子中心。
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

- 进场：等 `StartFastFadeFromBlack` 结束后才起 `PromoEkrFx`。角色和地形先放在
  屏幕右侧外（`PROMO_MINI_X + 0x60`），停 4 帧后 8 帧滑入到 `(152,80)`。
- 切换：选中职业变化时，角色 + 地形先 8 帧向右滑出到 `x + 0x60`，在屏幕外
  `EkrMainMini_ChangeAnim()` 换成新职业，再 8 帧滑入。
- 滑动期间输入锁定；职业名/desc/数值用 `ui_dirty` 延迟到换动画的那一帧才重绘，
  避免“新文字配旧动画”。
- 数值块在 BG2 上、优先级 1，压在 OBJ 动画之上；混合目标 B 包含 OBJ，
  所以动画滑到块下方时仍能看到半透明图像。没有 WIN1 裁剪。
  `PromoMain_End` 里清理窗口/混合状态（`SetWinEnable` / `SetWOutLayers` /
  `SetBlendNone`），退出后不影响地图上的单位/OBJ。

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

- 左上角是固定 4 行 × 3 列网格，`PROMO_CHOICE_MAX` 也是 12，候选表填满时正好排满；
  如果将来要支持超过 12 个候选，需要同时加分页/滚动并提高上限。
- B 键的取消还是简化版，后续可以改成回物品菜单的完整取消流程。
- 长职业名（如 Falcon Knight）在 13 tile / 0x50 tile 缓存上限内会被截断。

## 已知限制

- 图标间距 3 tile（24px），32×32 的 sprite 帧之间会重叠 8px，靠 sprite 自带的
  透明边距保证角色本身不打架；再缩小就会真的压到相邻角色。
- 候选超过 `PROMO_CHOICE_MAX`（12）时 `GetPromoChoices()` 会静默截断；
  4×3 网格目前没有分页或滚动。
- 艺术字标题最多 13 tile 宽、0x50 tile 缓存；长职业名会被截断。
- 标题实际可用宽度约 88px（图标面板右边缘到数值栏之间），更长的名字会压到
  面板或数值栏上，例如 `Valkyrie`、`Paladin`。
- B 键不消耗道具、不转职，但角色移动已经结算。
