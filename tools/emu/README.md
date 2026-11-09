# tools/emu —— 无头 GBA 测试

用 mGBA 的核心库直接跑 `fe6re.gba`，不开窗口、不装模拟器，在纯命令行的 Linux 上验证
"改完之后游戏还能正常启动、进菜单、进章节、存档读写"。

不需要 root，也不需要 SDL/X11/VNC。

## 一次性准备

```bash
./tools/emu/build.sh
```

首次会下载 mGBA 0.10.5 源码并只编译核心库（关掉 Qt/SDL/libretro），大约 2~3 分钟；
产物都在 `tools/emu/.build/`（已 gitignore），之后 `build.sh` 只重编 `gbarun`，
耗时 1 秒左右。依赖：`gcc cmake ninja curl zlib1g-dev libpng-dev libelf-dev`。

## 跑测试（新 testmenu）

```bash
./tools/emu/testmenu-tests.sh          # 当前 1 个 case
./tools/emu/testmenu-tests.sh other.gba
```

退出码 0 = 全过，非 0 = 有失败项（会逐条列出）。截图和日志留在
`tools/emu/.build/out-testmenu/`。

新测试统一从 testmenu 启动，不再依赖标题画面。当前 case：

| case | 断言 |
|---|---|
| 1 testmenu → chapter | 开机进入 testmenu（Roy/Lilina 两张脸、约 58 色）；选 Start Game 离开菜单；`gPlaySt.chapter >= 1` |

后续会把旧套件的章节、存档、banim、准备画面等用例按需求迁到 `testmenu-tests.sh`。

## 旧套件（迁移中）

`run-tests.sh` 仍假设“开机直接到标题”，与当前 testmenu 入口不一致。
保留它是为了逐项迁移，**不要把它当作新测试入口**：

```bash
./tools/emu/run-tests.sh              # 旧套件：约 30 秒
./tools/emu/run-tests.sh --quick      # 旧套件冒烟
./tools/emu/run-tests.sh other.gba
```

退出码 0 = 全过，非 0 = 有失败项。截图和日志留在
`tools/emu/.build/out/`。

旧套件十个用例（供迁移参考）：

| 用例 | 断言 |
|---|---|
| 1 开机 | 700 帧不崩溃；标题画面颜色数 ≥ 32（防黑屏/花屏） |
| 2 主菜单 | 按 START 后进入菜单且画面有内容 |
| 3 进章节 | 连按 A 到 12000 帧不崩溃，章节地图有内容 |
| 4 存档 | 游戏能写出 SRAM；读回后主菜单多出「記録から始める」等选项 |
| 5 压力 | 固定种子的随机按键跑 20000 帧不崩溃，结束时画面正常 |
| 6 banim | 用 mGBA 的 GDB stub 在 `BattleAIS_ExecCommands` / `EfxAdvanceFrameLut` 上打断点，确认剧情战斗动画真的跑过 |
| 7 prepscreen | debug 章节开场自动 `EvtNextChapter(CHAPTER_2)` 通关第一章；B 过存档提示、继续按 A 推进第二章开场事件，等 `gPrepMenuItemCnt` 变成 10（准备菜单已初始化）再断言 MENU SELECT 画面 |
| 8 prep menu | 准备画面里依次进出部署、物品整理、存档、地图、出击五个子界面，断言不崩且画面正常 |
| 9 helpbox | 准备画面主菜单按 R 弹出菜单项帮助框，断言画面哈希变化且颜色数在 170–190 |
| 10 prep items | 准备画面「アイテム整理」里的五个子界面（交換/捨てる/輸送隊/リスト/武器屋）逐个进出，断言画面有内容 |

第 5 项用固定随机种子，同样的 ROM 每次跑结果一致，所以"这次挂了、上次没挂"一定是代码改动造成的。

## testmenu 入口

debug 构建（`CONFIG_TEST_MENU=1`）开机直接进入 `StartGame_TestMenu()`：

