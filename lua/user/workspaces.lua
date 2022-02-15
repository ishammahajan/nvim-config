local status_ok, workspaces = pcall(require, "workspaces")
if not status_ok then
	return
end

workspaces.setup({
	hooks = {
		open_pre = {
			"NvimTreeClose",
			"SessionManager save_current_session",
			"silent %bdelete!",
		},
		open = {
			"SessionManager load_current_dir_session",
			"NvimTreeOpen",
		},
	},
})
