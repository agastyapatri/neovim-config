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

-- IMPORTING PLUGIN CONFIGURATIONS
require("configs.treesitter")
require("configs.nvim-lspconfig")

-- load the individual colorschemes depending on which theme is desired
require("configs.tokyonight")
require("configs.telescope")
require("configs.nvim-cmp")
require("configs.indent-blankline")
require("configs.toggleterm")
require("configs.spectre")
require("configs.noice")
require("configs.nvim-tree")
