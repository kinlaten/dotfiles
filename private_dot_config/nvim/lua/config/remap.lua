-- Remember source file after change
-- :so command

-- Leader key is Space
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>l", vim.cmd.Lazy)

vim.keymap.set("n", "<leader>pv", vim.cmd.Explore)
