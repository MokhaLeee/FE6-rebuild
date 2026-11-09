# C07 Critical Cut-in

> Jester 风格的暴击 cut-in：中间一条蓝色闪电 band + 攻击者 96x80 大头像，
> 在 C07（攻击开始）技能框之后播放，结束后继续攻击。
>
> 代码位于 `src/Common/banim/C07/critcutin.c`，由 `c07.c` 的 C07 handler 启动。

---

## 1. 触发顺序

`src/Common/banim/C07/c07.c` 的 `ProcScr_BanimC07Handler`：

```c
C07Handler_Init        // 锁住 anim
C07Handler_EkrSkill    // 技能框
PROC_WHILE(EkrSkillExists)

C07Handler_CritCutin   // NewCritCutin
PROC_WHILE(CritCutinExists)

C07Handler_End         // 解锁，继续攻击
```

`NewCritCutin()` 的触发条件：

- `gEkrDistanceType != EKR_DISTANCE_FARFAR`；
- 当前 round 的 `gBattleHits[round].attributes` 带 `BATTLE_HIT_ATTR_CRIT`；
- 攻击者有独立头像（`gpEkrBattleUnitLeft/Right->unit.pinfo->fid != 0`）。

没有满足条件时不会启动 proc，`CritCutinExists()` 立即为 false，C07 handler 直接继续。

## 2. Proc 流程

```c
PROC_YIELD,
PROC_CALL(CritCutin_OnInit),
PROC_REPEAT(CritCutin_Loop),
PROC_CALL(CritCutin_OnEnd),
PROC_END
```

### OnInit

- `SpellFx_ClearBG1Position()` / `SpellFx_ClearColorEffects()`；
- 隐藏 4 个 `gAnims`（记录 `hidden_anims`，结束时只恢复自己隐藏的）；
- 备份 `OBPAL_EFX_FACE`（OBJ palette 3）的 16 个颜色；
- `SpellFx_Begin()`，`gEfxBgSemaphore++`。

### Loop

- `EfxAdvanceFrameLut()` 推进 band 帧；
- `SpellFx_WriteBgMap()` / `SpellFx_RegisterBgGfx()` / `SpellFx_RegisterBgPal()`；
- 最右两列 `0x1E/0x1F` 用 `gBg1Tm[0]` 填掉，避免 32 宽 tilemap 边缘残留；
- `SetBgOffset(BG_1, 0, 10)` 把 band 上移，避免压住下方 HUD；
- `clock == 6` 时启动头像；
- `EfxAdvanceFrameLut()` 返回 -1 时 `Proc_Break`。

### OnEnd

- `EndFace()`；
- 恢复 `gFaceConfig[slot].palid`；
- 恢复 `OBPAL_EFX_FACE` 的 16 个颜色；
- `SpellFx_ClearBG1()` / `ClearBG1Position()` / `ClearColorEffects()`；
- `gEfxBgSemaphore--` / `SpellFx_Finish()`；
- 恢复被隐藏的 `gAnims`。

## 3. band 资源与帧

资源目录：

```text
contents/skillsys/CritCutin/
  CritCutin_open0..2.png
  CritCutin_loop0..5.png
  CritCutin_close0..1.png
```

11 张唯一帧，帧表为：

```text
open0..2
loop0..5 × 4 轮
close0..1
```

每帧持续 2 tick，总共约 58 tick。

符号在：

```text
gamedata/skill-sys/CritCutin.S
```

资源由 Makefile 已有的 GRIT 规则生成：

```make
%.img.bin %.map.bin %.pal.bin: %.png
	$(GRIT) $< -gB 4 -gzl -m -mLf -mR4 -mzl -pn 16 -ftb -fh! -o $@
```

输出：

- `*.img.bin`：**LZ77 压缩的 tile atlas**，GRIT 的 map 模式会把重复 tile 去重，
  解压后正好是 0x2000 字节 / 256 tiles；
- `*.map.bin`：**LZ77 压缩的 30x20 TSA**；
- `*.pal.bin`：32 字节 palette。

`CritCutin.S` 直接 `.incbin` 这三个文件。`CritCutin.o` 在 Makefile 中依赖
`$(CRITCUTIN_IMGS) $(CRITCUTIN_MAPS) $(CRITCUTIN_PALS)`。

> 这和 `EfxSkillVanilla.efx.event` 用的是同一套 GRIT 输出格式；
> 不需要 `tsa_generator.py` / `.feimg1.bin` / `.fetsa1.bin`。

## 4. 头像

`CritCutin_StartFace()`：

- 使用 96x80 face（`FACE_DISP_KIND(FACE_96x80)`）；
- x 以攻击者 `anim->xPosition` 为基准，向攻击者一侧偏 8；
- 左侧 `FACE_DISP_FLIPPED`；
- x clamp 在 `56..184`，y = 15；
- 使用和升级界面相同的 face 配置：

```c
SetFaceConfig(FaceConfig_EkrLevelup);
proc->face = StartFace(0, fid, x, 15,
    FACE_DISP_KIND(FACE_96x80) | FACE_DISP_HLAYER(FACE_HLAYER_0));
```

`FaceConfig_EkrLevelup[0]` 是：

```c
{ chr_off = 0, palid = 0xF }
```

所以头像放在 OBJ VRAM 起始的 `0x06010000`，用 OBJ palette 15；
这个区域避开了单位动画使用的 `0x06014000` / `0x06016000`，
也不会碰左右 HIT 面板使用的 OBJ5/OBJ6。

结束后：

```c
EndFace(proc->face);
SetFaceConfig(NULL);
```

并备份/恢复 OBJ15 的 palette。

## 5. 配置

`include/configs/configs/config-debug.h`：

```c
#define CONFIG_DEBUG_CRIT_CUTIN 0
```

设为 0 可关闭 cut-in，其余代码不变。

`CONFIG_DEBUG_CRIT_CUTIN=1` 会跳过 `BATTLE_HIT_ATTR_CRIT` 检查，方便测试；
正常游戏保持 0。

## 6. 验证

```bash
export DEVKITPRO=$HOME/devkitpro
export DEVKITARM=$HOME/devkitpro/devkitARM
make all -j8
./tools/emu/testmenu-tests.sh
# 旧套件（迁移中）：
# ./tools/emu/legacy/run-tests.sh --quick
# ./tools/emu/legacy/run-tests.sh
```

测试暴击时，可以临时用 GDB 强制当前 round 为 CRIT：

```gdb
break ParseBattleHitToBanimCmd
commands
silent
set gBattleHits[0].attributes = 1
continue
end
continue
```

这只是测试手段，不要把 `gBattleHits` 的强制修改写进代码。

预期：

- band 在中间展开；
- 攻击者头像出现；
- 左右 HIT/DMG/CRT 面板 palette 正常；
- cut-in 结束后恢复攻击动画。

## 7. 已知限制

- 只处理近距离（`EKR_DISTANCE_FARFAR` 直接跳过）；
- 没有独立 SFX；
- 没有独立头像的单位直接跳过；
- 头像固定用 OBJ3；如果以后有其他 cut-in 也用 OBJ3，需要改成动态分配；
- band 仍然走 BG1 的 `SpellFx_*` 管线，若未来再改 banim HUD 的 BG/OBJ 分配，需要重新确认 palette 和 tilemap 不冲突。
