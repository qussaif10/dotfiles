return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",

	version = "*",

	opts = {
		keymap = {
            preset = "default",
            ["<CR>"]  = { "select_and_accept", "fallback" }
        },

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "normal",
		},

		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
	},
	opts_extend = { "sources.default" },
}
