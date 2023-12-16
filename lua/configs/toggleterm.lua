local status_ok, toggleterm = pcall (require, "toggleterm")
if not status_ok then 
	return 
end

toggleterm.setup({
	size = 20,
	open_mapping = [[<C-t>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true, 
	shading_factor = 2,
	start_in_insert = true, 
	insert_mappings = true, 
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})










vim.keymap.set("n", "<leader>tt", vim.cmd.ToggleTerm)
vim.keymap.set("n", "<leader>T", vim.cmd.terminal)
vim.keymap.set({"n", "t", "i", "v"}, "<C-t>", "<C-\\><C-n><C-w>k")
vim.keymap.set({"n", "i", "v"}, "<C-t>", "<C-\\><C-n><C-w>j")
