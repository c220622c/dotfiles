vim.pack.add({ 'https://github.com/nvim-mini/mini.nvim' })
require("mini.pairs").setup()
require("mini.comment").setup({
    mappings = {
        comment = '<leader>c',
        comment_line = '<leader>c',
        comment_visual = '<leader>c'
    }
})
