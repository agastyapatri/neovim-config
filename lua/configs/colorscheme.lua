require("tokyonight").setup({
	style = "night",
	transparent = false,
	terminal_colors = true,
	light_style = "day",

	styles = {
		comments = {italic = true},
		keywords = {bold = true},
		functions = {bold = true},
		variables = {italic = true},

		sidebars = "light",
		floats = "dark",

	},

	sidebars = {"qf", "help", "terminal"},
	hide_inactive_statusline = false, 
	dim_inactive = false, 
	lualine_bold = false, 

	on_colors = function(colors)
		colors.bg = "#000000"
		colors.bg_sidebar = "#1d1d1d"
		colors.fg_sidebar = "#c9cac9"
		colors.hint = colors.orange
		colors.error = colors.red
		colors.comment = "#696969"
		colors.fg_gutter = "#b30000"

	  end


})
