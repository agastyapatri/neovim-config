-- 	TESTING OUT LUASNIP
local ls = require("luasnip")


-- 	SHORTHANDS
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamic = ls.dynamic_node


local date = function() return {os.date("%d-%m-%y")} end 

ls.add_snippets(nil, {
	all = {
		snip({
			trig = "date",
			namr = "Date",
			dscr = "Date in the form of DD-MM-YYYY",
		}, 
		{
			func(date, {}),
		}),

	},
})

