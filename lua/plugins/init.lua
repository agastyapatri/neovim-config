------------------------------------------------------------
-- 	This file only contains plugins which do not have long install scripts
------------------------------------------------------------
return {
	-- VIM-FUGITIVE & VIM-RHUBARB; GIT RELATED PLUGINS 
	{	'tpope/vim-fugitive'	},
	{	'tpope/vim-rhubarb'	},

	{
		"eoh-bse/minintro.nvim",
		opts = { color = "#BA0000" },
		config = true,
		lazy = false
	},
	{	'numToStr/Comment.nvim', 
		-- event = 'VeryLazy',
		opts = {} 
	},
	{
		"folke/tokyonight.nvim"
	},
	{
		'nvim-lualine/lualine.nvim',
		opts = {
			options = {
				icons_enabled = false,
				theme = 'onedark',
				component_separators = '|',
				section_separators = '',
			},
		},

	},
	{
		'windwp/nvim-autopairs',
		-- event = 'VeryLazy',
		config = function() require("nvim-autopairs").setup {} end
	},
	{
		"folke/which-key.nvim",
		-- event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},
	{
		'akinsho/toggleterm.nvim', 
		-- event = 'VeryLazy',
		version = "*", 
		config = true
	},
}
