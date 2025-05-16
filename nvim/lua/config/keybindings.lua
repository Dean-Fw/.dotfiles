vim.keymap.set('n', '<C-l>', '<Cmd>Neotree toggle<CR>')

vim.keymap.set('n', '<leader>th', '<Cmd>horizontal below terminal<cr>A')
vim.keymap.set('n', '<leader>tv', '<Cmd>vertical below terminal<cr>A')
vim.keymap.set('t', '<leader>tq', '<C-\\><C-N><Cmd>q<cr>')

vim.keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>ss', '<Cmd>Telescope live_grep search_dirs=.<cr>')

vim.keymap.set('n', '<leader>..', '<Cmd>cd ..<cr>')

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
