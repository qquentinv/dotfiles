-- Permet de fermer automatiquement les parenthèses
return {
	"windwp/nvim-autopairs",
	config = function()
		require("nvim-autopairs").setup()
	end
}