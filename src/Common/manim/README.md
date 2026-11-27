# manim — 战斗地图动画与地图治疗动画

本目录放「不进入战斗动画（banim）体系、直接在地图上播」的动画。
战斗地图（manim）那套流程仍由 `manim.c` 提供，这里再补了两种自足的动画：
状态回复特效（`masseffect.c`）和地图治疗（`HealAnim.c`）。

对外 API 见 `include/map-anim.h`（地图治疗）与 `include/masseffect.h`（状态特效）。

## 1. 文件职责

| 文件 | 职责 |
|---|---|
| `manim.c` | 原版 manim 流程：信息窗、经验槽、`Manim_Finish()` 等，读写 `gManimSt` |
| `masseffect.c` | 地图上的状态回复/毒伤特效（`StartStatusHealEffect()`、`ApplyHazardHealing()`） |
| `HealAnim.c` | 地图治疗动画（加血 + 光辉 + hp 槽），本文重点 |

`HealAnim.c` 刻意不读不写 `gManimSt`、`gBattleUnitA`、`gBattleHits`，
所以技能行动和战后 hook 都能用。

## 2. 地图治疗动画的三层

```c
void StartMapHealAnim(ProcPtr parent, struct Unit *unit, int amount);
void StartMapSkillHealAnim(ProcPtr parent, struct Unit *unit, int amount, u16 sid);
void StartMapHealEffect(ProcPtr parent, struct Unit *unit, int amount);
```

| API | 做什么 | 谁负责 Mu 与姿势 |
|---|---|---|
| `StartMapHealAnim()` | 伤药式的完整演出：藏地图精灵、起 Mu、播「使用道具」姿势 30 帧、跑治疗、收尾 | 自己起 Mu，收尾时不 `EndMu()` |
| `StartMapSkillHealAnim()` | 技能版演出：姿势与图标由技能激活动画提供，治疗从它的 callback 里跑 | 交给 `NewMuSkillAnim()` |
| `StartMapHealEffect()` | 只跑治疗本体：加速度、光辉、hp 槽 | 完全不管，调用方保证 Mu 与姿势已就位 |

治疗本体（`StartMapHealEffect()`）的时序：

```
下一帧  apply        AddUnitHp()，把「当前 hp」记成槽的起点
        start_bar    解 manim 窗口图形，画 3 位数字 + 6 格 hp 槽
        start_fx     预载 Pal_ManimHeal 再 StartManimHealFx()（先透明后淡入）
        loop         每帧 +1/4 hp，整点播 SONG_75；数字与槽同步
        10 帧后      清槽，还原 UI 窗口图形与图标调色板，InitBmBgLayers()
```

## 3. 两种可用写法

两种写法语义相同，只是「谁把 unit/amount 送进 callback」不同。
仓库里各有一个实例，保持两种都可用。

### 3.1 写法 A：`StartMapSkillHealAnim()`（一行版）

```c
StartMapSkillHealAnim(parent, unit, amount, sid);
```

实例：`src/SkillEffects/PostActionSkills/HealAfterAction.c`

内部是一个壳 proc：壳启动 `NewMuSkillAnim()`，把动画挂成自己的子 proc；
callback 里通过 `proc_parent` 把自己的 `unit/amount` 取回来，再
`StartMapHealEffect()`。所以**不需要任何文件级 static 变量**。

proc 树与锁（`SpawnProcLocking` 逐层加锁）：

```
hook / action proc
└─ 壳 proc（ProcScr_MapSkillHealAnim）
   └─ Mu 技能动画（ProcScr_MuSkillAnim）
      └─ 治疗本体（ProcScr_MapHealEffect）
```

- 动画结束解锁壳，壳才走到 `PROC_END`；治疗未播完时动画被锁住，不会提前收尾。
- `sid` 为 0 时没有图标可弹，内部退化成 `StartMapHealAnim()`。
- 回血量在**调用这一帧**算好。

### 3.2 写法 B：自己接 `NewMuSkillAnim()` 的 callback

```c
static void heal_cb(ProcPtr proc)
{
	int amount;

	/* 只拿到动画 proc，unit/amount 自己解决（gActiveUnit 或自备上下文）。 */
	amount = perc_of(GetUnitMaxHp(gActiveUnit), SKILL_EFF0(sid));

	StartMapHealEffect(proc, gActiveUnit, amount);
}

NewMuSkillAnim(unit, sid, parent, heal_cb, NULL);
```

实例：`src/SkillEffects/MenuSkills/HealingFocus.c`

callback 的形参只有动画 proc，拿不到 unit/amount，这是唯一的成本；
换来的是主动权：可以选择在 `callback1` 还是 `callback2` 里做事，
回血量也可以等到 callback 时刻再算（图标播完、约几十帧之后）。

### 3.3 怎么选

| 情况 | 选 |
|---|---|
| 就是一个「弹图标 → 回血」，回血量与启动当帧状态无关 | A |
| 需要在 `callback2` 里做别的事，或回血量要按 callback 时刻的状态算 | B |
| 除回血外还要改 Mu、播别的特效（如 `AlertStance.c` 的状态回复） | B |

## 4. 红线

1. **Mu 的收尾归行动流程。** 两个动画的 end 都只做
   `ShowUnitSprite()` + `ForceSyncUnitSpriteSheet()`（外加恢复 Mu 朝向与
   sprite clock），不 `EndMu()`；最后的 `EndAllMus()` 由
   `PlayerPhase_FinishAction()` 之类负责。抢着 `EndMu()` 会出现
   「Mu 没了、地图精灵还没回来」的几帧空洞，见 `docs/map-heal-flicker.md`。
2. **init 里不要 `RefreshUnitSprites()`。** 行动期间 `gMapUnit` 可能暂时为 0，
   重建 sprite 表会把 `Unit::map_sprite` 置空，动画结束后单位就没了。
   只 `EndAllMus()` 清残留即可。
3. **不要把 `StartMapHealEffect()` 的 parent 传 NULL** 去与动画并行；
   传动画 proc 才是「等图标播完再回血」的语义。
4. **不要在 `HealAnim.c` 里引入 `gManimSt` / `gBattleUnitA` 依赖。**
   一旦依赖，技能行动与战后 hook 就不能共用这套动画。

## 5. 自检

```sh
make all
arm-none-eabi-nm fe6re.elf | grep -E 'StartMap(Skill)?Heal'
grep -rn 'StartMapHealEffect\|StartMapSkillHealAnim' src --include=*.c --include=*.h
```

- 地图治疗不应产生除法库调用：
  `arm-none-eabi-nm fe6re.elf | grep '__aeabi_.*div'` 应无输出。
- 改完后按 `docs/map-heal-flicker.md` 第 8 节的方法逐帧统计单位像素，
  确认动画结束没有空洞帧。
