vim.keymap.set('n', '<C-l>', '<Cmd>Neotree toggle<CR>')
vim.keymap.set('n', '<C-f>', '<Cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>ss', '<Cmd>Telescope live_grep search_dirs=.<cr>')

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
