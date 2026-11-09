# debug menu 入口（摘自 tools/emu/README.md）

> 来源：`tools/emu/README.md`（HEAD 0413799）第 46–53 行。
> 注意：文中“按住 SELECT+START 开机”的描述与当前 `src/Common/crt0/main.c`
> 不一致——当前 debug 构建是无条件 `StartDebugMenu_LoadGame()`。

## debug menu 入口

- **开机隐藏入口**：按住 `SELECT+START` 开机 → `StartDebugMenu_LoadGame()` 的 debug load game 菜单：
  `リリースエントリ` / `どこでも再開` / `手再開` / `章開始`。
  `章開始` 用 LEFT/RIGHT 选章，A 开始新游戏（写 `SAVE_GAME0`，仅 debug）。
- promo UI 的固定测试菜单目前**未部署**；设计草案见
  [promo-test-design.md](promo-test-design.md)。之前的 `SELECT+START` 地图入口/`テスト`
  子菜单已退回。
