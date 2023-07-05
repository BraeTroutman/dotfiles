local servers = {
    "gopls",
    "yamlls",
    "bashls",
    "clangd",
    "julials",
    "lua_ls",
}

require('lsp.mason').setup(servers)
require('lsp.setup').setup(servers)
