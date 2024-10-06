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
  end
}
