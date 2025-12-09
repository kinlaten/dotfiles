return {
    {
        "xiyaowong/transparent.nvim",
        lazy = false, -- This ensures it loads on startup
    },
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        cmd = { "Conform", "ConformFormat" },
        config = function()
            require("configs.conform")
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "prettierd",
                "prettier",
                "eslint-lsp",
                "typescrypt-language-server",
            },
        },
    },
    {
        "mfussenegger/nvim-lint",
        event = "VeryLazy",
        config = function()
            require("configs.lint")
        end,
    },
    -- {
    --     "mfussenegger/nvim-lint",
    --     event = { "BufReadPre", "BufNewFile" },
    --     config = function()
    --         require("configs.lint")
    --     end,
    -- },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require("configs.lspconfig")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.treesitter")
        end,
    },

    -- These are some examples, uncomment them if you want to see them work!

    -- test new blink
    -- { import = "nvchad.blink.lazyspec" },

    -- {
    -- 	"nvim-treesitter/nvim-treesitter",
    -- 	opts = {
    -- 		ensure_installed = {
    -- 			"vim", "lua", "vimdoc",
    --      "html", "css"
    -- 		},
    -- 	},
    -- },
}
