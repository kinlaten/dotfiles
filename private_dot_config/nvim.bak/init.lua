vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true

vim.opt.clipboard = "unnamedplus"

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

---
-- Set a global variable to store the zzz command
local zzz = "zz"

-- Remap 'j' to move down one line and then center the view.
-- The 'nnoremap' command creates a non-recursive normal mode mapping.
vim.keymap.set("n", "j", "j" .. zzz)

-- Remap 'k' to move up one line and then center the view.
vim.keymap.set("n", "k", "k" .. zzz)

-- Remap 'J' to move down 5 lines and then center the view.
-- The number '5' is prepended to the 'j' command.
vim.keymap.set("n", "J", "5j" .. zzz)

-- Remap 'K' to move up 5 lines and then center the view.
-- The number '5' is prepended to the 'k' command.
vim.keymap.set("n", "K", "5k" .. zzz)
---
vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system({ "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath })
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require("configs.lazy")

-- load plugins
require("lazy").setup({
    {
        "NvChad/NvChad",
        lazy = false,
        branch = "v2.5",
        import = "nvchad.plugins",
    },

    { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require("options")
require("autocmds")

vim.schedule(function()
    require("mappings")
end)
