return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		local M = {}

		M.snoopy3 = [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠾⢿⣶⣾⠿⠿⠿⣷⣆⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡾⠋⠀⠀⠀⠀⠀⠈⠻⢶⣄⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣀⣤⡶⠶⠶⠶⠶⠿⠻⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣷⠀⠀
⠀⠀⠀⠀⣠⡾⠋⠁⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡄⢹⡗⠀
⠀⠀⠀⣰⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⢻⡇⠀⠀⠀⠀⠀⠀⡤⣴⣿⣿⣿⡊⣿⠀
⠀⠀⣠⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⣾⣹⣿⣿⣿⣿⣷⢿⡇
⣰⠞⣹⣗⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀⢸⣧⣿⣿⣿⣿⣿⡏⣿⠃
⣷⣿⣿⢿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡟⠁⠀⢸⡿⣿⣿⣿⣿⡟⣰⡟⠀
⠈⠉⠁⠈⠛⢷⣦⣄⣀⣀⡀⠀⠀⣀⣠⡴⠋⠀⠀⢀⣼⣧⢿⣿⠿⣻⣼⠏⠁⠀
⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠙⠛⠻⠿⢧⣄⠀⠀⣼⡏⠁⠙⠻⠿⠟⠋⠁⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣤⣼⡯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⡿⠏⢹⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠟⠀⠀⠀⢿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⠀⠀⢀⡆⠈⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⢸⣟⠀⣸⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡄⠀⠀⢸⡏⢀⣘⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠷⣦⣤⣜⢷⣼⣼⢿⣿⡓⠶⠦⣄⣀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⡤⡦⣤⣏⣉⣿⠀⣿⠀⠉⠛⠟⠛⠋⠉⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣰⢿⡍⣴⢾⣻⠉⠉⠉⠉⠋⠀⠉⠋⠛⢳⡄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠹⣿⣾⣿⣾⣷⣾⣷⣶⣶⣶⣶⣶⣶⣿⠿⠏⠀⠀⠀⠀⠀⠀
]]

		-- Set the header to Snoopy ASCII art
		dashboard.section.header.val = vim.split(M.snoopy3, "\n")

		--Activating this put snoopy in white idk (right now is yellow)

		-- Adjust header padding
		-- dashboard.section.header.opts = {
		--   position = "center",
		-- }

		-- Configure buttons
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
			dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
			dashboard.button("w", "  Find word", ":Telescope live_grep<CR>"),
			dashboard.button("q", "󰗼  Quit", ":qa<CR>"),
		}

		-- Adjust button padding (optional)
		dashboard.section.buttons.opts = {
			position = "center",
			padding = 1, -- Adjust this as needed
		}

		alpha.setup(dashboard.opts)
	end,
}
