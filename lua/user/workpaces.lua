local status_ok, workspaces = pcall(require, "workspaces")
if not status_ok then
	vim.notify("Loading Workspaces Failed")
	return
end

workspaces.setup({
	hooks = {
		open_pre = {
			"SessionsSave",
			"SessionsStop",
			"silent %bdelete!",
		},
		open = function()
			require("sessions").load(nil, { silent = true })
		end,
	},
})
