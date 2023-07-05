local lspconfig = require('lspconfig')

local M = {}

function M.setup(langs)
    for _, lang in pairs(langs) do
        if lang == 'lua_ls' then
            local neodev = require('neodev')

            neodev.setup({})
        end

        lspconfig[lang].setup {}
    end
end

return M
