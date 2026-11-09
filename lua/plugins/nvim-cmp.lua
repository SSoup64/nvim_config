return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",				-- LSP autocompletion
		"hrsh7th/cmp-buffer",				-- Buffer autocompletion
		"hrsh7th/cmp-path",					-- File path autocompletion
		"hrsh7th/cmp-cmdline",				-- Command-line autocompletion
		"L3MON4D3/LuaSnip",					-- Snippet support
		"saadparwaiz1/cmp_luasnip",			-- Snippet completions
	},
	config = function()
		local cmp = require("cmp")

		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["<Tab>"] = cmp.mapping.select_next_item(), -- Move forward in suggestions
				["<S-Tab>"] = cmp.mapping.select_prev_item(), -- Move backward
				["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp", max_item_count = 10 },		-- LSP-based completions
				{ name = "path", max_item_count = 5 },			-- File path suggestions
				{ name = "buffer", max_item_count = 3 },		-- Text from open buffers
				{ name = "luasnip", max_item_count = 2 },		-- Snippets
			}),
			window = {
				completions = {
					max_height = 10,
				}
			},
			sorting = {
				comparators = {
					cmp.config.compare.offset,
					cmp.config.compare.exact,
					cmp.config.compare.score,
					cmp.config.compare.recently_used,
					cmp.config.compare.length,
					cmp.config.compare.kind,
				}
			}
		})
	end,
}

