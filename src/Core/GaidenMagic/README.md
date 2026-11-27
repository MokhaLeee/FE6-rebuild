# GaidenMagic 背包外魔法

移植自 fe8u cskillsys 的 gaiden magic。核心思想：把**不占背包栏**的魔法书
塞进 `BattleUnit` 的 weapon slot 号空间，让战斗与杖的两条既有流程原样复用，
只在「由 slot 取 item」这一个入口做重定向。

本目录只放**列表层**。slot 解析、射程、菜单等消费方分散在各自模块，
契约见下文各节。

## 1. 现状

| 部分 | 状态 | 位置 |
|---|---|---|
| 列表层（表 / 缓存 / 可用性） | 已实现 | `gaiden-magic.c`、`gaiden-magic-data.c` |
| slot 解析 | 已实现 | `src/Core/BattleSys/BattleWeapon.c` |
| 自动装备兜底 | 已实现 | `src/Common/item-sys/source/item.c` |
| `UpdateEquipInfoWindow` | 已实现 | `src/Common/map/bmfx.c` |
| 全局范围显示 | 已实现 | `range-getter.c`、`range-display.c`、`commandflags.c` |
| `GetUnitUseBits` | 已实现 | `src/Core/UnitHooks/source/unit.c` |
| 攻击菜单选书 | **未接**，见 §7 | — |
| HP 消耗扣血 | 未实现 | — |
| W.Mag 菜单 | 未实现 | — |
| AI 使用 | 未实现 | — |
| `gGaidenChaxConfigs` ext 表 | 未实现 | — |

对外 API 见 `include/hacks/gaiden-magic.h`。

## 2. slot 编号

```c
ITEMSLOT_INV0..ITEMSLOT_INV4   0..4    背包
ITEMSLOT_OVERFLOW              5       溢出物品
ITEMSLOT_ARENA_PLAYER          6       斗技场
ITEMSLOT_ARENA_OPPONENT        7
ITEMSLOT_BALLISTA              8       弩车
ITEMSLOT_GAIDEN_BMAG1..7       9..15   黑魔法
ITEMSLOT_GAIDEN_WMAG1..7       16..22  白魔法
```

**9 以后没有任何东西存放在 `Unit::items[]` 里**，必须走
`GetItemFromSlot()`，不能直接索引。

## 3. 列表层

### 3.1 `struct GaidenMagicList`

```c
struct GaidenMagicList {
	struct {
		const struct PInfo *pinfo;
		const struct JInfo *jinfo;
		i8 level;
		i8 uid;
	} sign;

	u8 bmag_cnt;
	u8 bmags[GAIDEN_MAGIC_LIST_LEN];
	u8 wmag_cnt;
	u8 wmags[GAIDEN_MAGIC_LIST_LEN];
};
```

- 全局只有一个实例（`static`，放 EWRAM），`GetGaidenMagicList()` 返回它；
- `sign` 是缓存签名，`pinfo` / `jinfo` / `level` / `id` 任一变化即重建，
  所以换人、升级、转职、复用单位槽都不需要手动通知；
- 列表**不落存档**：每次从表重算，天然与存档兼容；
- `uid` 必须是 `i8`。`Unit::id` 是 `i8`，存成 `u8` 会让 `id` 第 7 位为 1
  的单位（友军 / 敌军）永远比不相等，缓存永久失效。

### 3.2 两张表

```c
struct GaidenPinfoConfigEnt { u8 level; u8 iid; };
struct GaidenPinfoConfig    { const struct GaidenPinfoConfigEnt *ent; };

extern struct GaidenPinfoConfig const gGaidenPinfoConfigList[0x100];
extern u8 const gGaidenWeaponCostList[0x100];
```

- `gGaidenPinfoConfigList`：按 `pinfo->id` 索引，每项是一个 `{level, iid}`
  数组，`iid == IID_NONE` 终止；只有 `unit->level >= level` 才生效；
- `gGaidenWeaponCostList`：按 iid 索引的 HP 消耗，未配置即 0（免费）。

表的顺序就是槽位顺序，重复条目在装载时按顺序去重。

> cskillsys 用 256 字节位图 + 两遍倒序扫描来做去重和「高级魔法优先」。
> 这里改成单遍顺序遍历 + 最多 7 次线性查重：省掉 256 字节栈，且表顺序
> 直接等于槽位顺序，比「按 iid 倒序」更符合配置者的直觉。

