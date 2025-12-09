-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap 'j' to move down one line and then center the view.
-- The 'nnoremap' command creates a non-recursive normal mode mapping.
vim.keymap.set("n", "j", "jzz")

-- Remap 'k' to move up one line and then center the view.
vim.keymap.set("n", "k", "kzz")

-- Remap 'J' to move down 5 lines and then center the view.
-- The number '5' is prepended to the 'j' command.
vim.keymap.set("n", "J", "5jzz")

-- Remap 'K'-- Delete the 'K' mapping in Normal mode.
vim.keymap.set("n", "K", "5kzz")
-- The number '5' is prepended to the 'k' command.
