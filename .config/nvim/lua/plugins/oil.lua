return {
	"stevearc/oil.nvim",
	dependency = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		require("oil").setup()

		vim.keymap.set("n", "<leader>o", ":Oil <CR>", { desc = "Oil" })
	end,
}
