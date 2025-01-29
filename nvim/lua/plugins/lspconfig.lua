return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile"},
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true }
	},
	config = function()
		local mason = require("mason-lspconfig")
		local lspconfig = require("lspconfig")
		local cmp = require("cmp_nvim_lsp")
		local caps = cmp.default_capabilities()

		mason.setup_handlers({
			function(server)
				lspconfig[server].setup({capabilities = caps})
			end,
			["lua_ls"] = function()
				lspconfig["lua_ls"].setup({
					capabilities = caps,
					settings = {
						Lua = {
							diagnostics = {
								globals = {"vim"},
							},
						},
					},})
				end,
			})
		end
	}
