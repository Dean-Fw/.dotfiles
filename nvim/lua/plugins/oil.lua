return {
	"stevearc/oil.nvim",
	config = function()
		local oil = require("oil")

		oil.setup({
			view_options = {
				show_hidden = true
			}
		})

		vim.keymap.set("n", "]", "<CMD>Oil<CR>", {desc = "Open Parent Dir"})
	end,
}
