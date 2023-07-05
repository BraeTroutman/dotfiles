local lspconfig = require('lspconfig')

local M = {}

function M.setup(langs)
    for _, lang in pairs(langs) do
        if lang == 'lua_ls' then
            local neodev = require('neodev')

            neodev.setup({})
        end
        
        if lang == 'gopls' then
            local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
            vim.api.nvim_create_autocmd("BufWritePre", {
                pattern = "*.go",
                callback = function() 
                    require("go.format").goimport()
                end,
                group = format_sync_grp,
            })
        end

        lspconfig[lang].setup {}
    end
end

return M
