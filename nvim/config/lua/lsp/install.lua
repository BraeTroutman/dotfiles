local installer_servers = require 'nvim-lsp-installer.servers'

local M = {}

function M.setup(langs)
    for _, name in pairs(langs) do
        local avail, server = installer_servers.get_server(name)

        if avail then
            server:on_ready( function()
                server:setup({})
            end)

            if not server:is_installed() then
                server:install()
            end
        end
    end
end

return M
