return {
  "MunifTanjim/prettier.nvim",
  dependencies = {
    { "jose-elias-alvarez/null-ls.nvim" }
  },
  config = function()
    local null_ls = require("null-ls")
    local prettier = require("prettier")

    -- Configurer Prettier
    prettier.setup({
      bin = 'prettier',
      filetypes = {
        "css",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "markdown",
        "yaml"
      },
      cli_options = {
        semi = true,
        trailing_comma = "all",
        single_quote = false,
      }
    })
 end
}