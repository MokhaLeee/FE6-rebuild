# src/Test/cases

测试项按领域放这里。**当前不预建分类目录**：等第一个领域确定后，再建
`cases/<domain>/`，避免先造一堆空目录。

## 添加一个领域

1. 建 `cases/<domain>/`。
2. `<domain>_cases.c` 里定义：
   - `MenuEntInfo_Test<Domain>[]`
   - `MenuInfo_Test<Domain>`
   - 各 case 回调 `test_<domain>_<case>()`
3. `<domain>_cases.h` 里声明 `MenuInfo_Test<Domain>`（领域本地头可以放在同目录）。
4. 在 `src/Test/testmenu/testmenu_test.c` 的 `MenuInfo_TestRoot` 里加一个类别入口。
5. 给该领域分配 `category` id；领域内 `case_id` 从 1 开始。
6. 在 `tools/emu/testmenu-tests.sh` 里加对应脚本 case。

## 约定

- 每个子菜单控制在 8–10 项：`MENU_MAX_ENTRIES = 11`，屏幕也放不下更多。
- case 回调命名：`test_<domain>_<case>`。
- 开章节/放单位/给道具等公共逻辑放 `src/Test/harness/`，不要复制。
- 测试状态只写 `gTestMenuProbe`，不要再新增分散的全局变量。
- 所有实现文件用 `#if CONFIG_TEST_MENU` 包住。
- 新增/改动代码遵循 Linux kernel style（见仓库根 `AGENTS.md` §0）。

## 当前状态

- 顶层：`Start Game` / `Test`
- `Test` 第二层：暂时只有 `Back`
- 第一个领域和分类列表待定
