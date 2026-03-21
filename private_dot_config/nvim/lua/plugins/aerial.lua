return {
	"stevearc/aerial.nvim",
	dependencies = { ... },
	event = { "BufReadPost", "BufWritePost", "BufNewFile" },
	opts = {
		-- your options... For example:
		attach_mode = "global",
		backends = {
			-- markdown = { "markdown" },
			_ = { "treesitter", "lsp", "man" },
		},
		show_guides = true,
	},
	keys = {
		{ "<leader>tb", "<cmd>AerialToggle<cr>", desc = "Aerial: Toggle" },
		-- etc.
	},
	highlight_on_hover = true,
	filter_kind = {
		"Class",
		"Constructor",
		"Enum",
		"Function",
		"Interface",
		"Module",
		"Method",
		"Struct",
		"Namespace",
		"Object",
		"Package",
		"Event",
		"File",
		"Key",
		"File",
	},
	-- Increase the debounce to wait for LSP/Treesitter to stabilize
	lsp = {
		update_delay = 300,
	},
}
