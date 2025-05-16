return {
	{
		"williamboman/mason.nvim",
		config = function()
			local mason = require("mason")
			mason.setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			local lspconfig = require("mason-lspconfig")

			lspconfig.setup({
				ensure_installed = {
					"lua_ls" ,
					"terraformls",
					"omnisharp",
				},
			})
		end,
		opts = {
			handlers = {
				function (name)
					local lspconfig = require('lspconfig')
					local cmp = require("cmp_nvim_lsp")
					local caps = cmp.default_capabilities()
					lspconfig[name].setup({capabilities = caps})
				end,
			},
		},
	},
}
