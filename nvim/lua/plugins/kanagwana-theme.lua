return {
	"rebelot/kanagawa.nvim",
	config = function()
		local kanagawa = require("kanagawa")

		kanagawa.setup({
			theme = "dragon",
			background = {
				dark = "dragon",
				light = "lotus"
			},
		})

		vim.cmd("colorscheme kanagawa")
	end
}
