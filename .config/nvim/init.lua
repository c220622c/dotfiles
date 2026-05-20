local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Better escape using jk in insert mode
keymap("i", "jk", "<ESC>", default_opts)


-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)
-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)

--create and Switch windows
keymap("n", "<A-cr>", ":vs<CR>", default_opts)
keymap("n", "<C-cr>", ":split<CR>", default_opts)
keymap("n", "<A-h>", "<C-w>h", default_opts)
keymap("n", "<A-j>", "<C-w>j", default_opts)
keymap("n", "<A-k>", "<C-w>k", default_opts)
keymap("n", "<A-l>", "<C-w>l", default_opts)

--set space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.ignorecase = true -- searching case insensitive
vim.o.smartcase = true -- except patterns contain uppercase
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
-- visual
vim.o.number = true
vim.o.relativenumber = true

vim.o.cc = "120"
vim.o.cursorline = true
vim.o.cursorcolumn = true

vim.cmd("syntax on")

vim.o.termguicolors = true
-- highlight all trailing spaces
-- indentation
vim.o.expandtab = true -- <Tab> expands spaces instead of \t
vim.o.tabstop = 4 -- spaces per <Tab>
vim.o.shiftwidth = 4 --spaces per indentation level
vim.o.smartindent = false -- indentation is aware of newline insert
vim.o.splitright = true
vim.o.clipboard = "unnamedplus"

local config_path = vim.fn.stdpath("config") .. "/lua/plugins/"
local files = vim.fn.split(vim.fn.glob(config_path .. "*.lua"), "\n")

for _, file in ipairs(files) do
    -- Get the filename without path or extension
    local module = file:match("([^/]+)%.lua$")
    require("plugins." .. module)
end
