require("config.lazy")
require("config.keymaps")
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true

-- Editor
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.formatoptions:remove({ "c", "r", "o" })

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.scrolloff = 8

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- UI
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.laststatus = 3

-- Editing
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
