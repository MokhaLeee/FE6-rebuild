# 地图治疗动画结束时单位消失 4–5 帧

> 现象：`HealingFocus`（特技「瞑想」）和战后回血技能（Lifetaker / Endless Vitality /
> Mystic Boost）的动画播完、回到地图待机时，被治疗的单位会消失约 4–5 帧再出现；
> 期间既看不到 Mu，也看不到地图精灵。
>
> 结论先说：**`Unit::map_sprite` 在动画开始时被 `RefreshUnitSprites()` 置成了 NULL，动画期间靠 Mu 顶着；
> Mu 又在行动收尾流程之前被 `EndMu()` 结束，于是出现「Mu 没了、地图精灵还没回来」的空档。**

## 1. 从截图开始

手上有三张截图：`1.png`（动画结束后正常）、`2.png`（闪烁帧）、`3.png`（恢复后）。
先判断 `2` 到底是相机移动还是单位消失：

1. 把 `3.png` 的地形块放到 `2.png` 里做模板匹配，最佳偏移只有 `(-6, 0)`，也就是相机几乎没动；
2. 对齐后做逐像素差分，差异集中在一个约 16×24 的区域，正是画面下方那个单位。

所以不是相机/截图裁剪的问题，而是**单个单位的 sprite 缺失**。

## 2. 用 gbarun 复现

`tools/emu/gbarun` 是无头 mGBA。要复现需要两个前提：

- `fe6re.sav` 里 Roy 处于「已行动」状态（`UNIT_FLAG_TURN_ENDED`），且满血；
- 要能触发两种 heal。

用 GDB 改内存来准备场景（不 call 函数，避免 GBA 上的 Thumb 调用问题）：

```gdb
target remote 127.0.0.1:2345
set gUnitArrayBlue[0].flags = gUnitArrayBlue[0].flags & ~2
set gUnitArrayBlue[0].hp = 9
set gUnitArrayBlue[0].skills[0] = 26
continue
```

gbarun 侧跑到地图空闲帧挂起，GDB `continue` 后继续按键：

```bash
gbarun fe6re.gba --quiet --sav fe6re.sav --frames 16700 \
  --hold-every 1400:14400:30:A:5 \
  --hold 14500:B:5 ... --hold 15100:B:5 \
  --gdb-at 15400 \
  --hold 15550:RIGHT:5 --hold 15680:DOWN:5 \
  --hold 15850:A:5 --hold 16050:A:5 \
  --hold 16150:DOWN:5 --hold 16300:DOWN:5 --hold 16450:A:5
```

按键含义：`--hold-every ...` 跳过开场剧情；`--hold 14500:B:5 ...` 关菜单回到地图；
`--gdb-at 15400` 在这里挂 GDB 改内存；后面把光标移到 Roy（RIGHT/DOWN）、
选中并原地确认弹出行动菜单，最后 DOWN/DOWN/A 选「待機」触发 post-action heal。

`HealingFocus` 则是行动菜单第一项「特技」→ 技能菜单第二项「Heal Focus」。

## 3. 逐帧定位

用 `--shot` 对每一帧截图，再用 Python 统计画面里的「单位蓝」像素：

```python
a = np.array(Image.open(f'shots/probe/frame_{i:05d}.png').convert('RGB')).astype(int)
allblue = ((a[:,:,2] > 140) & (a[:,:,2] > a[:,:,0] + 60) &
           (a[:,:,2] > a[:,:,1] + 40) & (a[:,:,0] < 120)).sum()
```

post-action heal 的结果：

```
16586  allblue 4029
16587  allblue 3966   ← 消失
16588  allblue 3966
16589  allblue 3966
16590  allblue 3966
16591  allblue 3966
16592  allblue 4057   ← 恢复
```

`3966` 比正常少 63 个像素，正好是一个单位图形。消失窗口固定 5 帧。

## 4. 探针：消失时到底谁没画

`--probe` 读固定地址，读不了结构体成员，但每帧打印足够：

```
--probe "gUnitArrayBlue+0x3C:32"      # Unit::map_sprite 指针
--probe "gUnitSpriteHoverClock:32"    # 光标悬停计时
--probe "sMuConfig+0x0:8"  --probe "sMuConfig+0x4C:8"
--probe "sMuConfig+0x98:8" --probe "sMuConfig+0xE4:8"  # 4 个 Mu 槽的 id
--probe "gPlaySt+0x0D:8"              # vision，排除战争迷雾分支
```

消失期间读到：

- `gUnitArrayBlue[0].map_sprite = 0`（NULL）；
- 4 个 `sMuConfig[i].id` 全 0（没有任何 Mu）；
- `gPlaySt.vision = 0`（不是 `PlayerPhase_FinishAction` 的战争迷雾 `RefreshUnitSprites` 分支）；
- 恢复那一帧 `map_sprite` 才变回非零。

到这里就明确了：**不是 `HideUnitSprite()` 把地图精灵藏了，而是 `map_sprite` 本身是 NULL，
同时 Mu 也没了。**

## 5. 时间线还原

