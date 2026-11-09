# tools/emu —— 无头 GBA 测试

用 mGBA 的核心库直接跑 `fe6re.gba`，不开窗口、不装模拟器，在纯命令行的 Linux 上验证
"改完之后游戏还能正常启动、进 testmenu、进章节、读写存档"。

不需要 root，也不需要 SDL/X11/VNC。

## 一次性准备

```bash
./tools/emu/build.sh
```

首次会下载 mGBA 0.10.5 源码并只编译核心库（关掉 Qt/SDL/libretro），大约 2~3 分钟；
产物都在 `tools/emu/.build/`（已 gitignore），之后 `build.sh` 只重编 `gbarun`，
耗时 1 秒左右。依赖：`gcc cmake ninja curl zlib1g-dev libpng-dev libelf-dev`。

## 跑测试（testmenu）

```bash
./tools/emu/testmenu-tests.sh             # 全部 case
./tools/emu/testmenu-tests.sh --list      # 列出 case
./tools/emu/testmenu-tests.sh --case 4    # 只跑 case 4
./tools/emu/testmenu-tests.sh --clean     # 清输出
./tools/emu/testmenu-tests.sh other.gba   # 指定 ROM
```

退出码 0 = 全过，非 0 = 有失败项（会逐条列出）。截图和日志留在
`tools/emu/.build/out-testmenu/`。

脚本结构：

```
tools/emu/
├── testmenu-tests.sh          # runner
├── testmenu/
│   ├── lib.sh                 # 公共断言
│   ├── cases/*.sh             # 每个 case 一个函数
│   └── README.md              # 脚本设计/加 case 指南
└── legacy/                    # 旧 run-tests.sh / gdb-check.sh / 文档
```

当前 case：

| case | 断言 |
|---|---|
| 1 start game | 开机进入 testmenu（Roy/Lilina 两张脸、约 58 色）；探针 magic/menu/state 正确；选 Start Game 后探针清零；`gPlaySt.chapter >= 1` |
| 2 Test submenu | 顶层 → Test 子菜单 → Back → 顶层；探针 `menu` 按 `TOP → TEST_ROOT → TOP` 变化；子菜单里 BG3 mural 继续滚动 |
| 3 Game → Chapter 1 | 顶层 → Test → Game → Chapter 1；探针 `menu` 按 `TEST_ROOT → CATEGORY → CASE` 变化，`category/case_id/chapter` 正确 |
| 4 Save write/load | 顶层 → Test → Save → Write + Load；`IsSaveValid()` 校验 magic+checksum，读回盘上 chapter=1/turn=7，清 RAM 后重新加载，检查 turn 和单位 level/exp/item 哨兵，导出 32KB SRAM，并确认进入章节后 BG3 滚动已停 |
| 5 Save cross-run | 第一次运行 Write + `--save-out`，第二次 `--sav` 启动后 Load；检查单位哨兵和章节，证明跨进程持久化 |
| 6 battle banim | 顶层 → Test → Battle → Test Battle；GDB 断点命中 `BattleAIS_ExecCommands` / `EfxAdvanceFrameLut` |
| 7 prep | 顶层 → Test → Prep → Test Prep；test-only ChapterInfo/Event，`gPrepMenuItemCnt == 10`，`gPrepUnitCount == 9`，first red unit exists，`gPlaySt.flags & PLAY_FLAG_PREP`，chapter=46 |

脚本设计和新增 case 的方法见 [testmenu/README.md](testmenu/README.md)。
测试项目录和 EWRAM 探针方案见 [../../src/Test/README.md](../../src/Test/README.md)。

## testmenu 入口

debug 构建（`CONFIG_TEST_MENU=1`）开机直接进入 `StartGame_TestMenu()`：

```
顶层:  Start Game / Test
Test:   Game / Save / Battle / Prep / Back
Game:   Chapter 1 / Back
Save:   Write + Load / Write / Load / Back
Battle: Test Battle / Back
Prep:   Test Prep / Back
```

- 两侧头像：Roy（左）、Lilina（右）
- `Start Game` → `StartGame()`，之后按 START / A 进入章节
- `Game → Chapter 1` 直接启动第 1 章
- `Save → Write + Load` 写 `SAVE_GAME0`、校验 checksum、读回 playstate、清 RAM 后再加载
- `Battle → Test Battle` 启动注册在 `ChapterInfoTable` 的 `CHAPTER_TEST_BATTLE`，不影响 debug 第一章和正常章节
- `Prep → Test Prep` 启动注册在 `ChapterInfoTable` 的 `CHAPTER_TEST_PREP`（`has_prep=true`），不依赖 Chapter 2

debug menu 已不参与编译（`CONFIG_DEBUG_MENU=0`），源码只作为参考留在
`src/Test/ref/`。旧的 `SELECT+START` / `章開始` 入口说明已过时。

## 旧套件（归档）

旧 `run-tests.sh` 仍假设“开机直接到标题”，与当前 testmenu 入口不一致，已经移到
`tools/emu/legacy/`，只作为迁移参考：

```bash
./tools/emu/legacy/run-tests.sh
./tools/emu/legacy/run-tests.sh --quick
./tools/emu/legacy/run-tests.sh --clean
```

旧的十个用例、GDB 检查和 PromoTest 设计文档见
[legacy/README.md](legacy/README.md)。

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

`--probe "SYM:width"` 会在每个 `--stats` 帧打印该地址的值：

```bash
--probe "gPlaySt+0xE:8" --probe "gBmSt+0x4:8"
# PROBE frame=9500 addr=0202752a width=8 value=2
```

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
`Can't detach process.` 属正常）。旧套件里的
[legacy/gdb-check.sh](legacy/gdb-check.sh) 把这套流程做成了断言。

## 手动跑（改完代码自己验某个流程）

```bash
GB=./tools/emu/.build/gbarun

# 跑到第 600 帧，截图 + 看画面统计
$GB fe6re.gba --quiet --frames 600 --shot 600 --stats 600 --out /tmp/shots

# 第 700 帧按 START，看主菜单
$GB fe6re.gba --quiet --frames 1100 --hold 700:START:6 --shot 900 --out /tmp/shots

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
| `--probe "SYM:WIDTH"` | 在每个 `--stats` 帧打印内存值 |
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
./tools/emu/testmenu-tests.sh --clean    # 新 testmenu 输出
./tools/emu/legacy/run-tests.sh --clean  # 旧套件输出
./tools/emu/build.sh clean               # 删掉整个 .build（约 130MB）
```

注意 `make clean` **不会**动 `tools/emu/.build`，两者互不影响；下次要用再跑一次
`./tools/emu/build.sh` 即可。

## 已知限制

- 没有真机 BIOS，走的是 mGBA 的 **HLE BIOS**；BIOS 层行为与真机不完全等价。
- **音频没有校验**：只验证画面和流程，声音得另做采样分析。
- 存档按 32KB SRAM 处理（`CONFIG_SAVE_USE_FLASH = 0` 时的形态）；改成 flash 存档后这里要跟着改。
- 不覆盖联机、中断存档的细节。

## 自检

旧 `run-tests.sh` 做过负向验证：把 ROM 入口改成死循环（`b .`）后，6 项断言报 FAIL、退出码为 1。
新的 `testmenu-tests.sh` 同样以退出码表示结果：任一 case 的断言失败都会返回非 0。

日常用法：改完代码 `make` 之后跑一次 `./tools/emu/testmenu-tests.sh`；
需要看旧用例行为时再进 `legacy/`。
