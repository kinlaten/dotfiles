return {
	"mason-org/mason.nvim",
	opts = {
		registries = {
			"github:mason-org/mason-registry",
			"github:Crashdummyy/mason-registry",
		},
	},

	-- KEYMAP: <leader>e toggles nvim-tree
	vim.keymap.set("n", "<leader>m", ":Mason<CR>", { desc = "Toggle Mason" }),
}
