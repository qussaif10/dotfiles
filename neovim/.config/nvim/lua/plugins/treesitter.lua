return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
        ---@diagnostic disable-next-line: missing-fields
        require("nvim-treesitter.configs").setup({
            highlight = { enable = true },
            indent = { enable = true },
            auto_install = true,
        })
    end,
}
