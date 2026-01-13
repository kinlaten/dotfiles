return {
	"stevearc/aerial.nvim",
	dependencies = { ... },
	event = { "BufReadPost", "BufWritePost", "BufNewFile" },
	opts = {
		-- your options... For example:
		attach_mode = "global",
		backends = { "lsp", "treesitter", "markdown", "man" },
		show_guides = true,
	},
	keys = {
		{ "<leader>tb", "<cmd>AerialToggle<cr>", desc = "Aerial: Toggle" },
		-- etc.
	},
}
