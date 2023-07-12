local whichkey = require("which-key")

whichkey.register({
    -- file keybindings
    f = {
        name = "file",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        b = { function() print("hello world!") end, "Hello World!" },
        m = { function() vim.lsp.buf.format() end, "Format Buffer" },
        d = { "<cmd>Telescope lsp_definitions<cr>", "Find definition of object" },
    },
    n = {
        name = "Neotree",
        t = { "<cmd>Neotree<cr>", "Open Neotree" }
    },
    b = {
        name = "Tabs",
        n = { "<cmd>BufferLineCycleNext<cr>", "Next Tab" },
        p = { "<cmd>BufferLineCyclePrev<cr>", "Prev Tab" },
    },
}, { prefix = "<leader>" })
