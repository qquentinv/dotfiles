return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    local tree = require("nvim-tree")

    tree.setup({
      renderer = {
        root_folder_label = false,
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true
          }
        }
      },
      view = {
        adaptive_size = true,
      }
    })

    -- open nvim tree by default
		  -- Fonction pour ouvrir nvim-tree
    local function open_nvim_tree()
      require("nvim-tree.api").tree.open()
    end

    -- Créer un autocmd pour ouvrir nvim-tree au démarrage
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        -- Attendre un moment pour permettre le démarrage complet
        vim.defer_fn(open_nvim_tree, 100)
      end
    })
  end
}
