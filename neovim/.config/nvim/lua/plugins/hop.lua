return {
    "smoka7/hop.nvim",
    version = "*",

    keys = {
        { "<leader>a", "<cmd>HopWordAC<CR>", desc = "Hop after cursor" },
        { "<leader>A", "<cmd>HopWordBC<CR>", desc = "Hop before cursor" },
    },

    config = function()
        require("hop").setup({
            keys = "etovxqpdygfblzhckisuran",
        })
    end
}
