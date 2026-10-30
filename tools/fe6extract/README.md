# fe6extract

从 FE6 的 `.gba` 镜像里提取数据表的命令行工具。
目前实现了一张表：`pr_PInfoTable`（角色基础数据，226 条 × 48 字节）。

Rust 工作区，**零外部依赖**，可离线编译。

```
fe6extract info  <rom>                  查看 ROM 头 + 表定位链路
fe6extract pinfo <rom> [选项]           导出 pr_PInfoTable
```

## 为什么长这样

```
crates/fe6-core/   纯数据层：ROM 存取、符号表、PInfo 解码（无 UI、无 print）
crates/fe6-cli/    命令行壳：参数、表格 / JSON 输出
legacy-c/          最早用 C 写的验证版本，只用来做交叉比对
```

同一个 `fe6-core` 以后可以被 Windows 的图形界面直接复用——GUI 只是第三个壳。

## 编译环境

- 需要 Rust **≥ 1.75**（`Cargo.toml` 里已声明 `rust-version`）。
- `Cargo.lock` 固定为 version 3，1.75 和新版 cargo 都能读——机器上同时装了
  apt 的 `cargo 1.75` 和 rustup 的 `cargo 1.99` 时不会互相打架。
- 两个 cargo 并存时，`cargo --version` 命中的是 PATH 里靠前的那个：

  ```bash
  export PATH="$HOME/.cargo/bin:$PATH"   # 想用 rustup 的新版就加这句
  ```

## 用法

```bash
cargo build --release          # 离线可编译，产物约 350 KB
./target/release/fe6extract info  ../../fe6re.gba
./target/release/fe6extract pinfo ../../fe6re.gba --verify
./target/release/fe6extract pinfo ../../fe6re.gba --json --out pinfo.json
./target/release/fe6extract pinfo ../../fe6re.gba --limit 10
```

`--verify` 会检查 226 条记录的 `id` 是否连续、名字 id 是否非零、
`support_info` 指针是否落在 ROM 内，任一项失败退出码为 1。

## 关键地址（fe6re.gba）

| 符号 | 地址 | 说明 |
|---|---|---|
| `pr_PInfoTable` | `0x08100000` | 指针单元格，内容 = 表地址 |
| `PInfoTable` | `0x084C13BC` | 真正的表，226 × 0x30 字节 |
| 下个符号（`IInfoTable`） | `0x084C3E1C` | 用来反推条目数 |

`pr_PInfoTable` 在 `.sym` 里被同地址的 `__reloc_map_start` 遮住了，
所以工具在找不到该符号时，会反向扫描 ROM 中哪个 4 字节单元等于表地址。

## 已知的正确性验证

- 226 条记录的 `id` 全部等于 `下标 + 1`（布局对了才会成立）
- 表内容与 `gameinfo/pinfo.o` 的 `.gameinfo_data` 节逐字节一致
  （`support_info` 指针除外，那是链接期重定位）
- 抽样对照 `gameinfo/pinfo.c`：Roy / Clarine / Fae / Dayan 数值一致
- Rust 与 `legacy-c` 两个独立实现的 JSON 完全相同

## 其他表

同样的套路可以接着做 `pr_JInfoTable`（职业）、`pr_IInfoTable`（物品）、
支援表、章节表——`fe6-core` 里加一个 `struct` + `decode` 即可。
