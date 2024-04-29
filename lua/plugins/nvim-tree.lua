-------------------------------------------------
--	ENABLING A FILE TREE 
-------------------------------------------------

return {
	"nvim-tree/nvim-tree.lua",
	-- event = 'VeryLazy',

	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {}
	end,
	
}

