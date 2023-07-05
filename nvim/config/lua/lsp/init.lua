local servers = {
    "gopls",
    "yamlls",
    "bashls",
    "clangd",
    "julials",
    "sumneko_lua",
}

require('lsp.install').setup(servers)
require('lsp.setup').setup(servers)
