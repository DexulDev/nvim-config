return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" },
  },

  init = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.opt.termguicolors = true
  end,

  opts = {
    sort_by = "case_sensitive",

    view = {
      width = 30,
      side = "left",
    },

    renderer = {
      group_empty = true,
    },

    filters = {
      dotfiles = false,
    },
  },

  config = function(_, opts)
    require("nvim-tree").setup(opts)

    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        require("nvim-tree.api").tree.open()
      end,
    })
  end,
}
