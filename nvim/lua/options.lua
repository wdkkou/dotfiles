-- -- ファイル
vim.opt.fileencoding = "utf-8" -- エンコーディングをUTF-8に設定
vim.opt.swapfile = false       -- スワップファイルを作成しない
vim.opt.helplang = "ja"        -- ヘルプファイルの言語は日本語
vim.opt.hidden = true          -- バッファを切り替えるときに

-- -- カーソルと表示
vim.opt.cursorline = true -- カーソルがある行を強調

-- -- クリップボード共有
vim.opt.clipboard:append({ "unnamedplus" }) -- レジスタとクリップボードを共有

-- -- メニューとコマンド
vim.opt.wildmenu = true -- コマンドラインで補完
vim.opt.cmdheight = 1   -- コマンドラインの表示行数
vim.opt.laststatus = 2  -- 下部にステータスラインを表示
vim.opt.showcmd = true  -- コマンドラインに入力されたコマンドを表示

-- -- 検索・置換え
vim.opt.hlsearch = true   -- ハイライト検索を有効
vim.opt.incsearch = true  -- インクリメンタルサーチを有効
-- vim.opt.matchtime = 1     -- 入力された文字列がマッチするまでにかかる時間
vim.opt.ignorecase = true -- 検索時に大文字小文字を区別しな/い

-- -- インデント
vim.opt.shiftwidth = 2     -- シフト幅を4に設定する
vim.opt.tabstop = 4        -- タブ幅を4に設定する
vim.opt.expandtab = true   -- タブ文字をスペースに置き換える
vim.opt.autoindent = true  -- 自動インデントを有効にする
vim.opt.smartindent = true -- インデントをスマートに調整する

-- -- 表示
vim.opt.number = true    -- 行番号を表示
vim.opt.wrap = false     -- テキストの自動折り返しを無効に
vim.opt.showtabline = 2  -- タブラインを表示
vim.opt.showmatch = true -- 対応する括弧をハイライト表示
vim.opt.history = 10000  -- 記憶するコマンドの数を1000に設定

