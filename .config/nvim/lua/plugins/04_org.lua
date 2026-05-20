vim.pack.add({
  { src = 'https://github.com/nvim-orgmode/orgmode'}
})
require('orgmode').setup({
  org_agenda_files = '~/Documents/notes/*',
  org_default_notes_file = '~/Documents/notes/init.org',
})
-- Experimental LSP support
vim.lsp.enable('org')
    
