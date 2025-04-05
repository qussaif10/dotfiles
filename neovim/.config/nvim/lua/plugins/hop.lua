return {
    "smoka7/hop.nvim",
    version = "*",

    keys = {
        { "s", "<cmd>HopWordAC<CR>", desc = "Hop after cursor" },
        { "S", "<cmd>HopWordBC<CR>", desc = "Hop before cursor" },
    },

    config = function()
        require("hop").setup({
            keys = "etovxqpdygfblzhckisuran",
        })
    end
}
