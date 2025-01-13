return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"theHamsta/nvim-dap-virtual-text",
		"rcarriga/nvim-dap-ui",
		"mxsdev/nvim-dap-vscode-js",
		"nvim-neotest/nvim-nio", -- Added nvim-nio to the dependencies
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")

		-- Setup virtual text for DAP (e.g., to show variable values inline)
		require("nvim-dap-virtual-text").setup()

		require("dap-vscode-js").setup({
			debugger_path = "C:/Users/Samuel/vscode-js-debug",
			adapters = { "pwa-node", "pwa-chrome", "node-terminal" },
		})

		-- Configure DAP for TypeScript and JavaScript
		for _, language in ipairs({ "typescript", "javascript" }) do
			dap.configurations[language] = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Launch file",
					cwd = vim.fn.getcwd(),
					runtimeArgs = { "tsx", "${file}" },
					runtimeExecutable = "npx",
					args = { "${file}" },
					sourceMaps = true,
					protocol = "inspector",
					skipFiles = { "<node_internals>/**", "node_modules/**" },
					resolveSourceMapLocations = {
						"${workspaceFolder}/**",
						"!**/node_modules/**",
					},
				},
				{
					type = "pwa-node",
					request = "attach",
					name = "Attach",
					cwd = vim.fn.getcwd(),
					processId = require("dap.utils").pick_process,
					skipFiles = { "<node_internals>/**", "node_modules/**" },
				},
			}
		end

		-- Configure DAP for TypeScriptReact and JavaScriptReact
		for _, language in ipairs({ "typescriptreact", "javascriptreact" }) do
			dap.configurations[language] = {
				{
					type = "pwa-chrome",
					name = "Attach - Remote Debugging",
					request = "attach",
					program = "${file}",
					cwd = vim.fn.getcwd(),
					sourceMaps = true,
					protocol = "inspector",
					port = 9222,
					webRoot = "${workspaceFolder}",
				},
				{
					type = "pwa-chrome",
					name = "Launch Chrome",
					request = "launch",
					url = "http://localhost:3000",
				},
			}
		end

		-- UI structure for dap-ui
		dapui.setup({
			icons = { expanded = "▾", collapsed = "▸" },
			layouts = {
				{
					elements = {
						"scopes",
						"breakpoints",
						"stacks",
						"watches",
					},
					size = 80,
					position = "right",
				},
				{
					elements = {
						"repl",
						"console",
					},
					size = 10,
					position = "bottom",
				},
			},
		})

		-- Event listeners for DAP initialization
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end

		-- Setup keymaps for debugging actions
		vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint) -- Toggle breakpoint
		vim.keymap.set("n", "<leader>dc", dap.continue) -- Continue execution
	end,
}
