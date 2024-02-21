return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		{ "windwp/nvim-ts-autotag" }
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup({
			auto_install = true,
			ensure_installed = { -- les languages que l'on souhaite
				"lua",
				"rust",
				"toml",
				"query",
				"javascript",
				"typescript",
				"json",
				"markdown",
				"sql",
				"yaml",
				"html",
				"css",
				"go",
				"php",
				"c"
			},
			highlight = {
				enable = true,
			},
			autotag = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			rainbow = {
				enable = true,
				extended_mode = true,
				max_file_lines = nil,
			},
		})
	end
}