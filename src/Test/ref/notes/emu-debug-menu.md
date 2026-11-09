# debug menu 入口（历史文档）

> **已过时**：当前 debug 构建由 `src/Test/testmenu/testmenu.c` 接管
> （`CONFIG_TEST_MENU=1`），`CONFIG_DEBUG_MENU=0`。本文只保留旧 debug menu
> 入口的记录，当前入口见 `tools/emu/README.md` 的 “testmenu 入口” 和
> `src/Test/ref/notes/entry-main.c.txt`。
>
> 来源：`tools/emu/README.md`（HEAD 0413799）第 46–53 行。

## debug menu 入口（旧）

- **开机隐藏入口**：按住 `SELECT+START` 开机 → `StartDebugMenu_LoadGame()` 的 debug load game 菜单：
  `リリースエントリ` / `どこでも再開` / `手再開` / `章開始`。
  `章開始` 用 LEFT/RIGHT 选章，A 开始新游戏（写 `SAVE_GAME0`，仅 debug）。
- promo UI 的固定测试菜单目前**未部署**；设计草案见
  [promo-test-design.md](promo-test-design.md)。之前的 `SELECT+START` 地图入口/`テスト`
  子菜单已退回。
