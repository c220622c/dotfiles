vim.pack.add({ 'https://github.com/nvim-mini/mini.completion' })
require('mini.completion').setup({
    lsp_completion = {
        source_func = 'omnifunc'
    }
})
local map_multistep = require('mini.keymap').map_multistep
map_multistep('i', '<Tab>',   { 'pmenu_next' })
map_multistep('i', '<S-Tab>', { 'pmenu_prev' })
map_multistep('i', '<CR>',    { 'pmenu_accept', 'minipairs_cr' })
map_multistep('i', '<BS>',    { 'minipairs_bs' })
