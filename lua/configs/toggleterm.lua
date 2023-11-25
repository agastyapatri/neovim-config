vim.keymap.set("n", "<leader>tt", vim.cmd.ToggleTerm)
vim.keymap.set("n", "<leader>T", vim.cmd.terminal)
vim.keymap.set({"n", "t", "i", "v"}, "<C-t>", "<C-\\><C-n><C-w>k")
vim.keymap.set({"n", "i", "v"}, "<C-t>", "<C-\\><C-n><C-w>j")

