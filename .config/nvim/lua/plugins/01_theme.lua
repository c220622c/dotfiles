vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }
vim.cmd.colorscheme "catppuccin-mocha"
require('vim._core.ui2').enable()
require('mini.statusline').setup()
require('mini.icons').setup()
-- mini.starter,disabled causeof ugly..
-- local starter = require('mini.starter')
-- starter.setup({
--   items = {
--     starter.sections.telescope(),
--   },
--   content_hooks = {
--     starter.gen_hook.adding_bullet(),
--     starter.gen_hook.aligning('center', 'center'),
--   },
-- })
require('mini.indentscope').setup({
    mappings = {
        object_scope = '',
        object_scope_with_border = '',
        goto_top = '',
        goto_bottom = ''
    }
})
require('mini.notify').setup()
vim.pack.add { { src = "https://github.com/akinsho/bufferline.nvim", name = "bufferline" } }
require("bufferline").setup({
		options = {
			mode = "buffers",
			numbers = "ordinal",
			close_command = "bdelete! %d",
			indicator = {
				icon = "▎", -- this should be omitted if indicator style is not 'icon'
				style = "icon",
			},
			buffer_close_icon = "󰅖",
			modified_icon = "● ",
			close_icon = " ",
			left_trunc_marker = " ",
			right_trunc_marker = " ",
		}
	})
local miniclue = require('mini.clue')
miniclue.setup({
  triggers = {
    -- Leader triggers
    { mode = { 'n', 'x' }, keys = '<leader>' },

    -- `[` and `]` keys
    { mode = 'n', keys = '[' },
    { mode = 'n', keys = ']' },

    -- Built-in completion
    { mode = 'i', keys = '<C-x>' },

    -- `g` key
    { mode = { 'n', 'x' }, keys = 'g' },

    -- Marks
    { mode = { 'n', 'x' }, keys = "'" },
    { mode = { 'n', 'x' }, keys = '`' },

    -- Registers
    { mode = { 'n', 'x' }, keys = '"' },
    { mode = { 'i', 'c' }, keys = '<C-r>' },

    -- Window commands
    { mode = 'n', keys = '<C-w>' },

    -- `z` key
    { mode = { 'n', 'x' }, keys = 'z' },
  },

  clues = {
    -- Enhance this by adding descriptions for <Leader> mapping groups
    miniclue.gen_clues.square_brackets(),
    miniclue.gen_clues.builtin_completion(),
    miniclue.gen_clues.g(),
    miniclue.gen_clues.marks(),
    miniclue.gen_clues.registers(),
    miniclue.gen_clues.windows(),
    miniclue.gen_clues.z(),
  },
})
