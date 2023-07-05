local whichkey = require("which-key")

whichkey.register({
    -- file keybindings
    f = {
        name = "file",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        b = { function() print("hello world!") end, "Hello World!" },
    },
}, { prefix = "<leader>" })
