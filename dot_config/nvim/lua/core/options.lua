vim.opt.nu = true -- affiche le numéro de la ligne
vim.opt.relativenumber = true -- affiche le niveau relatif des lignes (très pratique pour naviguer)

vim.opt.tabstop = 2 -- nombre d'espace d'un <Tab> dans un fichier
vim.opt.softtabstop = 2 -- nombre d'espace d'un <Tab> dans un fichier lorsque l'on édite le code
vim.opt.shiftwidth = 2 -- nombre d'espace utilisé pour chaque autoindent
vim.opt.expandtab = true -- utiliser le nombre d'espace approprié pour un <Tab> en insert mode
vim.opt.smartindent = true -- ???
vim.opt.shiftround = true -- arrondir le nombre d'indentation pour que ce soit un multiple de `shiftwidth`
vim.opt.hlsearch = false -- désactive le highlight des précédentes recherches
vim.opt.incsearch = true -- highlight pendant une recherche 
vim.opt.wrap = true -- wrap la ligne si elle est trop grande (ne modifie pas le code, ne rajoute rien, juste de l'aperçu)
vim.opt.ignorecase = true -- ignorer la case dans les recherches 
vim.opt.smartcase = true -- override 'ignorecase' si la recherche contient des majuscules
vim.opt.binary = true -- utile quand on édite des fichiers binaires....
vim.opt.eol = false -- nécessaire pour les binaires (ne pas ajouter de <EOL> à la fin d'un fichier binaire)

-- ces options me servent pour les plis de code (plier/déplier)
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99

