return {
    "smoka7/hop.nvim",
    version = "*",

    keys = {
        { "s", "<cmd>HopWordAC<CR>", desc = "Hop after cursor", mode = { "n", "v" } },
        { "S", "<cmd>HopWordBC<CR>", desc = "Hop before cursor", mode = { "n", "v" } },
    },

    config = function()
        require("hop").setup({
            keys = "etovxqpdygfblzhckisuran",
        })
    end
}
