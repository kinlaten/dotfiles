-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" --usually in $HOME/.local/share/nvim
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath) -- add to front of run time path

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)

-- Color Sheme
function ColorMyPencils(color)
	color = color or "everforest"
	vim.cmd.colorscheme(color)
	--
	--Transparency: make sure terminal also transparent
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- floating window
	-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" }) -- non-current window
	-- vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
end

-- Setup lazy.nvim
require("lazy").setup({ -- Read from run time path, import lazy dir (or its init.lua file)
	spec = {
		-- import your plugins
		{ import = "plugins" },
	},
	-- Configure any other settings here. See the documentation for more details.
	--
	-- automatically check for plugin updates
	checker = { enabled = true },
})

-- Setup funcs after plugins register
ColorMyPencils() --use tokyonight
