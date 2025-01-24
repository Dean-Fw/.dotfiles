require("config.lazy")

vim.lsp.set_log_level("debug")

vim.keymap.set('n', '<C-l>', '<Cmd>Neotree toggle<CR>') 
vim.keymap.set('n', '<C-f>', '<Cmd>Telescope find_files<cr>')
