# commands expansion

- C56
- C57
    Loop anim from C56 to C57, mainly used in standing.

# ref: anim commands doc
The simplist anim command:

1. attack
    ```sh
    C03     # flashing for legendary weapon
    C07     # skill anim
    C04	    # release C02
    C1A/C0A # hit anim
    C01     # wait hit anim done
    C06     # exec another side anim next round
    C0D     # exec this anim next round
    ```

2. hitted (standing anim)
    ```c
    C01     # did nothing but we need an instruction here
            # anim will be blocked automatically
    ```

3. miss
    ```
    C02     # Blocked until C04
    COE     # another block (unused for most cases)
    COD     # exec standing anim
    ```

我们可以向其中插入图片, 不过此处我们只讲述最核心的部分.

1. Standing anim

    首先是 C01, C01 的作用是一个小的 barrier，它可以在命中后 HP 降低的时候把动画 block 下来. 我们通常是 C04/C1A/C01 三个指令连起来使用, 然后在 C01 后面加入攻击结束并返回的动画.

    有趣之处在另一侧, standing anim 可以做一个 frame 后跟一个 C01 然后就算完成. 实际工作中实际上这条指令会在攻击结束后就退出, 但是此时被攻击一侧的动画会如何执行呢？答案是每个 mode 的结尾都是一个 0x80000000, 这个指令指代 `ANIMSCR_BLOCKED`，anim 会继续展示最近张图片

    那么问题来了, 既然 anim 被 block 住了，那么该如何进入下一轮动画呢？答案在另一侧。当 C06 被执行的时候，它会将另一侧的动画变更为下一轮战斗的动画。通常此时为攻击一方动画的结尾。由攻击一方自行决定防守一方下次轮动画何时开始。

    需要注意的攻击方使用 C06 将另一侧的下一轮动画 release 后，被 release 的动画会立刻执行。如果在 C06-C0D 中间还插入一些帧的话，两侧的动画会同时进行。这会产生的一个问题时，动画指令同样具备将另一侧动画 block 住的能力。一个经典的现象就是 skill anim 会把另一侧动画 block 住.导致这一现象的原因正式被 release 的 anim coammand 内部有 blocking。稍后我们会对这一问题进行分析。

2. MISS anim

    接下来看一下 miss 动画。开头的 C02 是一个 block 指令，它会将自身 block 住, 直到另一侧执行指令 C04 将自己释放掉。随后脚本会继续展示接下来的动画直至结束。通常我们还会在中间插入一个 COE，这个指令同样是一个 barrier，但是通常不会被用到。已知的效果里只有投斧的动画会在这里 block，其他情况一会直接释放掉这个 block。

    在 miss 动画执行完成后是 C0D。这个指令会开启自己的下一轮动画。但是 MISS 动画则会直接将自身的 mode 设定为 standing，直接去执行 mode9 对应的 standing 动画。随后又进入了 C01 并等待对侧 C06 给自己更新。

    如果 MISS 动画执行得太慢，在攻击方动画都执行完成了还没有结束该怎么办？也没有关系。攻击方的 C06 会强行刷动画，将防守方动画强行更新为下一轮次。

3. attack anim

    最后是攻击一侧的动画。通用的部分不再赘述, 核心是 C04/C06 分别控制了 C02 的 release 以及防守方另一侧动画的下一轮开始。

    结构体数组 `gAnimRoundData` 决定了每一轮动画的 type，当已经没有下一轮动画的时候会做一次置位。当两侧的动画全都执行完成后，EkrBattle 会进一步处理经验获取/升级/龙形态变身等动画结束效果.

## new commands

1. banim entry

    添加入场动画是简单的, 只需要给 mode9 (BANIM_MODE_STANDING) 加入场动画即可.

    ```
    old:
    /// mode 9
    idle
    C01

    new:
    /// mode 9
    entry0
    entry1
    entry2
    ...
    idle
    C01
    ```

    但是这样存在很麻烦的问题:当对端通过 C06 重新将本端动画切换成 standing 模式, 此时末尾 C01 已经不再具备 block 的能力

    修改策略: entry 都放到 mode9, 战斗动画内部则切换到 mode10

    1. BanimDefaultStandingTypes 修正: 全部配置成 mode10
    2. InitMainAnims 会直接将 mode 配置成 mode9, 从而进入 entry 动画中
    3. todo 项: InitMainAnims 其他的状态要不要都切成 mode9 呢?
    4. 直接删除开局时 C01 的 looping

    todo 项:
    1. banim intro 的时候可以直接不展示 unit (unit kakudai 直接删掉?)
    2. 攻击结束后会跳两下, 需要排查一下是不是 trigger 了两次

2. banim idle
