return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"rcarriga/nvim-dap-ui",
		"wojciech-kulik/xcodebuild.nvim",
		"leoluz/nvim-dap-go",
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")

		dapui.setup()

		require("dap-go").setup()

        local codelldbPath = os.getenv("HOME") .. "/bin/codelldb/extension/adapter/codelldb"

        require("xcodebuild.integrations.dap").setup(codelldbPath)

		vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
		vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue Execution" })
		vim.keymap.set("n", "<F8>", dap.step_over, { desc = "Step Over" })
		vim.keymap.set("n", "<F9>", dap.step_into, { desc = "Step Into" })
		vim.keymap.set("n", "<F10>", dap.step_out, { desc = "Step Out" })

		vim.keymap.set("n", "<Leader>dlp", function()
			dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
		end, { desc = "Set Log Point" })

		vim.keymap.set("n", "<Leader>dr", dap.repl.open, { desc = "Open REPL" })
		vim.keymap.set("n", "<Leader>dls", dap.run_last, { desc = "Run Last Debug Session" })

		vim.keymap.set({ "n", "v" }, "<Leader>dh", function()
			require("dap.ui.widgets").hover()
		end, { desc = "Hover Variable (DAP)" })

		vim.keymap.set({ "n", "v" }, "<Leader>dp", function()
			require("dap.ui.widgets").preview()
		end, { desc = "Preview Variable (DAP)" })

		vim.keymap.set("n", "<Leader>df", function()
			local widgets = require("dap.ui.widgets")
			widgets.centered_float(widgets.frames)
		end, { desc = "Show Stack Frames" })

		vim.keymap.set("n", "<Leader>ds", function()
			local widgets = require("dap.ui.widgets")
			widgets.centered_float(widgets.scopes)
		end, { desc = "Show Variable Scopes" })

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
}
