return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local cmp = require("cmp_nvim_lsp")
		local caps = cmp.default_capabilities()
		vim.lsp.config("lua_ls", {
			capabilities = caps,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
		vim.lsp.config("omnisharp", {
			settings = {
				FormattingOptions = {
					OrganizeImports = true
				},
				RoslynExtensionsOptions = {
					EnableImportCompletion = true
				}
			}
		})
	end,
}
