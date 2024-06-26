return {
    "smoka7/hop.nvim",
    version = "*",
    opts = {
        keys = "etovxqpdygfblzhckisuran"
    },

    config = function()
        require("hop").setup()
        vim.keymap.set("n", "s", ":HopWordAC<CR>")
        vim.keymap.set("n", "S", ":HopWordBC<CR>")
        vim.keymap.set("n", "<leader>sls", ":HopWordMW<CR>")
        vim.keymap.set("n", "L", ":HopWordCurrentLine<CR>")
    end
}
