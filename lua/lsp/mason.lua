local mason = require("mason")
local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(client, bufnr)
    local opts = {noremap = true, silent = true, buffer = bufnr}
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    client.server_capabilities.semanticTokensProvider = nil
end

-- Configuración de mason
mason.setup()

-- Configuración básica de mason-lspconfig con automatic_enable desactivado
mason_lspconfig.setup({
    automatic_installation = false,
    automatic_enable = false
})

-- Configuración manual de servidores
local servers = { "lua_ls", "pyright", "ts_ls" } -- Cambiado de tsserver a ts_ls

for _, server in ipairs(servers) do
    lspconfig[server].setup({
        on_attach = on_attach,
        capabilities = capabilities
    })
end