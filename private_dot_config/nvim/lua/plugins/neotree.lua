return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- Disable netrw
		--	vim.g.loaded_netrw = 1
		--	vim.g.loaded_netrwPlugin = 1
		vim.opt.termguicolors = true

		require("nvim-tree").setup({
			sort = { sorter = "case_sensitive" },
			view = { centralize_selection = true },
			renderer = { group_empty = true },
			filters = { dotfiles = true },
		})

		-- KEYMAP: <leader>e toggles nvim-tree
		vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle Explorer" })

		-- :h nvim-tree to see all default keys
	end,
}
