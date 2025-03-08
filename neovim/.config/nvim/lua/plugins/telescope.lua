return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
    },

    config = function()
        local telescope = require("telescope")

        telescope.setup({
        pickers = {
            find_files = {
                find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
            },
        }})

        telescope.load_extension("ui-select")


        vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
        vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
        vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find Buffers" })
        vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Find Recent" })
        vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<CR>", { desc = "Find Diagnostics" })
    end,
}
