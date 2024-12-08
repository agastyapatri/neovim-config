return {
	-- VIM-FUGITIVE & VIM-RHUBARB; GIT RELATED PLUGINS 
	{	
		'tpope/vim-fugitive',
		event = 'VeryLazy',
	},
	{	
		'tpope/vim-rhubarb',
		event = 'VeryLazy',

	},

	-- 	COLORSCHEMES 
	{	
		"folke/tokyonight.nvim"
	},
	{
		'windwp/nvim-autopairs',
		event = 'VeryLazy',
		config = function() require("nvim-autopairs").setup {} end
	},
	{
		"eoh-bse/minintro.nvim",
		opts = {color = "#BE0000"},
		config = true, 
		lazy = false
	},
	{	
		'lukas-reineke/indent-blankline.nvim',	
		event = 'VeryLazy',
		main="ibl", 
		opts={}
	},
	{
		'akinsho/toggleterm.nvim', version = "*", config = true
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false, 
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		}
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		}
	},


}
