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

## 跑测试

```bash
./tools/emu/run-tests.sh              # 全量：约 30 秒（5 个用例）
./tools/emu/run-tests.sh --quick      # 只测开机 + 主菜单：约 1 秒
./tools/emu/run-tests.sh other.gba    # 测别的 ROM
```

退出码 0 = 全过，非 0 = 有失败项（会逐条列出）。截图和日志留在
`tools/emu/.build/out/`。

七个用例：

| 用例 | 断言 |
|---|---|
| 1 开机 | 700 帧不崩溃；标题画面颜色数 ≥ 32（防黑屏/花屏） |
| 2 主菜单 | 按 START 后进入菜单且画面有内容 |
| 3 进章节 | 连按 A 到 12000 帧不崩溃，章节地图有内容 |
| 4 存档 | 游戏能写出 SRAM；读回后主菜单多出「記録から始める」等选项 |
| 5 压力 | 固定种子的随机按键跑 20000 帧不崩溃，结束时画面正常 |
| 6 banim | 用 mGBA 的 GDB stub 在 `BattleAIS_ExecCommands` / `EfxAdvanceFrameLut` 上打断点，确认剧情战斗动画真的跑过 |
| 7 prepscreen | debug 章节开场自动 `EvtNextChapter(CHAPTER_2)` 通关第一章；B 过存档提示、START 打开第二章的 MENU SELECT 准备画面 |

第 5 项用固定随机种子，同样的 ROM 每次跑结果一致，所以"这次挂了、上次没挂"一定是代码改动造成的。

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
./tools/emu/run-tests.sh --clean     # 只删测试输出（截图、日志、存档）
./tools/emu/build.sh clean           # 删掉整个 .build：mGBA 源码 + 核心库 + gbarun（约 130MB）
```

注意 `make clean` **不会**动 `tools/emu/.build`，两者互不影响；下次要用再跑一次
`./tools/emu/build.sh` 即可（首次约 1 分钟，有网即可）。

## 已知限制

- 没有真机 BIOS，走的是 mGBA 的 **HLE BIOS**；BIOS 层行为与真机不完全等价。
- **音频没有校验**：只验证画面和流程，声音得另做采样分析。
- 存档按 32KB SRAM 处理（`CONFIG_SAVE_USE_FLASH = 0` 时的形态）；改成 flash 存档后这里要跟着改。
- 不覆盖联机、中断存档的细节。

## 自检

`run-tests.sh` 做过负向验证：把 ROM 入口改成死循环（`b .`）后，6 项断言报 FAIL、退出码为 1，
说明黑屏、流程中断、存档异常都能被这套测试抓到。

日常用法建议：改完代码 `make` 之后跑一次 `./tools/emu/run-tests.sh`；
只想快速确认没搞崩启动，就用 `--quick`（1 秒）。
