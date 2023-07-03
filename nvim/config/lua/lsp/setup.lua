local lspconfig = require('lspconfig')

local M = {}

function M.setup(langs)
    for _, lang in pairs(langs) do
        lspconfig[lang].setup {}
    end
end

return M
