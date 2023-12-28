------------------------------------------------------------
-- 	This file only contains a few non essential plugins 
------------------------------------------------------------
return {
	-- VIM-FUGITIVE & VIM-RHUBARB; GIT RELATED PLUGINS 
	{	'tpope/vim-fugitive'	},
	{	'tpope/vim-rhubarb'	},

	-- ALPHA-NVIM: A NEOVIM STARTUP SCREEN
	{
		"goolord/alpha-nvim",
		config = function ()
			require"alpha".setup(require"alpha.themes.dashboard".config)
		end
	},

}
