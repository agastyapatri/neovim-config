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
-- vim.keymap.set('n', "<leader>tt", vim.cmd.ToggleTerm)
-- vim.keymap.set('n', "<leader>tt", vim.cmd.terminal)
-- 		NETRW KEYMAPS
vim.keymap.set("n", "<A-1>", vim.cmd.Ex)
vim.keymap.set("n", "<A-2>", vim.cmd.Rex)


