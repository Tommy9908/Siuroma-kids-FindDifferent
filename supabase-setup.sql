-- ============================================================
-- 找不同遊戲 — Supabase 資料庫設定
-- ============================================================
-- 1. 前往 https://supabase.com 註冊免費帳號
-- 2. 建立新專案
-- 3. 在專案的 SQL Editor 中執行以下全部指令
-- 4. 在 Storage 頁面手動建立名為 game-images 的 public bucket
-- ============================================================

-- 建立遊戲資料表
CREATE TABLE IF NOT EXISTS games (
  id          UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  title       TEXT NOT NULL,
  image1_url  TEXT NOT NULL,
  image2_url  TEXT NOT NULL,
  differences JSONB NOT NULL DEFAULT '[]',
  created_at  TIMESTAMPTZ DEFAULT NOW()
);

-- 啟用 RLS
ALTER TABLE games ENABLE ROW LEVEL SECURITY;

-- 允許所有人讀取遊戲（小朋友需要看到遊戲列表）
CREATE POLICY "允許公開讀取遊戲" ON games FOR SELECT USING (true);

-- 允許新增遊戲（老師端使用）
CREATE POLICY "允許新增遊戲" ON games FOR INSERT WITH CHECK (true);

-- 允許更新遊戲
CREATE POLICY "允許更新遊戲" ON games FOR UPDATE USING (true) WITH CHECK (true);

-- 允許刪除遊戲
CREATE POLICY "允許刪除遊戲" ON games FOR DELETE USING (true);
