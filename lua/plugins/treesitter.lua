return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function(_, opts)
		require("nvim-treesitter").setup(opts)
	end,
	opts = {
		ensure_installed = {
			"go",
			"typescript",
			"dockerfile",
			"python",
			"javascript",
			"tsx",
			"vim",
			"json",
			"gitignore",
			"markdown",
			"markdown_inline",
			"html",
			"css",
			"lua",
		},
		highlight = {
			enable = true,
		},
	},
}
