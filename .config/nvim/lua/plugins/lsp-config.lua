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
				ensure_installed = {
					"lua_ls",
					"asm_lsp",
					"bashls",
					"clangd",
					"csharp_ls",
					"cssls",
					"html",
					"jsonls",
					"vuels",
					"markdown_oxide",
					"htmx",
					"pylsp",
					"sqlls",
					"rust_analyzer",
					"taplo",
					"tailwindcss",
					"tsserver",
					"wgsl_analyzer",
					"lemminx",
					"yamlls",
					"zls",
					"quick_lint_js",
					"kotlin_language_server",
					"autotools_ls",
					"dockerls",
					"docker_compose_language_service",
					"gopls",
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",

		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lsp_config = require("lspconfig")

			lsp_config.lua_ls.setup({
				capabilities = capabilities,
			})

			lsp_config.rust_analyzer.setup({
				capabilities = capabilities,
			})

			lsp_config.tsserver.setup({
				capabilities = capabilities,
			})

			lsp_config.kotlin_language_server.setup({
				capabilities = capabilities,
			})

			lsp_config.pylsp.setup({
				capabilities = capabilities,
			})

			lsp_config.gopls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "<leader>ih", vim.lsp.buf.hover, { desc = "hover info" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "go to definition" })
			vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "go to declaration" })
			vim.keymap.set("n", "<leader>da", vim.lsp.buf.code_action, { desc = "code action" })
		end,
	},
}
