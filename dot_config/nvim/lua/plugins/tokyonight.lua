return {
	"folke/tokyonight.nvim",
	config = function()
		local tokyonight = require("tokyonight")
		tokyonight.setup({
			style = "night",
			styles = {
				sidebars = "dark",
				floats = "dark",
			},
			sidebars = {
				"qf",
				"vista_kind",
				"terminal",
				"packer",
				"spectre_panel",
				"help"
			},
			on_colors = function(colors) -- Avec le theme de mon terminal, je ne vois pas certaine couleur... donc je les change manuellement ! Pas de doc pour ca, fouillez dans le code de votre theme si vous voulez faire ca.
				colors.border = "#302033"
				colors.bg_visual = "#373a45"
				colors.comment = "#4f546b"
			end
		})
		tokyonight.load()
	end,
	priority = 1000 -- Important !
}