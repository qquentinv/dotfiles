local keymap = require("core.keymaps")
local nnoremap = keymap.nnoremap
local vnoremap = keymap.vnoremap
local inoremap = keymap.inoremap

vim.g.mapleader = " "

-- Navigate through pane
nnoremap("<C-h>", ":wincmd h<CR>", { silent=true })
nnoremap("<C-j>", ":wincmd j<CR>", { silent=true })
nnoremap("<C-k>", ":wincmd k<CR>", { silent=true })
nnoremap("<C-l>", ":wincmd l<CR>", { silent=true })

-- Yank to clipboard
vnoremap("<leader>y", '"+yi')
nnoremap("<leader>y", '"+yi')

-- Tree
nnoremap("<C-b>", ":NvimTreeToggle<CR>", { silent=true })
inoremap("<C-b>", "<ESC>:NvimTreeToggle<CR>", { silent=true })

-- Prettier
nnoremap("<leader>fp", ":Prettier<CR>", { silent=true })

-- Cheatsheet
nnoremap("<leader>?", ":Cheatsheet<CR>")

-- Buffer
nnoremap("<leader>bf",":bf<CR>", { silent=true })
nnoremap("<leader>bl",":bl<CR>", { silent=true })
nnoremap("<leader>bn",":bn<CR>", { silent=true })
nnoremap("<leader>bp",":bp<CR>", { silent=true })
nnoremap("<leader>bc",":bw<CR>", { silent=true })

-- Tab
nnoremap("<leader>tn",":tabn<CR>", { silent=true })
nnoremap("<leader>tp",":tabp<CR>", { silent=true })
nnoremap("<leader>tl",":tabl<CR>", { silent=true })
nnoremap("<leader>tf",":tabr<CR>", { silent=true })
nnoremap("<leader>tc",":tabc<CR>", { silent=true })

-- Register
nnoremap("<leader>reg",":reg<CR>", { silent=true })

-- Error display
nnoremap("<leader>e",":lua vim.diagnostic.open_float()<CR>", { silent=true })

-- F1 key pisses me off
inoremap("<F1>","", { silent=true })
vnoremap("<F1>","", { silent=true })
nnoremap("<F1>","", { silent=true })

-- Rust
nnoremap("<leader>rfmt", ":%! rustfmt<CR>:echo 'Rust format'<CR>", { silent=true })

-- Undotree
nnoremap("<leader>ut", ":lua vim.cmd.UndotreeToggle()<CR>", { silent=true })

-- Lsp
nnoremap("<leader>lsph", ":lua vim.lsp.buf.hover()<CR>", { silent=true })
nnoremap("<leader>gdp", ":lua vim.diagnostic.goto_prev()<CR>", { silent=true })
nnoremap("<leader>gdn", ":lua vim.diagnostic.goto_next()<CR>", { silent=true })

-- Gitsign
nnoremap("<leader>bcl", ":Gitsigns toggle_current_line_blame<CR>", { silent=true})

-- Telescope
nnoremap("<C-p>", "<cmd>Telescope find_files<CR>")
nnoremap("<C-f>", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>gb", "<cmd>Telescope git_branches<CR>")
nnoremap("<leader>gc", "<cmd>Telescope git_commits<CR>")

-- DB - Dadbod
nnoremap("<leader>dbui", ":lua require('core.functions').openInNewTab(':DBUI')<CR>", { silent = true})
