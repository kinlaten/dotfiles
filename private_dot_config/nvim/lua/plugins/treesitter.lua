return {{
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "master", -- main branch might not compatible with your machine
    build = ":TSUpdate",
    opts = {
      ensure_installed = {"tsx", "typescript","xml","objdump","java", "diff","dockerfile","go","html","css", "asm", "c_sharp", "bash", "python", "lua", "vim", "vimdoc", "query", "c", "cpp", "markdown", "markdown_inline", "csv", "json"},
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    },
    config = function(_, opts)
      local status_ok, configs = pcall(require, "nvim-treesitter.configs")
      if not status_ok then
        return
      end
      configs.setup(opts)
    end,
}
,{ 'nvim-treesitter/nvim-treesitter-context',
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  multiwindow = false, -- Enable multiwindow support.
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}
}
