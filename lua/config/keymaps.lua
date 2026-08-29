-- Searching
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help" })

-- Windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move right" })

vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<cr>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>wh", "<cmd>split<cr>", { desc = "Horizontal split" })
vim.keymap.set("n", "<leader>wq", "<cmd>close<cr>", { desc = "Close window" })

-- Buffers
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

-- Code
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })

-- Diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })

vim.keymap.set("n", "]d", function()
  vim.diagnostic.jump({ count = 1 })
end, { desc = "Next diagnostic" })

vim.keymap.set("n", "[d", function()
  vim.diagnostic.jump({ count = -1 })
end, { desc = "Previous diagnostic" })

-- Gitsings
vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", { desc = "Preview hunk" })
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<cr>", { desc = "Blame line" })
vim.keymap.set("n", "]g", "<cmd>Gitsigns next_hunk<cr>", { desc = "Next hunk" })
vim.keymap.set("n", "[g", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Previous hunk" })

-- Life Quality
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })
vim.keymap.set("n", "<leader>sv", "<cmd>source $MYVIMRC<cr>", { desc = "Reload config" })
vim.keymap.set("v", "<", "<gv", { desc = "Indent left" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right" })
-- Nvim-Tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", {
  desc = "Toggle file tree",
})
