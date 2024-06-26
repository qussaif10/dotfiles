return {
	"VonHeikemen/searchbox.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},

    config = function()
        vim.keymap.set("n", "<leader>ss", ":SearchBoxMatchAll<CR>", { desc = "Search" })
        vim.keymap.set("n", "<leader>sr", ":SearchBoxReplace<CR>", { desc = "Search and replace" })
    end
}
