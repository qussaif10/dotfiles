local servers = {
	{
		name = "lua_ls",
		config = {
			on_init = function(client)
				if client.workspace_folders then
					local path = client.workspace_folders[1].name

					---@diagnostic disable-next-line: undefined-field
					if vim.uv.fs_stat(path .. "/.luarc.json") or vim.uv.fs_stat(path .. "/.luarc.jsonc") then
						return
					end
				end

				client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
					workspace = {
						checkThirdParty = false,
						library = vim.api.nvim_get_runtime_file("", true),
					},
				})
			end,

			settings = { Lua = {} },
		},
	},

	{ name = "rust_analyzer" },
	{ name = "svelte" },
	{ name = "ts_ls" },
	{ name = "terraformls" },
	{ name = "bashls" },
	{ name = "clangd" },
	{ name = "markdown_oxide" },
	{ name = "pyright" },
	{ name = "sqls" },
	{ name = "tailwindcss" },
	{ name = "wgsl_analyzer" },
	{ name = "yamlls" },
	{ name = "zls" },
	{ name = "dockerls" },
	{ name = "docker_compose_language_service" },
	{ name = "gopls" },
	{ name = "cssls" },
	{ name = "html" },
	{ name = "jsonls" },
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
			local server_names = {}

			for _, server in ipairs(servers) do
				if server.name then
					table.insert(server_names, server.name)
				end
			end

			---@diagnostic disable-next-line: missing-fields
			require("mason-lspconfig").setup({
				ensure_installed = server_names,
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
        dependencies = "saghen/blink.cmp",
		event = { "BufReadPre", "BufNewFile" },

		keys = {
			{ "<leader>id", vim.diagnostic.open_float, desc = "Open Float" },
			{ "<leader>ih", vim.lsp.buf.hover, desc = "Hover Info" },
			{ "<leader>gd", vim.lsp.buf.definition, desc = "Go To Definition" },
			{ "<leader>gD", vim.lsp.buf.declaration, desc = "Go To Declaration" },
			{ "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action" },
			{ "<leader>rs", vim.lsp.buf.rename, desc = "Rename Symbol" },
		},

		config = function()
            vim.diagnostic.config({ virtual_text = true })

			local lsp_config = require("lspconfig")
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			for _, server in ipairs(servers) do
				local config = server.config or {}

				config.capabilities = capabilities

				lsp_config[server.name].setup(config)
			end

			lsp_config["sourcekit"].setup({
                capabilities = capabilities
            })
		end,
	},
}
