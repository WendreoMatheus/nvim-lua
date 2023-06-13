local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
	return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
	return
end

-- laod friendly-snippets
require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_espand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
		["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
		["<C-u>"] = cmp.mapping.scroll_docs(-1),
		["<C-d>"] = cmp.mapping.scroll_docs(1),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(), -- show complete suggestions
		["<C-c>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}), -- show complete suggestions
		["<C-e>"] = cmp.mapping.abort(), -- close completion window
		["<Right>"] = cmp.mapping.confirm({ select = false }),
		["<Tab>"] = cmp.mapping.confirm(function()
			if cmp.visible() then
				cmp.select_next_item()
			end
		end, {
			"i",
			"s",
		}),
		["<S-Tab>"] = cmp.mapping.confirm(function()
			if cmp.visible() then
				cmp.select_prev_item()
			end
		end, {
			"i",
			"s",
		}),
	}),
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
			vim_item.menu = ({
				nvim_lsp = "[LSP]",
				buffer = "[Buffer]",
				luasnip = "[LuaSnip]",
				path = "[Path]",
			})[entry.source.name]
			return vim_item
		end,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" }, -- nvim lsp
		{ name = "buffer" }, -- text within current buffer
		{ name = "luasnip" }, -- snippets
		{ name = "path" }, -- file system paths
	}),
	confirm_opts = {
		behaviour = cmp.ConfirmBehavior.Replace,
		select = false,
	},
})
