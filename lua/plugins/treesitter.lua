return {
    'nvim-treesitter/nvim-treesitter',
    branch = "main",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter")
        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "c3" },
            sync_install = false,
            highlight = {
                enable = true,
            },
            indent = { enable = true },
			auto_install = true,
        })

		-- Force treesitter for C3 files
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "c3",
            callback = function()
                vim.treesitter.start()
            end,
        })
    end
}
