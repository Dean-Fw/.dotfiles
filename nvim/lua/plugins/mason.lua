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
					"lua_ls",
					"terraformls",
					"omnisharp",
				},
			})
		end
	}
}
