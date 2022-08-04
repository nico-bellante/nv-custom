local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = { "clangd", "pyright", "tsserver" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    root_dir = vim.loop.cwd,
  })
end

lspconfig.cssmodules_ls.setup({
  on_attach = function(client)
    client.resolved_capabilities.goto_definition = false
    on_attach(client)
  end,
})
