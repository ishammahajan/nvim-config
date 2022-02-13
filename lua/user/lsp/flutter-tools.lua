local status_ok, flutter_tools = pcall(require, "flutter-tools")
if not status_ok then
	return
end

flutter_tools.setup({
	lsp = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
		settings = {
			-- showTodos = false,
			-- completeFunctionCalls = true,
			analysisExcludedFolders = {
				vim.fn.expand("$HOME/.pub-cache"),
				-- vim.fn.expand '$HOME/fvm/versions', -- flutter-tools should automatically exclude your SDK.
			},
			-- lineLength = 120,
		},
	},
})