```
动画开始
  muskillanim_init()：
    EndAllMus();
    RefreshUnitSprites();   ← 问题在这里
    HideUnitSprite();
    StartMu();

  ... 动画期间：单位由 Mu 显示，map_sprite 为 NULL 也看不出来 ...

动画结束
  muskillanim_end()：
    EndMu();                ← Mu 没了
    ShowUnitSprite();       ← map_sprite 是 NULL，Show 什么也不做

行动收尾
  PlayerPhase_WatchActiveUnit()  相机移动几帧
  PlayerPhase_FinishAction()     末尾 EndAllMus()
  ...
  idle：UnitSpriteHoverUpdate()  5 帧后重新 StartMu + HideUnitSprite
```

`RefreshUnitSprites()` 对每个单位会先 `unit->map_sprite = NULL`，再按条件重新分配：

```c
if ((unit->flags & (UNIT_FLAG_HIDDEN | UNIT_FLAG_CONCEALED)) != 0)
    continue;
if (gMapUnit[unit->y][unit->x] == 0)
    continue;
```

行动期间 `gMapUnit[unit->y][unit->x]` 会暂时为 0（行动流程自己维护），于是这个单位
被跳过，`map_sprite` 就留在了 NULL。动画期间有 Mu 显示，所以看不出来；动画一结束
Mu 被收回，问题就暴露了。

## 6. 为什么会固定 4–5 帧

- `PlayerPhase_FinishAction()` 末尾的 `EndAllMus()` 会把悬停 Mu 结束掉；
- 但地图精灵还带着 `UnitSpriteHoverUpdate()` 悬停时设置的 `config & 0x80` 隐藏位；
- 回 idle 后要等 `gUnitSpriteHoverClock` 数到 5，才会重新 `StartMu()` + `HideUnitSprite()`，
  或者由别处的 `RefreshUnitSprites()` 重建。

这段等待正好是 4–5 帧。另外 `UnitSpriteHoverUpdate()` 本身也有个坑：

```c
gUnitSpriteHoverClock++;
if (gUnitSpriteHoverClock == 5) {
    StartMu(unit);
    HideUnitSprite(unit);   // StartMu 失败也照样隐藏
    return;
}
```

动画刚结束时 proc 池可能还满着，`StartMu()` 返回 NULL，但地图精灵已经被隐藏了，
于是又出现一段「什么都没有」的帧。

## 7. 修复

1. **动画 init 不要 `RefreshUnitSprites()`**
   `muskillanim_init()` / `map_heal_anim_init()` 只保留 `EndAllMus()`，清掉战斗残留 Mu 即可；
   地图精灵的隐藏/恢复继续走 `HideUnitSprite` / `ShowUnitSprite`，不要重建整张 sprite 表。

2. **动画 end 不要抢先 `EndMu()`**
   `muskillanim_end()` / `map_heal_anim_end()` 只做 `ShowUnitSprite()` +
   `ForceSyncUnitSpriteSheet()`，把 Mu 留给行动收尾的 `EndAllMus()`。
   这样 Mu 会一直显示单位，直到行动流程接手；`EndAllMus()` 结束时地图精灵的隐藏位
   已经被清掉，单位直接从 Mu 切到地图精灵，不需要改 `PlayerPhase_FinishAction()`。

3. **悬停 StartMu 失败保护**

   ```c
   if (StartMu(unit) != NULL) {
       HideUnitSprite(unit);
       return;
   }
   gUnitSpriteHoverClock = 0;
   return;
   ```

   动画刚结束时 proc 池可能还满着，`StartMu()` 会返回 NULL。原实现照样隐藏地图精灵，
   于是又出现一段「什么都没有」的帧；失败时重置悬停时钟、保留地图精灵，下一帧重试。

4. **顺带修 `GetUnitMu()`**
   `Mu_OnEnd()` 只把 `config->id` 清 0，`sMuConfig[i].mu` 仍指向已释放的 proc；
   `GetUnitMu()` 不看槽位 id，会返回悬空 Mu。加 `sMuConfig[i].id != 0` 条件。

最终只动三个文件：`SkillMapAnim.c`、`HealAnim.c`、`unitsprite.c`；
`PlayerPhase_FinishAction()` 保持原样。

## 8. 验证方法

跑同样的 gbarun 脚本，逐帧截图后统计 `allblue`：

- HealingFocus：16560–16610 只有 16572 一帧 `3980` 的正常过渡，其余 4024–4123；
- post-action heal（EndlessVitality）：16578–16600 最低 4024。

没有出现 3966 这样的 5 帧空洞。

## 9. 经验

- 地图单位的显示有三层状态：`Unit::map_sprite`（普通地图精灵）、`MuProc`（悬停/动画用的
  一次性单位）、以及 `map_sprite->config` 上的 `0x80` 隐藏位。三者任意两两不同步，都会
  表现为「单位消失」。
- `RefreshUnitSprites()` 不是随时可调用的：它依赖 `gMapUnit`，行动/移动流程中途调用会把
  单位 sprite 清掉。
- 动画的 end 不应该和行动流程抢「收尾」：谁最后持有单位，就由谁负责把 Mu 换成地图精灵。
- 排这种「闪几帧」的问题，最有效的是 `gbarun` 每帧截图 + 像素统计定位窗口，再用 `--probe`
  看 `map_sprite` / Mu 槽 / 悬停计时，别靠肉眼逐帧看。
