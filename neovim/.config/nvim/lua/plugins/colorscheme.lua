return {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 10000,

    config = function()
        local onedark = require("onedark")

        onedark.setup()
        onedark.load()
    end,
}
