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
		'romgrk/barbar.nvim',
		dependencies = {
		  'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
		  'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
		},
		init = function() vim.g.barbar_auto_setup = false end,
		opts = {
		  -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		  -- animation = true,
		  -- insert_at_start = true,
		  -- …etc.
		},
		version = '^1.0.0', -- optional: only update when a new 1.x version is released
	}

}
