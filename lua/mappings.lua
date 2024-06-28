--  TAB NAVIGATION 
vim.keymap.set({"n", "v", "i"}, "<C-n>", vim.cmd.tabnew)
vim.keymap.set({"n", "v", "i"}, "<A-l>", vim.cmd.tabn)
vim.keymap.set({"n", "v", "i"}, "<A-h>", vim.cmd.tabp)

-- DIAGNOSTIC KEYMAPS
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })


-- 		Keybindings to use the inbuilt terminal 
vim.keymap.set('n', "<leader>tt", vim.cmd.terminal)
-- vim.keymap.set({"n", "t", "i", "v"}, "<C-t>", "<C-\\><C-n><C-w>k")
-- vim.keymap.set({"n", "i", "v"}, "<C-t>", "<C-\\><C-n><C-w>j")
