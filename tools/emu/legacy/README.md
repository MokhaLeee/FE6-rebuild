# tools/emu/legacy —— 旧测试套件（已归档）

> 这套脚本假设“开机直接到标题 / 主菜单”，与当前 testmenu 入口不一致。
> 保留它只是为了按需求把用例逐条迁进 `tools/emu/testmenu-tests.sh`。
> **不要把它当作新测试的默认入口。**

## 运行

```bash
./tools/emu/legacy/run-tests.sh              # 全量：约 30 秒
./tools/emu/legacy/run-tests.sh --quick      # 只跑启动 + 菜单
./tools/emu/legacy/run-tests.sh other.gba    # 测指定 ROM
./tools/emu/legacy/run-tests.sh --clean      # 只清输出
```

截图和日志留在 `tools/emu/.build/out/`。

## 旧套件用例

| 用例 | 断言 |
|---|---|
| 1 开机 | 700 帧不崩溃；标题画面颜色数 ≥ 32（防黑屏/花屏） |
| 2 主菜单 | 按 START 后进入菜单且画面有内容 |
| 3 进章节 | 连按 A 到 12000 帧不崩溃，章节地图有内容 |
| 4 存档 | 游戏能写出 SRAM；读回后主菜单多出「記録から始める」等选项 |
| 5 压力 | 固定种子的随机按键跑 20000 帧不崩溃，结束时画面正常 |
| 6 banim | GDB 断点确认 `BattleAIS_ExecCommands` / `EfxAdvanceFrameLut` 被走到 |
| 7 prepscreen | 第一章结束进第二章准备画面，`gPrepMenuItemCnt == 10` |
| 8 prep menu | 准备画面里依次进出部署、物品整理、存档、地图、出击 |
| 9 helpbox | 准备画面主菜单按 R 弹出帮助框 |
| 10 prep items | 物品整理里的交換/捨てる/輸送隊/リスト/武器屋逐个进出 |

第 5 项用固定随机种子，同样的 ROM 每次结果一致。

## GDB 检查

`gdb-check.sh` 是旧套件第 6 项的实现，也可以单独跑：

```bash
./tools/emu/legacy/gdb-check.sh
```

它用 `gbarun` 的 `--gdb-at` 和 `arm-none-eabi-gdb` 在
`BattleAIS_ExecCommands` / `EfxAdvanceFrameLut` 上打断点。

## 相关文档

- [promo-test-design.md](promo-test-design.md)：旧 PromoTest 设计草案
- [../README.md](../README.md)：当前 `gbarun` 和 testmenu 测试入口
- [../../../src/Test/README.md](../../../src/Test/README.md)：新 testmenu/测试项结构
