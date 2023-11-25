----------------------------
--	PYTHON CODE SNIPPETS 
----------------------------

-- 	SHORTHANDS
local ls = require("luasnip")
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamic = ls.dynamic_node


local file_pattern = "*.py"


-- 	1. IMPORTING LIBRARIES 
ls.add_snippets(nil, {
	all = {
		-- 	Initializing and triggering the snippet 
		snip({
			trig = "gen_imports",
			namr = "Imports",
			dscr = "Importing some commonly used libraries",
		}, 
		-- 	the content of the snippet 
		{
			text({
					"import numpy as np",
					"import torch",
					"import torch.nn as nn",
					"DTYPE = torch.float32"
				}),
			insert(0)
		}),

	},
})


-- 	2. GENERATING a PYTORCH NETWORK; SUBCLASSING THE NN MODULE
ls.add_snippets(nil, {
	all = {
		-- 	Initializing and triggering the snippet 
		snip({
			trig = "gen_network",
			namr = "Network",
			dscr = "Generating the boilerplate for a torch network",
		}, 
		-- 	the content of the snippet 
		{
			text({
					"class TestNetwork(nn.Module):",
					"	def __init__(self, ):",
					"		super().__init__()",
					" ",
					"	def forward(self, x):",
					"		pass"

				}),
				insert(0)
		}),

	},
})


-- 	3. COMMENTING AND DOCSTRINGS
ls.add_snippets(nil, {
	all = {
		-- 	Initializing and triggering the snippet 
		snip({
			trig = "checkpoint",
			namr = "Comment",
			dscr = "Creating a comment box",
		}, 
		-- 	the content of the snippet 
		{
			text({
					"#--------------------------------------------------------------------#",
					"# #",
					"#--------------------------------------------------------------------#",

				}),
				insert(0)
		}),

	},
})


ls.add_snippets(nil, {
	all = {
		-- 	Initializing and triggering the snippet 
		snip({
			trig = "docstring",
			namr = "Doc",
			dscr = "Creating a documentation section",
		}, 
		-- 	the content of the snippet 
		{
			text({
					" \"\"\" ",
					"<text here>",
					" ",
					"[args]:",
					" ",
					"[returns]:",
					" \"\"\" ",
				}),
				insert(0)
		}),

	},
})

-- FUNCTION PROTOTYPE
ls.add_snippets(nil, {
	all = {
		-- 	Initializing and triggering the snippet 
		snip({
			trig = "gen_func",
			namr = "genfunc",
			dscr = "Generating boilerplate for a function prototype",
		}, 
		-- 	the content of the snippet 
		{
			text({
					"def TestFunc() -> type:",
					"	pass",
				}),
				insert(0)
		}),

	},
})


ls.add_snippets(nil, {
	all = {
		-- 	Initializing and triggering the snippet 
		snip({
			trig = "ifnm",
			namr = "ifnm",
			dscr = "Generating a import guard",
		}, 
		-- 	the content of the snippet 
		{
			text({
					"if __name__ == \"__main__\": ",
					"	pass",
				}),
				insert(0)
		}),

	},
})


