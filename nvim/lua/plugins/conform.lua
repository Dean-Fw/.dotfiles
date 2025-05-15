return {
	'stevearc/conform.nvim',
	opts = {},
	config = function()
		local conform = require("conform")

		conform.setup({
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end
}
