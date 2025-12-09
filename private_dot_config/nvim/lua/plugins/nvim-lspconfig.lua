return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          -- Disable a keymap
          { "K", false },
        },
      },
    },
  },
}
