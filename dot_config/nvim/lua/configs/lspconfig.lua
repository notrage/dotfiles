local lspconfig = require('lspconfig')

lspconfig.clangd.setup{}
lspconfig.pylsp.setup{}
-- lspconfig.stylua.setup{}
lspconfig.texlab.setup{}

lspconfig.clangd.setup{
    on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
    end,
}
