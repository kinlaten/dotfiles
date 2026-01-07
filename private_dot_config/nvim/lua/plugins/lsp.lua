return {
	"neovim/nvim-lspconfig",

	--vim.lsp.enable('ast_grep'), --ast-grep LSP only works in projects that have sgconfig.y[a]ml in their root directories.
	--{ "bash", "c", "cpp", "cs", "css", "elixir", "go", "haskell", "html", "java", "javascript", "javascriptreact", "json", "kotlin", "lua", "nix", "php", "python", "ruby", "rust", "scala", "solidity", "swift", "typescript", "typescriptreact", "yaml" }

	vim.lsp.enable("pyright"), --{ "python" }

	vim.lsp.enable("clangd"), --{ "c", "cpp", "objc", "objcpp", "cuda" }

	vim.lsp.enable("lua_ls"), -- lua

	vim.lsp.enable("biome"), --{ "astro", "css", "graphql", "html", "javascript", "javascriptreact", "json", "jsonc", "svelte", "typescript", "typescript.tsx", "typescriptreact", "vue" }

	vim.lsp.enable("marksman"), -- markdown
}
