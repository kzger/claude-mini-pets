# Claude Mini Pets

兩個適用於 Codex／ChatGPT Windows 桌面 App 的 Claude 娘 Mini：**一般版**與**流暢版**。

| 一般版：Claude 娘 | Claude 娘・流暢版 |
|---|---|
| ![一般版](previews/standard/idle.gif) | ![流暢版](previews/smooth/idle.gif) |
| 表情與姿勢變化較明顯 | 較小幅的連續姿勢，固定腳底、減少跳動 |

兩版是獨立寵物。滑鼠移入均為原地眨眼，不跳躍、沒有花冠。此儲存庫不包含季節版。

## 在另一台 Windows 使用

如果另一台使用相同帳號，先到「設定 → Pets／Mini & Pets」查看是否已有兩版；若有，直接選用，無須重複安裝。

### 方法一：開啟原生安裝視窗（推薦）

1. [下載安裝頁 install.html](https://github.com/kzger/claude-mini-pets/releases/download/v1.0.0/install.html)。
2. 用瀏覽器開啟下載的檔案。
3. 分別按「安裝一般版」與「安裝流暢版」，在桌面 App 開啟的安裝視窗完成操作。

需要已安裝且支援 `codex://pets/install` 的桌面 App，以及網路連線。此連結使用 [官方支援的寵物安裝格式](https://learn.chatgpt.com/docs/app/commands)。

### 方法二：下載 ZIP，安裝到本機

1. [下載 Windows 安裝包](https://github.com/kzger/claude-mini-pets/releases/download/v1.0.0/claude-mini-pets-windows-v1.0.0.zip)並解壓縮。
2. 在解壓縮後的目錄開啟 PowerShell，執行：

   ```powershell
   .\install.ps1 -Variant both
   ```

   只裝一版可改成 `-Variant standard` 或 `-Variant smooth`；`-WhatIf` 可先檢視操作。
3. 在「設定 → Pets／Mini & Pets」重新整理自訂寵物，再選擇要顯示的版本。

若 Windows 不允許執行腳本，可直接將 `pets/claude-mini-standard` 與 `pets/claude-mini-smooth` 整個資料夾，複製到 `%USERPROFILE%\.codex\pets\`。有設定 `CODEX_HOME` 時，改用該目錄下的 `pets` 資料夾。

安裝程式支援 Windows PowerShell 5.1 與 PowerShell 7；已有相同內容會略過，遇到不同內容會停止，不覆寫。它只做本機安裝，不會更新既有雲端寵物。

### 讓另一台 Codex 代為安裝

把這段話貼到另一台 Windows 的 Codex：

> 請從 https://github.com/kzger/claude-mini-pets/releases/latest 下載 Windows 安裝包，解壓縮後閱讀 README，安裝一般版與流暢版兩個 Mini。先檢查目前帳號是否已有同名寵物，避免重複建立；保留既有其他寵物，不要覆寫。

## 事件與動作

[完整對照表與 GIF 預覽](docs/events.md) · [安裝與更新說明](docs/install.md)

實際使用的是 PNG 精靈圖，GIF 只作預覽。原生 App 每格固定 **192×208**、共 57 格，非待機動畫會播放三輪；無法透過圖片把 hover 改為只播一次。流暢版改善相鄰姿勢與對齊，沒有解除這些限制。

在目前格式中，`jumping` 是滑鼠移入使用的 state 名稱；兩版該列都已換成原地眨眼。

## 檔案

- `pets/`：兩版的 `pet.json`、透明精靈圖與署名文件。
- `previews/`：各事件的 GIF，方便在安裝前比較。
- `install.html`：開啟原生寵物安裝流程的離線頁面。
- `install.ps1`：可攜式本機安裝程式，無須管理員權限。
- `pets.json`：版本與精靈圖 SHA-256。

## 來源與授權

原畫：**CrossPet（lokicorvus）**，Claude 娘社群設定。此處包含原作改編、AI 輔助補繪與原生精靈圖組裝，由 kzger 整理分享，並非 OpenAI／Anthropic 官方作品。

依原作授權以 **CC BY-NC-SA 4.0** 分享：保留署名、限非商業用途，改編作品採相同授權。[完整署名](ATTRIBUTION.md) · [授權](LICENSE)
