return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
	  "rust_analyzer",
	  "clangd",
	  "jdtls",
	  "lua_ls",
      },
    },
  },
}
