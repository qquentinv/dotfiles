return {
	"nvim-tree/nvim-tree.lua", -- Toujours mettre le lien github du projet
	config = function() -- on configure/initie notre plugin ici
		local tree = require("nvim-tree")
		tree.setup({ -- puis on setup
			renderer = {
				icons = {
					show = {
						file = false,
						folder = false,
						folder_arrow = false,
						git = false
					}
				}
			},
			view = {
				adaptive_size = true
			}
		})
	end
}
