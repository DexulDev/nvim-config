return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",

    config = function()
      require("nvim-treesitter").install({
        "c",
        "cpp",
        "rust",
        "java",
        "lua",
        "vim",
        "vimdoc",
        "bash",
        "json",
        "toml",
      })
    end,
  },
}
