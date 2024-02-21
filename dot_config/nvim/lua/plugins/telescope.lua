return {
	"nvim-telescope/telescope.nvim",
	tag = '0.1.5', -- on peut choisir le tag souhaité
	dependencies = { -- certains plugins auront des dépendances...
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				file_ignore_patterns = { "node_modules" },
				mappings = {
					i = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
						["<C-s>"] = actions.select_horizontal,
						["<esc>"] = actions.close,
					},
					n = {
						["<esc>"] = actions.close,
					}
				}
			}
		})

		-- Nécessité du plugin pour set des bindings
		-- Ici, le binding est de rechercher le code sélectionné dans telescope
		
		local telescope_builtin = require("telescope.builtin")
		local vnoremap = require("core/keymaps").vnoremap
		local func = require("core/functions")
		vnoremap("<C-f>", function()
			local text = func.getVisualSelection()
			telescope_builtin.live_grep({ default_text = text })
		end, { silent=true })
	end
}