### 3.3 分类

| 列表 | 判据 |
|---|---|
| B.Mag | `GetItemAttributes(iid) & ITEM_ATTR_WEAPON`，`CONFIG_GAIDEN_MAGIC_MUST_BE_MAGIC` 为真时还要 `ITEM_ATTR_MAGIC` |
| W.Mag | `GetItemKind(iid) == ITEM_KIND_STAFF` |

**B 与 W 互斥**：一本书只会进其中一个列表。`GetGaidenMagicAutoEquipSlot()`
只遍历 bmags 也正因为 wmags 里全是杖，不能当武器自动装备。

### 3.4 可用性两层

```c
bool CanUnitUseGaidenMagic(struct Unit *unit, int item);      /* 静态：rank */
bool CanUnitUseGaidenMagicNow(struct Unit *unit, int item);   /* + 封印 + HP */
```

`CONFIG_GAIDEN_MAGIC_REQUIRES_WRANK` 为 0（默认）时，`CanUnitUseGaidenMagic()`
恒真，即「不检查武器等级」；这与 cskillsys 的默认一致。

`CanUnitUseGaidenMagicNow()` 的 HP 判断用 `unit->hp <= cost`，即 HP 必须
**严格大于**消耗，施法永远不会致死。这一点必须与将来的 HP 扣血逻辑保持一致。

## 4. 解析层

`GetItemFromSlot()`（`BattleWeapon.c`）是全游戏唯一的 slot → item 解析入口：

```c
int GetItemFromSlot(struct Unit *unit, int item_slot);
```

- `0..4` 读 `unit->items[]`；
- `5..8` 读溢出物品 / 斗技场 / 弩车；
- `9..22` 调 `GetGaidenMagicItem()`，返回值补 `| (0xFF << ITEM_USES_SHIFT)`，
  给书一个满耐久，防止误走的 `GetItemAfterUse()` 把书「用坏」；
- `iid == 0` 返回 `0`（不是 `0xFF00`），否则会得到一个「有耐久但没有物品」
  的非零值。

`SetBattleUnitWeapon()` 的 gaiden 分支必须同时设：

```c
bu->weapon_inventory_slot = item_slot;
bu->has_inventory_weapon = FALSE;
```

`has_inventory_weapon == TRUE` 时 `BattleApplyItemEffect()` /
`BattleApplyUnitUpdates()` 会把武器写回 `unit->items[weapon_inventory_slot]`，
对 gaiden slot 就是写 `items[9..22]` —— 直接踩进 `wexp[]` 之后的内存。

## 5. 射程分工

这是整套移植里最容易改错的地方，契约写在这里：

**`GetUnit*Reach()` 一概只报背包。** gaiden 射程由两个独立函数提供：

```c
u32 GetGaidenMagicWeaponReach(struct Unit *unit);   /* bmags */
u32 GetGaidenMagicStaffReach(struct Unit *unit);    /* wmags */
```

调用方自己决定要不要 `|` 上：

| 调用点 | OR gaiden | 理由 |
|---|---|---|
| `BuildUnitCompleteAttackRange()` | 武器版 | 游标悬停的全局威胁范围 |
| `BuildUnitCompleteStaffRange()` | 杖版 | 同上 |
| `ListAttackPositions()` | 武器版 | 全局攻击位置枚举 |
| `UnitAttackItemMenu_Entry_SwitchIn()` | 否 | 传具体 slot，靠 `GetItemFromSlot()` 解析 |
| `UnitActionMenu_Staff_SwitchIn()` | 否 | 杖菜单尚未接 W.Mag |
| `UnitStaffItemMenu_Entry_SwitchIn()` | 否 | 同上 |

**为什么不直接写进 `GetUnitWeaponReach()`**：它同时被「全局范围显示」和
「单位行动菜单 hover」调用。前者应该包含 gaiden，后者只列背包物品——写进
内层会让菜单画出一个它永远不会提供的范围。同样，不要把 OR 加回
`GetUnitStaffReach()` 内部：它只有全局这一个调用点，但保持「getter 只报
背包」这条规则一致，比省一次 OR 更重要。

## 6. 自动装备

```c
int GetGaidenMagicAutoEquipSlot(struct Unit *unit);   /* 第一个能付得起的书，或 -1 */
```

