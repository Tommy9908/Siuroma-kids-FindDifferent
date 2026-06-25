# 🔍 找不同遊戲 — 適合 3-6 歲小朋友

一個專為幼兒設計的「找不同」互動遊戲，老師可以上傳圖片並標記不同處，小朋友點擊遊玩！

---

## ✨ 功能特色

### 👩‍🏫 老師模式（密碼：`9527`）
- 上傳一對找不同圖片
- 在圖片上點擊新增圓圈標記不同處
- **拖曳圓圈**移動位置
- **拖曳圓圈邊緣把手**放大、縮小、改變形狀（可變橢圓形）
- 可隨時編輯、刪除已建立的遊戲
- 所有操作受密碼保護

### 👶 小朋友模式
- 瀏覽所有遊戲，點擊開始遊玩
- 點擊圖片尋找不同處
- 找到時顯示**紅色圓圈**標記
- 播放**叮咚**音效鼓勵
- 全部找到後有🎉慶祝動畫

### 🎨 視覺設計
- 明亮活潑的配色，適合幼兒
- 大字體、大按鈕、圓角設計
- 繁體中文介面
- 支援手機、平板、電腦

---

## 🚀 快速部署（完全免費）

### 第一步：設定 Supabase 後端

1. 前往 [supabase.com](https://supabase.com) 註冊免費帳號
2. 點擊「New project」建立新專案，記下 **資料庫密碼**
3. 專案建立後，左側選單 → **SQL Editor**
4. 將 `supabase-setup.sql` 的內容**全部貼上**並點擊「Run」執行
5. 左側選單 → **Storage** →「New Bucket」
   - Name：`game-images`
   - 勾選 **Public bucket**
   - 點擊 Create
6. 左側選單 → **Settings** → **API** → 複製 **Project URL** 和 **anon public key**

### 第二步：修改設定

打開 `index.html`，找到第 2 個 `<script>` 區塊，修改：

```javascript
const SUPABASE_URL = 'https://你的專案ID.supabase.co';  // 貼上 Project URL
const SUPABASE_ANON_KEY = '你的anon-key';               // 貼上 anon public key
```

### 第三步：部署網站（選一種免費方式）

**方式 A：Vercel（推薦）**
1. 將整個資料夾上傳到 GitHub
2. 前往 [vercel.com](https://vercel.com) 用 GitHub 登入
3. 點擊「New Project」→ 選擇你的 repo → Deploy
4. 完成！獲得 `https://xxx.vercel.app` 網址

**方式 B：Netlify（最簡單）**
1. 前往 [netlify.com](https://netlify.com) 註冊
2. 直接將**整個資料夾**拖曳到 Netlify 頁面上
3. 自動部署完成！

**方式 C：GitHub Pages**
1. 上傳到 GitHub repo → Settings → Pages
2. 選擇 main branch → Save
3. 獲得 `https://xxx.github.io/xxx` 網址

---

## 📖 使用說明

### 老師操作
1. 打開網站，點擊右上角 **👩‍🏫 老師模式**
2. 輸入密碼 **9527**
3. 點擊 **➕ 新增遊戲**
4. 輸入遊戲名稱，上傳兩張圖片
5. 在圖片 1 上**點擊**新增圓圈標記不同處
6. **拖曳圓圈**調整位置，**拖曳邊緣把手**改變大小形狀
7. 點擊圓圈上的 **✕** 可刪除，鍵盤 **Delete** 鍵也可刪除
8. 點擊 **💾 儲存遊戲**

### 小朋友操作
1. 在首頁看到所有遊戲卡片
2. 點擊想玩的遊戲
3. 仔細觀察兩張圖片，找出不同處
4. 點擊不同處 — 找到會有叮咚聲和紅色圓圈！
5. 全部找到後有慶祝動畫 🎉

---

## 🛠 技術架構

- **前端**：純 HTML/CSS/JavaScript（單一檔案）
- **後端**：Supabase（PostgreSQL + Storage）
- **費用**：Supabase 免費方案（500MB 資料庫 + 5GB 儲存空間，非常充足）
- **音效**：Web Audio API 合成（不需額外音檔）
- **字型**：Google Fonts（Noto Sans TC + Nunito）

---

## ⚠️ 注意事項

- 密碼 `9527` 是寫在程式碼中的，如需修改請編輯 `index.html` 中的 `TEACHER_PASSWORD`
- 因為是前端驗證，技術人員理論上可以繞過密碼。但不影響一般使用
- 上傳的圖片建議控制在 1920px 以內，避免載入過慢
- 第一次部署前請務必在 Supabase 建立 `game-images` 的 Storage bucket
- 確保 `supabase-setup.sql` 已在 Supabase SQL Editor 中執行完畢
