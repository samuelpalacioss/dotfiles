return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs", -- Sets main module to use for opts
	-- [[ Configure Treesitter ]] See `:help nvim-treesitter`
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
		indent = {
			enable = true,
		},
	},
}

