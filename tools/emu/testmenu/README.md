# tools/emu/testmenu —— 新 testmenu 测试脚本结构

`tools/emu/testmenu-tests.sh` 现在只是 runner；真正的用例和公共断言在
`tools/emu/testmenu/` 下。

## 目录

```
tools/emu/
├── testmenu-tests.sh          # runner：参数解析、加载 case、汇总结果
├── testmenu/
│   ├── lib.sh                 # ok/bad、colors_at、probe_n_at、assert_completed
│   ├── cases/
│   │   ├── 01-start-game.sh
│   │   ├── 02-test-root.sh
│   │   ├── 03-game-chapter1.sh
│   │   ├── 04-save-write-load.sh
│   │   ├── 05-save-cross-run.sh
│   │   ├── 06-battle-banim.sh
│   │   ├── 07-prep-screen.sh
│   │   ├── 08-prep-menu.sh
│   │   ├── 09-prep-sortie.sh
│   │   ├── 10-prep-helpbox.sh
│   │   ├── 11-prep-statscreen.sh
│   │   ├── 12-mss-statscreen.sh
│   │   ├── 13-prep-save-map.sh
│   │   └── 14-game-chapter2.sh
│   └── README.md              # 本文件
└── legacy/                    # 旧 run-tests.sh / gdb-check.sh / 文档
```

## 用法

```bash
./tools/emu/testmenu-tests.sh             # 全部 case
./tools/emu/testmenu-tests.sh --list      # 列出 case
./tools/emu/testmenu-tests.sh --case 4    # 只跑 case 4
./tools/emu/testmenu-tests.sh --clean     # 清掉 out-testmenu/
./tools/emu/testmenu-tests.sh other.gba   # 指定 ROM
```

输出目录：`tools/emu/.build/out-testmenu/`。

## 加一个 case

1. 在 `cases/` 新建 `NN-<name>.sh`。
2. 定义一个函数，例如：
   ```bash
   case_05_battle_smoke() {
       local log="$OUT/NN-battle.log"
       echo "== NN/NN testmenu: ..."
       "$RUN" "$ROM" --quiet --frames ... --sym "$SYM" ... >"$log" 2>&1
       assert_completed "$log" "..."
       # 用 colors_at / probe_n_at 断言
   }
   ```
3. 在 `testmenu-tests.sh` 里 source 这个文件，并把函数加进
   `CASE_KEYS` / `CASE_FUNCS` / `CASE_TITLES`。

## 约定

- 每个 case 一个函数，命名 `case_<NN>_<name>`。
- 公共逻辑只放 `lib.sh`，不要在 case 里复制 `ok/bad/probe`。
- `--probe` 的顺序写在 case 注释里，`probe_n_at` 按顺序取值。
- 失败用 `bad()`，成功用 `ok()`；runner 最后统一返回退出码。
- 截图/日志都写 `$OUT`。
- 旧 `run-tests.sh` 在 `legacy/`，不要往新 runner 里加旧帧号脚本。
