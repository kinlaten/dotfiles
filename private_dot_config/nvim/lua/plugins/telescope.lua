return {
	"nvim-telescope/telescope.nvim",
	tag = "v0.2.1",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	keys = {
		{ "<leader>f", "<cmd>Telescope find_files<cr>" }, -- Search file in cwd
		{ "<leader>g", "<cmd>Telescope live_grep<cr>" }, -- Grep text from all file in cwd
		{ "<leader>b", "<cmd>Telescope buffers<cr>" }, -- Search file in buffer
	},
	config = function()
		require("telescope").setup({
			defaults = { file_ignore_patterns = { "node_modules", ".git/" } },
		})
	end,
}
