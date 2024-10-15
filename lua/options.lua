--[[GENERAL EDITOR SETTINGS]]
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.scrolloff = 10

-- 	changing the color of the cursor 
vim.api.nvim_set_hl(0, "Cursor", {bg = '#02A226'})
vim.o.guicursor = "i:block-Cursor"
-- DISABLING NETRW FOR NVIM-TREE 
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1  

-- Set highlight on search
vim.o.hlsearch = false
vim.o.background = "dark"
--	cursorline 
vim.opt.cursorline = true 

-- Make line numbers default
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 50
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'


-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = '*',
})

