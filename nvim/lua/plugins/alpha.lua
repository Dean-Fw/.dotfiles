return {
	'goolord/alpha-nvim',
	config = function()
		local alpha = require('alpha')
		local dashboard = require('alpha.themes.dashboard')

		local emoji = {
			"             ░░░░░                      ",
			"             ░░░░░░                     ",
			"             ░░░░░░░                    ",
			"             ░░░░░░░                    ",
			"             ░░░░░░░                    ",
			"            ░░░░░░░░                    ",
			"            ░░░░░░░                     ",
			"           ░░░░░░░░░░                   ",
			"          ░░░░░░░░░░░░░░░░░░░░░░░░░░    ",
			"       ░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒░░░░░  ",
			"    ░░░░░░░░░░░░░░░░░░▒▒░░░░░░░░░░░░░░░ ",
			"   ░░░░░░░░░░░░░░░░░░░▒▒░░░░░░░░░░░░░▒░ ",
			"   ░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ",
			"   ░░░░░░░░░░░░░░░░░░░▒▒░░░░░░░░░░░░░░  ",
			"   ░░░░░░░░░░░░░░░░░░░▒▒░░░░░░░░░░░░▒▒  ",
			"   ░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒   ",
			"   ░░░░░░░░░░░░░░░░░░░▒▒░░░░░░░░░░░░░   ",
			"   ░░░░░░░░░░░░░░░░░░░▒▒░░░░░░░░░░░▒▒   ",
			"   ░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒    ",
			"   ░░░░░░░░░░░░░░░░░░░░▒▒░░░░░░░░░░░    ",
			"     ░░░░░░░░░░░░░░░░░░▒▒░░░░░░░░░▒▒    ",
			"         ░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒     ",
			"                                        ",
			"          KEEP ON, KEEPING ON!          ",
		}

		dashboard.section.header.val = emoji

		dashboard.section.buttons.val = {
			dashboard.button("f", "  > Find file", ":Telescope find_files<CR>"),
			dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
			dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
			dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
		}

		alpha.setup(dashboard.config)
	end
};
