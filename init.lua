-----------------------------------------------
--	||\\  || \\    // ||  ||\\  //||  --
--	|| \\ ||  \\  //  ||  || \\// ||  --
--	||  \\||   \\//   ||  ||  \/  ||  --
-----------------------------------------------

-- OPTIONS MAPPINGS ETC. 
require("options")
require("mappings")
----------------------------------------------------------
-- 	PACKAGE MANAGEMENT: INSTALLING LAZY.NVIM 
----------------------------------------------------------
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system {
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable', -- latest stable release
		lazypath,
	}
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup({
	--	go to lua/plugins for the modules of all the installed plugins 
	import = 'plugins'}, {}
)

-- SETUP NEOVIM LUA CONFIGURATION
require('neodev').setup()

-- IMPORTING PLUGIN CONFIGURATIONS
require("configs.lsp")
require("configs.treesitter")
require("configs.indent-blankline")
require("configs.nvim-tree")
require("configs.toggleterm")
require("configs.telescope")
require("configs.nvim-cmp")
