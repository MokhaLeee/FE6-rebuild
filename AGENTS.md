# AGENTS.md — FE6-rebuild 工作约定

本文件对在本仓库（含任意子目录）启动的所有会话生效，与全局 `~/.dsh/AGENTS.md` 叠加；
两者冲突时，以本文件更具体的约定为准。

## 0. 宪法（最高优先级，覆盖本文件其余条款）

- **除法/取模默认走 klib**：本仓库的 lds 没有链接可用的除法例程
  （`tools/agbcc/lib/libgcc.a` 只有 `__udivsi3` 等，没有 `__aeabi_uidiv`），
  devkitARM GCC 编译出的运行期除法/取模会引用 `__aeabi_uidiv` /
  `__aeabi_uidivmod` 而链接失败。因此 `/` 改用 `k_udiv(a, b)`，
  `%` 改用 `k_umod(a, b)`（声明见 `include/hacks/klib.h`，
  实现见 `src/Common/klib/math.c`）。
- 唯一例外：除数/模数是 **2 的幂常量**（`/2`、`/4`、`/8`、`%8` 等）时
  可直接写，编译器会生成 `lsr` / `and`，不产生库调用。
  **其他常量除数不算例外**：`/10`、`/100`、`/3` 在 `arm7tdmi` + Thumb 下
  仍会生成 `bl __aeabi_uidiv`；除以 10 用 `k_udiv10` / `k_umod10`，
  其余用 `k_udiv` / `k_umod`。
- 细则：
  - klib 接口是 `u32`：运行期操作数应确认是无符号 32 位；64 位用
    `k_u64div()` / `k_u64mod()`。
  - 有符号数自行处理符号，例如 `-k_udiv(-x, n)`；禁止把负数直接传给无符号接口。
  - 除数/模数为 0 时 klib 返回 0，不要依赖该行为做分支判断。
- 判断口诀：**2 的幂常量 → 直接写；其余一律 k_udiv / k_umod（10 用 k_udiv10）。**
- 自查：改动后确认 `arm-none-eabi-nm fe6re.elf | grep '__aeabi_.*div'` 无输出。
- 范围：适用于新增代码和改动过的代码；不要求批量重写未触及的既有代码。
- **代码风格采用 Linux kernel style**：以 Linux 内核
  `Documentation/process/coding-style.rst` 为准，重点：
  - 缩进一律用 Tab（8 列），不要用空格缩进；续行也用 Tab 对齐。
  - 大括号 K&R：函数左大括号独占一行；`if` / `for` / `while` / `switch`
    的左大括号与语句同行，`} else {` 写在同一行；`switch` 的 `case`
    与 `switch` 对齐，case 体再缩进一层。
  - 指针星号贴近变量名（`struct Foo *bar`），运算符两侧留空格。
  - 单条语句不加多余大括号；一行只做一件事；行宽尽量不超过 80 列。
  - 注释优先 `/* ... */`；新增内部符号用 `lower_snake_case`，调用既有
    `CamelCase` API 时保持原名。
  - 字符串和代码里不要使用日文全角空格（U+3000）；需要空格时用
    ASCII 空格。
  - 范围：适用于新增代码和改动过的代码；不要求批量重排未触及的既有代码。
- **提交署名（Co-Authored-By）**：凡由 AI 代理生成或参与的 commit，都记得加上自己的签名, 让别人知道是你干的活

## 1. 思考与表达

- 思考、分析、解释、总结一律使用**中文**；代码、路径、命令、日志、标识符保持原文。
- 先给结论，再给必要依据；不复述用户已经知道的内容。

## 2. 提交与版本控制（硬性约束）

- **未经用户明确许可，禁止任何改变历史或远端的操作**，包括但不限于：
  `git commit`、`git commit --amend`、`git push`、`git reset`、`git rebase`、
  `git revert`、`git cherry-pick`、`git tag`、`git stash drop/pop`。
- 用户说“提交 / commit”才算许可；询问、建议、沉默、说“继续做功能”都**不算**许可。
- 需要提交时，先列出准备提交的文件和提交信息，得到明确同意后再执行。
- 只读的 `git status` / `git diff` / `git log` / `git show` 随时可用。

## 3. 改动纪律

- 改代码前先读相关文件和上下文，不凭猜测改。
- 只做被要求的事：不顺手格式化、不重构无关代码、不删除或移动用户文件、不回滚未提交改动。
- 破坏性操作（删除目录、覆盖文件、`git checkout -- .`、批量清理）先确认。
- 不擅自新增依赖或升级工具链，除非用户要求。

## 4. 构建与验证

- 环境需要 `DEVKITPRO` / `DEVKITARM` 已导出；构建入口 `make all`（产物 `fe6re.gba` / `.elf` / `.sym` / `.map`，均被 gitignore）。
- 涉及 ROM 行为的改动，优先用 `tools/emu` 验证：
  - **新入口**：`./tools/emu/testmenu-tests.sh`（debug 构建从 testmenu 启动；
    当前覆盖 testmenu → Start Game → 章节，后续按需求把旧用例逐步迁进来）。
  - **旧套件**：`./tools/emu/legacy/run-tests.sh` 仍假设开机直接到标题，正在迁移；
    不要把它当作新测试的默认入口。
  - 首次使用需 `./tools/emu/build.sh`。
- 只改文档/脚本、不影响 ROM 时，可以说明未跑构建。
- 汇报时写清楚：跑了什么、结果如何、没跑什么及原因。

## 5. 汇报与收尾

- 完成任务后说明：改了哪些文件、为什么、如何验证；不要自行提交。
- 不修改本文件，除非用户明确要求。
