return {
    "X3eRo0/dired.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
    config = function()
        require("dired").setup({
            path_separator = "/",
            show_banner = false,
            show_icons = false,
            show_hidden = true,
            show_dot_dirs = true,
            show_colors = true,

			-- Define keybindings for various 'dired' actions
			keybinds = {
				dired_up = "<BS>",
			},
        })

		vim.keymap.set("n", "\\", ":Dired<CR>")
    end
}
