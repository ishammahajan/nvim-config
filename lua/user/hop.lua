local status_ok, hop = pcall(require, "hop")
if not status_ok then
	vim.notify("Loading Hop Failed")
	return
end

hop.setup()
