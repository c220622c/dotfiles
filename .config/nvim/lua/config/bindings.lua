local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Better escape using jk in insert mode
keymap("i", "jk", "<ESC>", default_opts)

-- Better indent
keymap("v", "K", "<gv", default_opts)
keymap("v", "J", ">gv", default_opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)
-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)

--Use BufferLineGoToBuffer to Switch Buffer
keymap("n", "<A-1>", ":BufferLineGoToBuffer 1<CR>", default_opts)
keymap("n", "<A-2>", ":BufferLineGoToBuffer 2<CR>", default_opts)
keymap("n", "<A-3>", ":BufferLineGoToBuffer 3<CR>", default_opts)
keymap("n", "<A-4>", ":BufferLineGoToBuffer 4<CR>", default_opts)
keymap("n", "<A-5>", ":BufferLineGoToBuffer 5<CR>", default_opts)
keymap("n", "<A-6>", ":BufferLineGoToBuffer 6<CR>", default_opts)
keymap("n", "<A-7>", ":BufferLineGoToBuffer 7<CR>", default_opts)
--create and Switch windows
keymap("n", "<A-cr>", ":vs<CR>", default_opts)
keymap("n", "<C-cr>", ":split<CR>", default_opts)
keymap("n", "<A-h>", "<C-w>h", default_opts)
keymap("n", "<A-j>", "<C-w>j", default_opts)
keymap("n", "<A-k>", "<C-w>k", default_opts)
keymap("n", "<A-l>", "<C-w>l", default_opts)
