return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	opts = {
		-- theme = "tokyonight-night",
		component_separator = "",
		section_separator = "",
		icons_enabled = true,

		globalstatus = false,
		tabline = {},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = {
				{
					"buffers",
					file_status = true, -- Displays file status (readonly status, modified status)
					newfile_status = true, -- Display new file status (new file means no write after created)
					symbols = {
						modified = "[+]", -- Text to show when the file is modified.
						readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
						unnamed = "[No Name]", -- Text to show for unnamed buffers.
						newfile = "[New]", -- Text to show for newly created file before first write
					},
				},
				{ "filename", path = 3 },
			},
			lualine_x = { "hostname", "filetype" },
			lualine_y = { "encoding", "progress" },
			lualine_z = { "location" },
		},
		winbar = {},
		inactive_winbar = {},
		extensions = {},
	},
}
