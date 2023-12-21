-- See `:help cmp`
local cmp = require 'cmp'
local luasnip = require 'luasnip'
-- require('luasnip.loaders.from_vscode').lazy_load({paths = {"./snippets"}})
require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete {},
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_locally_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.locally_jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}

--	SETTING THE BACKGROUND COLOR OF THE COMPLETION ENGINE 
vim.api.nvim_set_hl(0, "CmpNormal", { bg = "#131313", fg="#FFFFFF" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#131313", fg="#FFFFFF" })
require("cmp").setup({
	window = {
		completion = {
			border = "rounded",
			winhighlight = "Normal:CmpNormal",
		},
		documentation = {
			border = "rounded",
			winhighlight = "Normal:Pmenu",
		}
	}
})


----------------------------
--	ADDING SNIPPETS 
----------------------------
local ls = require "luasnip"
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamic = ls.dynamic_node

-- 	PYTHON SNIPPETS 
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
					"",
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


ls.add_snippets(nil, {
	all = {
		-- 	Initializing and triggering the snippet 
		snip({
			trig = "timer",
			namr = "timer",
			dscr = "timing the execution of a snippet of code",
		}, 
		-- 	the content of the snippet 
		{
			text({
					"import timeit",
					"start = timeit.default_timer()",
					"end = timeit.default_timer()",
					"print(end - start)",
				}),
				insert(0)
		}),

	},
})


