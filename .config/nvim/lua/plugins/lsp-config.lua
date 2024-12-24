local servers = {
	"lua_ls",
    "svelte",
	"ts_ls",
	"terraformls",
	"rust_analyzer",
	"bashls",
	"clangd",
	"cssls",
	"html",
	"jsonls",
	"marksman",
	"pyright",
	"sqlls",
	"tailwindcss",
	"wgsl_analyzer",
	"yamlls",
	"zls",
	"dockerls",
	"docker_compose_language_service",
	"gopls",
}

return {
	{
		"williamboman/mason.nvim",

		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",

		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = servers,
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },

		config = function()
			local lsp_config = require("lspconfig")
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			for _, server in ipairs(servers) do
				lsp_config[server].setup({ capabilities = capabilities })
			end

			vim.keymap.set("n", "<leader>ih", vim.lsp.buf.hover, { desc = "hover info" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "go to definition" })
			vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "go to declaration" })
			vim.keymap.set("n", "<leader>da", vim.lsp.buf.code_action, { desc = "code action" })
		end,
	},
}
