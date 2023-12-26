require("tokyonight").setup({
	style = "night",
	transparent = false,
	terminal_colors = true,
	light_style = "day",

	styles = {
		comments = {italic = true},
		keywords = {italic = true, bold = true},
		functions = {},
		variables = {},

		sidebars = "light",
		floats = "dark",

	},

	sidebars = {"qf", "help", "terminal"},
	hide_inactive_statusline = false, 
	dim_inactive = false, 
	lualine_bold = false, 

	on_colors = function(colors)
		colors.bg = "#000000"
		colors.bg_sidebar = "#000000"
		colors.hint = colors.orange
		colors.error = colors.red
		colors.comment = "#696969"
		colors.fg_gutter = "#b2b8cf"

	  end


})
