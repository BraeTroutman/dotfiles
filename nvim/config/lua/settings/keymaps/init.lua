local whichkey = require("which-key")

whichkey.register({
    -- file keybindings
    f = {
        name = "file",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        d = { "<cmd>Telescope lsp_definitions<cr>", "Find definition of object" },
        c = { "<cmd>Telescope lsp_incoming_calls<cr>", "List incoming calls fn" },
    },
    n = {
        name = "Neotree",
        t = { "<cmd>Neotree<cr>", "Open Neotree" }
    },
    b = {
        name = "Tabs",
        n = { "<cmd>BufferLineCycleNext<cr>", "Next Tab" },
        p = { "<cmd>BufferLineCyclePrev<cr>", "Prev Tab" },
        x = { "<cmd>bdelete<cr>", "Close this tab" },
        o = { "<cmd>BufferLineCloseOthers<cr>", "Close all other tabs" },
    },
    e = {
        name = "Errors",
        n = { vim.diagnostic.goto_next, "Next error"},
    },
}, { prefix = "<leader>" })
