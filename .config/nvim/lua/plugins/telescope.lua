return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },

        config = function()
            require("telescope").setup({
                pickers = {
                    find_files = {
                        find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
                    },
                },
            })

            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files" })
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "live grep" })
            vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "find buffers" })
            vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "find recent files" })
        end,
    },

    {
        "nvim-telescope/telescope-ui-select.nvim",

        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })

            require("telescope").load_extension("ui-select")
        end,
    },
}
