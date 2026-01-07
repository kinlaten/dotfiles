return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "┃" },
			change = { text = "┃" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
			untracked = { text = "┆" },
		},
		signs_staged = {
			add = { text = "┃" },
			change = { text = "┃" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
			untracked = { text = "┆" },
		},
		signs_staged_enable = true,
		signcolumn = true,
		numhl = false,
		linehl = false,
		word_diff = true,
		watch_gitdir = {
			follow_files = true,
		},
		auto_attach = true,
		attach_to_untracked = false,
		current_line_blame = false,
		current_line_blame_opts = {
			virt_text = true,
			virt_text_pos = "eol",
			delay = 1000,
			ignore_whitespace = false,
			virt_text_priority = 100,
			use_focus = true,
		},
		current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
		sign_priority = 6,
		update_debounce = 100,
		status_formatter = nil,
		max_file_length = 40000,
		preview_config = {
			style = "minimal",
			relative = "cursor",
			row = 0,
			col = 1,
		},
		on_attach = function(bufnr)
			local gitsigns = require("gitsigns")
			local map = function(mode, l, r, opts)
				opts = vim.tbl_deep_extend("force", { buffer = bufnr }, opts or {})
				vim.keymap.set(mode, l, r, opts)
			end

			-- TOP 5 ESSENTIALS
			map("n", "<leader>hn", gitsigns.next_hunk, { desc = "Next Hunk" })
			map("n", "<leader>hb", gitsigns.prev_hunk, { desc = "Prev Hunk" })
			map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "Stage Hunk" })
			map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Reset Hunk" })
			map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Preview Hunk" })
			map("n", "<leader>hq", gitsigns.setqflist, { desc = "QF Current buffer" })
		end,
	},
}
