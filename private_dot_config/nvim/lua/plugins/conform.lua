-- lua/plugins/conform.lua
return {
  {
    "stevearc/conform.nvim",
    -- no `config = M.setup` here

    -- Optional: keep your extra key for injected formatting
    keys = {
      {
        "<leader>cF",
        function()
          require("conform").format({ formatters = { "injected" }, timeout_ms = 3000 })
        end,
        mode = { "n", "x" },
        desc = "Format Injected Langs",
      },
    },

    -- Override LazyVim's default conform options
    opts = function(_, opts)
      -- 1) Global defaults (tweak as you like)
      opts.default_format_opts = vim.tbl_extend("force", opts.default_format_opts or {}, {
        timeout_ms = 3000,
        async = false,
        quiet = false,
        lsp_format = "fallback",
      })

      -- 2) Per‑filetype formatters
      opts.formatters_by_ft = vim.tbl_extend("force", opts.formatters_by_ft or {}, {
        lua = { "stylua" },
        sh = { "shfmt" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        cs = { "clang-format" },
        javascript = { "clang-format" },
        json = { "clang-format" },
        typescript = { "prettier" },
        markdown = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        jsx = { "prettier" },
        typescriptreact = { "biome" },
        -- add/override others here, e.g.:
        -- javascript = { "biome" },
        -- typescript = { "biome" },
      })

      -- 3) Individual formatter configs
      opts.formatters = vim.tbl_extend("force", opts.formatters or {}, {
        injected = { options = { ignore_errors = true } },
        -- examples:
        -- shfmt = { prepend_args = { "-i", "2", "-ci" } },
      })

      return opts
    end,
  },
}