`GetUnitEquippedWeaponSlot()` / `GetUnitEquippedWeapon()` 在背包遍历不到可用
武器时用它兜底。因此：

- 背包有武器的单位**行为完全不变**（循环先返回）；
- 背包空、但有书的单位会自动用书战斗，敌方 AI 与自动战斗同样适用。

这是 gaiden magic 的预期行为，也是目前唯一能让书真正参与战斗的路径
（攻击菜单尚未接，见 §7）。

`GetUnitEquippedWeapon()` 也必须走 `GetItemFromSlot()`，否则它会返回 0 而
`GetUnitEquippedWeaponSlot()` 返回 gaiden slot，两者不一致会让
`BattleUnitTargetSetEquippedWeapon()` 把 `weapon_before` 留成 0。

## 7. 攻击菜单方案（已回退）

曾尝试把书直接列进 `MenuInfo_UnitAttackItem`（背包 5 项 + 书若干项），
让「攻击 → 选武器 → 选目标」这条两步流程直接复用。方案本身可行，
`AttackMapSelect_SwitchIn()` 本来就用 `gAction.item_slot` 做预测，
`BattleGenerateRealInternal()` 也留了 `battle_actor_slot()` 采信该值。

回退的原因是**菜单空间**：

- `MENU_MAX_ENTRIES = 11`（`include/menu.h`），超出会静默截断；
- 菜单每项占 2 tile，`rect.h` 由项数自适应（`menu.c`），
  11 项算出 23 tile = 184px，超出 160px 屏幕；
- 折中成 5 背包 + 4 书 = 9 项（152px）刚好放下，但 `GAIDEN_MAGIC_LIST_LEN`
  是 7，后 3 本书在菜单里选不到。

当前状态：`battle_actor_slot()` 与 `UpdateEquipInfoWindow()` 的 gaiden 分支
已经预留，但**没有调用方**会给 `gAction.item_slot` 赋 gaiden 值。
要重做需要先解决菜单空间（扩大 `MENU_MAX_ENTRIES` 并改行高，或做分页）。

## 8. FE6 特有的坑

1. **`Unit::id` 是 `i8`**。签名、比较一律用 `i8`，见 §3.1。
2. **`UNIT_FACTION(unit)` 是 `unit->id & 0xC0`**，取值 `0x00/0x40/0x80/0xC0`，
   不是 FE8 的 `0/1/2`。将来做 `gGaidenChaxConfigs` 的 faction 条件时，
   字段语义必须重新定义（建议用 bit mask，0 表示全阵营）。
3. **没有 `CA_PROMOTED`**。`struct JInfo` 只有 `jid_promote`，没有 FE8 的
   `attributes`。cskillsys 表里的 `level & 0x80`（仅上级职业）这一位在 FE6
   没有对应判定，当前直接不支持。
4. **`MENU_MAX_ENTRIES = 11`**，见 §7。
5. **类型枚举叫 `ITEM_KIND_*`**，属性位叫 `ITEM_ATTR_*`，物品索引用
   `GetItemIid()` 而不是 FE8 的 `GetItemIndex()`。
6. **除法走 klib**。如果要实现 cskillsys 的 `PutGaidenMagicCostNumber()`
   （逐位画数字），`/10`、`%10` 必须用 `k_udiv10` / `k_umod10`。

## 9. 未完成

| 项 | 说明 |
|---|---|
| HP 消耗扣血 | 现在选书不扣 HP。需要在 `BattleGenerateHit()` 里登记 `ExtBattleHit`，并把 `struct BattleHitExpa` 扩出 `hp_cost`；表现（专用扣血动画）可后置 |
| W.Mag | 列表层和 `CanUnitUseGaidenMagic()` 已支持，缺菜单入口与 `DoItemAction` 的 slot 直达 |
| AI | AI 决策的候选武器槽还没收录书；`AiStartCombatAction()` 也还没有 gaiden slot 分支 |
| ext 表 | `gGaidenChaxConfigs`（按 pid/jid/level/faction/skill/evflag 发放）未实现；它依赖 skill 与 event flag，而这两者不在缓存签名里，需要额外脏位机制 |
| 攻击菜单 | 见 §7 |

## 10. 变更记录

- `61a98af` 列表层与两张表
