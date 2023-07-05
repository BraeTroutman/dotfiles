local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

local M = {}

local settings = {
    ui = {
        border = { "┏", "━", "┓", "┃", "┛", "━", "┗", "┃" },
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
    log_level = vim.log.levels.INFO,
    max_concurrent_installers = 4,
}

function M.setup(servers)
    mason.setup(settings)
    mason_lspconfig.setup({
        ensure_installed = servers,
        automatic_installation = true,
    })
end

return M
