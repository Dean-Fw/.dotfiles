return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"saadparwaiz1/cmp_luasnip",
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			build = "make install_jsregexp",
		},
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local snip_dir = vim.fn.stdpath("config") .. "/snippets/"
		require("luasnip.loaders.from_lua").load({paths = {snip_dir}})
		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			sources = {
				{name = "nvim_lsp_signature_help"},
				{name = "luasnip"},
				{name = "nvim_lsp"},
				{name = "buffer"},
			},
			completion = {
				completeopt = 'menu,menuone,noinsert',
			},
			signature = {
				help = true,
				signature_hints = true,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(),
				["<C-j>"] = cmp.mapping.select_next_item(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
		})
	end
}
