-- Remember source file after change
-- :so command

-- KEY BINDINGS
-- Leader key is Space
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Start adding here Clear highlighted pattern after escape
vim.keymap.set({ "n", "v" }, "<Esc>", "<cmd>nohlsearch<cr><Esc>", { desc = "Clear search highlights" })

vim.keymap.set("n", "<leader>l", vim.cmd.Lazy)

vim.keymap.set("n", "<leader>pv", vim.cmd.Explore)

-- Exit terminal mode by Esc
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

-- Navigate multiple line
vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")
-- vim.keymap.set("n", "J", "5jzz")
-- vim.keymap.set("n", "K", "5kzz")

-- Navigate between
-- vim.keymap.set("n", "<C-n>", ":bnext<cr>")
-- vim.keymap.set("n", "<C-p>", ":bprev<cr>")

-- Unset ; key
--vim.keymap.set("n", ";", "<Nop>", { noremap = true, silent = true })

-- PREFERENCES
-- Sync nvim register with clipboard
vim.opt.clipboard = "unnamedplus"

-- Show line number
vim.opt.number = true

-- \t value
vim.opt.tabstop = 4

-- Width of 1 level of indentation: e.g. 1 time click Tab button, >> or <<
vim.opt.shiftwidth = 4

-- Allow Tab key
vim.opt.expandtab = true

-- The cursor can be positioned where there is no actual character
vim.opt.virtualedit = "block"

-- Show preview effect of command in split window
vim.opt.inccommand = "split"

-- Ignore case in pattern matching
vim.opt.ignorecase = true

-- Enable 24bit color scheme support
vim.opt.termguicolors = true

vim.opt.cursorline = true

-- Save history of modification
vim.opt.undofile = true -- Persistent undo across sessions
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo" -- Store mundo files
vim.opt.autowrite = on

vim.opt.wrapscan = false

vim.opt.wildmode = "noselect:lastused,full"

vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
