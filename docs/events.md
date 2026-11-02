# 事件與動作對照

兩版的事件、列號及幀數相同，圖片各自獨立。路徑均為儲存庫／解壓縮目錄的相對位置。

| 情境／事件 | state | 列（從 0 起） | 幀數 | 動作 |
|---|---|---:|---:|---|
| 無優先活動時 | `idle` | 0 | 6 | 抱書、眨眼、輕微歪頭 |
| 向右拖曳至少 4px | `running-right` | 1 | 8 | 向右小跑步 |
| 向左拖曳至少 4px | `running-left` | 2 | 8 | 向左小跑步 |
| first-awake 喚醒問候通知 | `waving` | 3 | 4 | 微笑揮手 |
| onPointerEnter 進入角色區域 | `jumping` | 4 | 5 | 原地點頭／眨眼，不跳躍、無花冠 |
| 任務失敗或錯誤通知 | `failed` | 5 | 8 | 擔心、低頭、恢復 |
| 等待回答、核准或其他決定 | `waiting` | 6 | 6 | 抱書、歪頭等待 |
| 任務執行中或載入中 | `running` | 7 | 6 | 寫作、落筆；不是跑步 |
| 任務完成且有未讀結果 | `review` | 8 | 6 | 閱讀與檢查書頁 |

滑鼠離開 `onPointerLeave` 會恢復目前任務狀態，沒有獨立圖片列。多個任務同時存在時，優先顯示等待輸入、失敗、完成待閱、執行中、待機。

實際使用 `pets/<版本>/spritesheet.png`，每格 192×208。GIF 只是預覽。App 將一般非待機動畫播三輪後回待機；滑鼠移入單輪 840ms，三輪 2.52 秒。圖片檔案不能設定只播放一次。

## 待機：`idle`

無優先活動時 → 抱書、眨眼、輕微歪頭；6 幀。

| 一般版 | 流暢版 |
|---|---|
| ![一般版 idle](../previews/standard/idle.gif) | ![流暢版 idle](../previews/smooth/idle.gif) |

- 一般版 GIF：`previews/standard/idle.gif`
- 流暢版 GIF：`previews/smooth/idle.gif`
- 原生 PNG：`pets/claude-mini-standard/spritesheet.png`、`pets/claude-mini-smooth/spritesheet.png`

## 向右移動：`running-right`

向右拖曳至少 4px → 向右小跑步；8 幀。

| 一般版 | 流暢版 |
|---|---|
| ![一般版 running-right](../previews/standard/running-right.gif) | ![流暢版 running-right](../previews/smooth/running-right.gif) |

- 一般版 GIF：`previews/standard/running-right.gif`
- 流暢版 GIF：`previews/smooth/running-right.gif`
- 原生 PNG：`pets/claude-mini-standard/spritesheet.png`、`pets/claude-mini-smooth/spritesheet.png`

## 向左移動：`running-left`

向左拖曳至少 4px → 向左小跑步；8 幀。

| 一般版 | 流暢版 |
|---|---|
| ![一般版 running-left](../previews/standard/running-left.gif) | ![流暢版 running-left](../previews/smooth/running-left.gif) |

- 一般版 GIF：`previews/standard/running-left.gif`
- 流暢版 GIF：`previews/smooth/running-left.gif`
- 原生 PNG：`pets/claude-mini-standard/spritesheet.png`、`pets/claude-mini-smooth/spritesheet.png`

## 問候：`waving`

first-awake 喚醒問候通知 → 微笑揮手；4 幀。

| 一般版 | 流暢版 |
|---|---|
| ![一般版 waving](../previews/standard/waving.gif) | ![流暢版 waving](../previews/smooth/waving.gif) |

- 一般版 GIF：`previews/standard/waving.gif`
- 流暢版 GIF：`previews/smooth/waving.gif`
- 原生 PNG：`pets/claude-mini-standard/spritesheet.png`、`pets/claude-mini-smooth/spritesheet.png`

## 滑鼠移入：`jumping`

onPointerEnter 進入角色區域 → 原地點頭／眨眼，不跳躍、無花冠；5 幀。

| 一般版 | 流暢版 |
|---|---|
| ![一般版 jumping](../previews/standard/jumping.gif) | ![流暢版 jumping](../previews/smooth/jumping.gif) |

- 一般版 GIF：`previews/standard/jumping.gif`
- 流暢版 GIF：`previews/smooth/jumping.gif`
- 原生 PNG：`pets/claude-mini-standard/spritesheet.png`、`pets/claude-mini-smooth/spritesheet.png`

## 失敗：`failed`

任務失敗或錯誤通知 → 擔心、低頭、恢復；8 幀。

| 一般版 | 流暢版 |
|---|---|
| ![一般版 failed](../previews/standard/failed.gif) | ![流暢版 failed](../previews/smooth/failed.gif) |

- 一般版 GIF：`previews/standard/failed.gif`
- 流暢版 GIF：`previews/smooth/failed.gif`
- 原生 PNG：`pets/claude-mini-standard/spritesheet.png`、`pets/claude-mini-smooth/spritesheet.png`

## 等待輸入：`waiting`

等待回答、核准或其他決定 → 抱書、歪頭等待；6 幀。

| 一般版 | 流暢版 |
|---|---|
| ![一般版 waiting](../previews/standard/waiting.gif) | ![流暢版 waiting](../previews/smooth/waiting.gif) |

- 一般版 GIF：`previews/standard/waiting.gif`
- 流暢版 GIF：`previews/smooth/waiting.gif`
- 原生 PNG：`pets/claude-mini-standard/spritesheet.png`、`pets/claude-mini-smooth/spritesheet.png`

## 工作中：`running`

任務執行中或載入中 → 寫作、落筆；不是跑步；6 幀。

| 一般版 | 流暢版 |
|---|---|
| ![一般版 running](../previews/standard/running.gif) | ![流暢版 running](../previews/smooth/running.gif) |

- 一般版 GIF：`previews/standard/running.gif`
- 流暢版 GIF：`previews/smooth/running.gif`
- 原生 PNG：`pets/claude-mini-standard/spritesheet.png`、`pets/claude-mini-smooth/spritesheet.png`

## 完成待閱：`review`

任務完成且有未讀結果 → 閱讀與檢查書頁；6 幀。

| 一般版 | 流暢版 |
|---|---|
| ![一般版 review](../previews/standard/review.gif) | ![流暢版 review](../previews/smooth/review.gif) |

- 一般版 GIF：`previews/standard/review.gif`
- 流暢版 GIF：`previews/smooth/review.gif`
- 原生 PNG：`pets/claude-mini-standard/spritesheet.png`、`pets/claude-mini-smooth/spritesheet.png`

