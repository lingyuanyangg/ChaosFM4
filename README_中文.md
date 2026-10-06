# CHAOS / FM4

这是一个 Max for Live 可用的 `.maxpat` 源补丁，不包含 `.amxd`。四个声音核心分别为 Lorenz、Rössler、Chua 和 Thomas 吸引子，并通过 12 路有方向的速度 FM 矩阵互相调制，支持指数和带下限保护的线性 FM。

完整英文版见 [`README.md`](README.md)，完整中文版见 [`README_zh-CN.md`](README_zh-CN.md)。

## 使用

1. 在 Ableton Live 新建一个空白 Max Instrument。
2. 点击设备标题栏中的编辑按钮打开 Max。
3. 打开 `Chaos_FM4.maxpat`，或将其内容复制到设备编辑窗口。
4. 保存为你自己的设备时，保持 `Chaos_FM4.maxpat`、`chaos_fm4_engine.gendsp`、`chaos_fm4_ui.js` 在同一文件夹。

补丁也可在 Max 中打开检查界面；音频输出通过 `plugout~` 交给 Live。

## 控制

- `RUN`：总运行/静音开关，关闭时吸引子状态仍继续演化。
- `DRONE / MIDI`：Drone 持续发声；MIDI 模式跟随最后一个音符，并使用 Attack/Release 包络。
- `FM Mode`：`EXPONENTIAL` 使用指数速度调制；`LINEAR` 使用带下限保护的线性速度调制。
- `FM Amount`：统一缩放整个矩阵。指数模式最大约 ±4 个八度；线性模式对基础速率施加双极性偏移。
- `FM Bandwidth`：调制信号低通带宽；低值产生缓慢漂移，高值进入音频速率 FM。
- `FM Floor`：线性 FM 的最低运行速度，防止负速率导致吸引子反向积分并发散。
- `Rate`：吸引子沿轨迹运行的基础速度，不是严格的音高频率。
- `Shape`：每个系统的主要分岔参数。
- `Axis`：选择 x、y 或 z 状态作为该声部的音频和调制输出。
- 矩阵按“行是来源、列是目标”排列。例如 `A to B` 表示 A 调制 B。
- `Reset`：由 0 切到 1 时重置四个系统；切回 0 后可再次触发。
- `RANDOMIZE`：在安全范围内随机化四个吸引子、坐标轴、声像、FM 总量和稀疏调制矩阵；不会改变输出音量或演奏模式。

矩阵默认是弱环形连接：A→D、D→C、C→B、B→A。先用 `FM Amount` 控制整体强度，再调整单独连接。

## 文件

- `Chaos_FM4.maxpat`：主补丁和全部 `live.*` UI。
- `chaos_fm4_engine.gendsp`：逐采样 DSP 与 4×4 FM 网络。
- `chaos_fm4_ui.js`：两个 UI 页面之间的显示切换。
- `validation/`：独立运行检查，不是设备依赖项。
