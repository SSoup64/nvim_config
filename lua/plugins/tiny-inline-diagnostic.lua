return {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    priority = 1000, -- needs to be loaded in first
    config = function()
        require('tiny-inline-diagnostic').setup({
			options = {
				multilines = {
					enabled = true,        -- enable multiline diagnostics
					-- always_show = true,    -- show on every line, not just the current line
					-- trim_whitespaces = false,
					-- tabstop = 4,
				},
			}
		})

		-- Disable LSP virtual text
        vim.diagnostic.config({ virtual_text = false })
    end
}

