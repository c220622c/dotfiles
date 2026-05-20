require('mini.files').setup({
    windows = {
        preview = true,
        width_preview = 50
    }
})
vim.keymap.set("n","<leader>e",":lua MiniFiles.open()<CR>",{desc = "Open File Column"})
require('mini.pick').setup({
    mappings = {
        move_down = '<C-j>',
        move_up = '<C-k>'

    }
})
vim.keymap.set("n","<leader>pb",":lua MiniPick.builtin.buffers()<CR>",{desc = "Pick Buffers"})
vim.keymap.set("n","<leader>pf",":lua MiniPick.builtin.files()<CR>",{desc = "Pick Files"})
vim.keymap.set("n","<leader>pg",":lua MiniPick.builtin.grep()<CR>",{desc = "Pick Words"})
vim.keymap.set("n","<leader>ph",":lua MiniPick.builtin.help()<CR>",{desc = "Pick Helpdoc"})
