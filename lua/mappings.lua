--  TAB NAVIGATION 
vim.keymap.set({"n", "v", "i"}, "<C-n>", vim.cmd.tabnew)
vim.keymap.set({"n", "v", "i"}, "<A-l>", vim.cmd.tabn)
vim.keymap.set({"n", "v", "i"}, "<A-h>", vim.cmd.tabp)

-- DIAGNOSTIC KEYMAPS
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })


-- 		BARBAR KEYMAPS
-- vim.keymap.set({"n", "v", "i"}, "<C-A-h>", vim.cmd.tabmove)
-- vim.keymap.set({"n", "v", "i"}, "<A-l>", vim.cmd.BufferNext)
-- vim.keymap.set({"n", "v", "i"}, "<A-0>", vim.cmd.BufferFirst)
-- vim.keymap.set({"n", "v", "i"}, "<C-A-l>", vim.cmd.BufferMoveNext)
-- vim.keymap.set({"n", "v", "i"}, "<C-A-h>", vim.cmd.BufferMovePrevious)