- 菜单项：`Start Game` / `Dummy`
- 两侧头像：Roy（左）、Lilina（右）
- `Start Game` → `StartGame()`，之后按 START / A 进入章节
- `Dummy` 目前只占位，按 A 返回菜单

debug menu 已不参与编译（`CONFIG_DEBUG_MENU=0`），源码只作为参考留在
`src/Test/ref/`。旧的 `SELECT+START` / `章開始` 入口说明已过时。
promo UI 的固定测试菜单仍未部署；历史设计见
[promo-test-design.md](promo-test-design.md)。

## 状态驱动的输入

固定帧号的按键脚本（`--hold-every 9500:10500:40:B:4`）在流程变化几帧后就失效。
gbarun 可以通过 `core->busRead*` 读 GBA 内存，在"状态满足"时再按键/挂调试器：

```bash
--sym fe6re.sym                            # elf2sym 或 nm 格式的符号表
--press-when "gBmSt+0x4:8:&16;START;5;0"   # 条件满足时按 START，按住 5 帧，只按一次
--press-when "gPlaySt+0xE:8:=2;B;4;40"     # 条件持续满足时每 40 帧按一次 B
--gdb-when   "gPlaySt+0xE:8:=2"            # 条件满足时挂起等 GDB（替代 --gdb-at N）
```

条件语法 `<addr>:<width>:<op><value>`：

| 部分 | 取值 |
|---|---|
| addr | 符号名、`符号名+0xNN`、`0xNNNNNNNN` |
| width | `8` / `16` / `32` |
| op | `=` 相等、`&` 与后非零、`!` 不等、`>`、`<` |

`--press-when` 的完整格式是 `条件;按键;按住帧数[;重复间隔]`，重复间隔省略时只触发一次。
多个条件用逗号连接表示 AND：

```bash
--press-when "gPlaySt+0xE:8:=2,gBmSt+0x4:8:=0;B;4;40"   # 第二章 && 还没进准备阶段
```

`--probe "SYM:width"` 会在每个 `--stats` 帧打印该地址的值，用来先摸清各阶段的状态：

```bash
--probe "gPlaySt+0xE:8" --probe "gBmSt+0x4:8"
# PROBE frame=9500 addr=0202752a width=8 value=2
```

命中时会打印 `STATE frame=N kind=press|gdb addr=...`，同时能看出是哪条条件触发。

**还做不到全状态化的地方**：开机 → 章节这一段。标题画面和主菜单都是
`chapter == 0`、地图锁为 0，内存里没有能区分两者的判据；而且从第 0 帧就开始按 A
会把 ROM 卡死，所以用例 7–9 的 A/B 推进窗口仍然用帧号。进入准备画面后改用
`gPrepMenuItemCnt`（准备菜单初始化后为 10）判断“准备画面已就绪”，不再靠
`BM_FLAG_PREP`——这个标志在第二章开场事件期间也会置位。

## GDB 调试

`gbarun` 内置了 mGBA 的 GDB stub（`--gdb` 立即挂起，`--gdb-at N` 跑到第 N 帧再挂起），
用 devkitARM 的 `arm-none-eabi-gdb` 连 `127.0.0.1:2345`：

```bash
./tools/emu/.build/gbarun fe6re.gba --gdb-at 7000 --frames 30000 \
    --hold-every 720:11000:50:A:3 &
arm-none-eabi-gdb fe6re.elf \
    -ex "target remote 127.0.0.1:2345" \
    -ex "break BattleAIS_ExecCommands" -ex "continue" -ex "bt 3"
```

断点、寄存器、内存、调用栈都能用；`detach` 不支持（gdb 退出时打印
`Can't detach process.` 属正常）。`tools/emu/gdb-check.sh` 就是把这套流程做成断言，
用来验证战斗动画代码路径被覆盖——截图只能看出"画面有内容"，断点才能确认跑到哪个函数。

## 手动跑（改完代码自己验某个流程）

`gbarun` 就是底层工具，参数随便组合：

