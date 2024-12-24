return {
    "stevearc/oil.nvim",
    dependencies = {
        "echasnovski/mini.icons", opts = {}
    },

    config = function()
        require("oil").setup()

        vim.keymap.set("n", "<leader>o", ":Oil <CR>", { desc = "Oil" })
    end,
}
