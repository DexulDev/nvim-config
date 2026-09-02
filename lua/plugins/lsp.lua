return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
          "rust_analyzer",
          "jdtls",
          "lua_ls",
          "bashls",
          "jsonls",
          "taplo",
        },
      })

      vim.lsp.config("clangd", {
        cmd = { "clangd", "--background-index", "--header-insertion=iwyu", "--clang-tidy" },
      })

      vim.lsp.config("rust_analyzer", {})
      vim.lsp.config("jdtls", {})

      vim.lsp.enable({
        "clangd",
        "rust_analyzer",
        "jdtls",
        "lua_ls",
        "bashls",
        "jsonls",
        "taplo",
      })
    end,
  },
}
