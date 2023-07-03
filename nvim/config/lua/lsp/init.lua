local servers = {
    "gopls",
    "lua_ls",
}

require('lsp.install').setup(servers)
require('lsp.setup').setup(servers)
