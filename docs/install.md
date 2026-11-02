# 安裝與更新

## 原生安裝流程

推薦開啟 [線上安裝頁](https://kzger.github.io/claude-mini-pets/)，選擇兩個安裝按鈕。也能從 [Releases](https://github.com/kzger/claude-mini-pets/releases/latest) 下載 `install.html`，以瀏覽器開啟。頁面會利用 [官方的 `codex://pets/install` 格式](https://learn.chatgpt.com/docs/app/commands)，將版本名稱、公開 PNG 網址與精靈圖版本傳給已安裝的桌面 App。

如果瀏覽器詢問是否開啟 Codex／ChatGPT，確認目標是你已安裝的桌面 App。這個流程仍需在 App 內完成安裝，不會靜默建立寵物。

## 本機安裝

下載 ZIP 並解壓縮，執行根目錄 `install.ps1`。預設安裝兩版：

```powershell
.\install.ps1 -Variant both
```

可選 `standard` 或 `smooth`。自訂位置範例：

```powershell
.\install.ps1 -Variant both -CodexHomePath 'E:\CodexHome'
```

預設路徑：

```text
%USERPROFILE%\.codex\pets\
  claude-mini-standard\
    pet.json
    spritesheet.png
    ATTRIBUTION.md
  claude-mini-smooth\
    pet.json
    spritesheet.png
    ATTRIBUTION.md
```

已設定 `CODEX_HOME` 時會使用該位置。`-WhatIf` 只列出預計操作，不安裝。
已有相同檔案會略過；已有不同內容則停止，需自行備份或選擇其他安裝位置。

也可以手動複製 `pets` 下的兩個完整子資料夾。完成後到「設定 → Pets／Mini & Pets」重新整理並選用。

## 同帳號與雲端圖片

另一台電腦如果使用同一帳號，先檢查清單是否已列出兩版；如果已存在，直接選用即可。

只修改本機 `.codex/pets` 的 PNG，並不會更新已儲存的雲端寵物。更新雲端紀錄時，須透過 Pets 管理介面或工具更新目標寵物；應確認版本名稱並保留原有 ID。
此公開儲存庫不包含任何帳號專屬寵物 ID。其他帳號安裝後會有自己的 ID。

## 顯示與大小

使用 `/pet` 顯示或隱藏浮動寵物；Windows 的預設全域快捷鍵為 `Windows + Alt + P`。大小可在寵物設定的 Customize／Pet size 調整。[官方操作說明](https://learn.chatgpt.com/docs/pets)

原生格式固定 1536×1872，8 欄、9 列，每格 192×208。高解析來源或放大預覽不能提高 App 的原生格位解析度。GIF 預覽不控制實際播放次數。
