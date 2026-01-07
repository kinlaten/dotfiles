return {
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