```bash
GB=./tools/emu/.build/gbarun

# 跑到第 600 帧，截图 + 看画面统计
$GB fe6re.gba --quiet --frames 600 --shot 600 --stats 600 --out /tmp/shots

# 第 700 帧按 START，看主菜单
$GB fe6re.gba --quiet --frames 1100 --hold 700:START:6 --shot 900 --out /tmp/shots

# 从 720 帧到 12000 帧，每 50 帧按 3 帧 A（推剧情）
$GB fe6re.gba --quiet --frames 12000 --hold-every 720:12000:50:A:3 \
    --shot 12000 --out /tmp/shots

# 存档往返
$GB fe6re.gba --quiet --frames 20000 --hold-every 720:20000:50:A:3 --save-out /tmp/a.sav
$GB fe6re.gba --quiet --frames 1100 --sav /tmp/a.sav --hold 700:START:6 --shot 900 --out /tmp/b

# 每 60 帧打一次画面哈希，用来看"从哪一帧开始画面崩了"
$GB fe6re.gba --quiet --frames 3000 --hash-every 60
```

### 参数

| 参数 | 说明 |
|---|---|
| `--frames N` | 跑多少帧（60 帧 = 1 秒游戏时间） |
| `--hold F:KEYS:LEN` | 第 F 帧起按住 KEYS 共 LEN 帧 |
| `--hold-every F0:F1:STEP:KEYS:LEN` | 从 F0 到 F1，每 STEP 帧按一次 |
| `--shot F` | 第 F 帧存 PNG 到 `--out` 目录 |
| `--stats F` | 第 F 帧打印 `colors/nonblack/mean`，用来判断是否黑屏 |
| `--hash F` / `--hash-every N` | 打印画面哈希，用于比对和定位 |
| `--sav FILE` | 启动时载入 SRAM 存档 |
| `--save-out FILE` | 结束时导出 SRAM（32768 字节） |
| `--quiet` | 关掉模拟器日志 |

按键写法：`A`、`B`、`START`、`SELECT`、`UP`、`DOWN`、`LEFT`、`RIGHT`、`L`、`R`，
组合用 `+`，例如 `START+DOWN`。

## 出问题时怎么定位

- 程序崩溃：`gbarun` 会打印 `CRASH signal=.. frame=..`，直接告诉你挂在第几帧。
- 画面异常：`--stats` 看颜色数（黑屏只有 1 种颜色），`--shot` 看具体画面。
- 行为变了：`--hash-every 30` 对比改动前后从第几帧开始分叉。
- 存档相关：`--save-out` 导出、`--sav` 回灌，验证存档格式改动没把旧档读崩。

## 清理

```bash
./tools/emu/run-tests.sh --clean       # 旧套件输出
rm -rf tools/emu/.build/out-testmenu   # 新 testmenu 输出
./tools/emu/build.sh clean             # 删掉整个 .build：mGBA 源码 + 核心库 + gbarun（约 130MB）
```

注意 `make clean` **不会**动 `tools/emu/.build`，两者互不影响；下次要用再跑一次
`./tools/emu/build.sh` 即可（首次约 1 分钟，有网即可）。

## 已知限制

- 没有真机 BIOS，走的是 mGBA 的 **HLE BIOS**；BIOS 层行为与真机不完全等价。
- **音频没有校验**：只验证画面和流程，声音得另做采样分析。
- 存档按 32KB SRAM 处理（`CONFIG_SAVE_USE_FLASH = 0` 时的形态）；改成 flash 存档后这里要跟着改。
- 不覆盖联机、中断存档的细节。

## 自检

旧 `run-tests.sh` 做过负向验证：把 ROM 入口改成死循环（`b .`）后，6 项断言报 FAIL、退出码为 1，
说明黑屏、流程中断、存档异常都能被那套测试抓到。

新的 `testmenu-tests.sh` 同样以退出码表示结果：启动、菜单、章节任一断言失败都会返回非 0。

日常用法：改完代码 `make` 之后跑一次 `./tools/emu/testmenu-tests.sh`；
旧套件只在迁移对应用例时参考。
