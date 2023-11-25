require("nvim-tree").setup()
vim.keymap.set({"n", "v", "i"}, "<A-1>", vim.cmd.NvimTreeOpen)
vim.keymap.set({"n", "v", "i"}, "<A-2>", vim.cmd.NvimTreeClose)


-- netrw has been disabled. uncomment if ever getting rid of nvim-tree
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- vim.keymap.set("n", "<leader>px", vim.cmd.Rex)

