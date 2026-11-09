---- Plugins
--- Load Lazy plugin manager
require("config.lazy")

--- Compile mode
vim.opt.splitbelow = true
vim.g.compile_mode = {
	default_command = {
		c = "cc -o %:r % && ./%:r",
		cpp = "cc -std=c++23 -o %:r % && ./%:r",
		rust = "cargo r",
		c3 = "c3c run",
		python = "python %",
		go = "go run %",
		java = "javac % && java %:r",
		lua = "lua %",
	},
	focus_compilation_buffer = true,
	input_word_completion = true,
	bang_expansion = true,
}

--- Dired.nvim
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Check if no files were passed on startup
    if vim.fn.argc() == 0 then
      -- Open Dired.nvim (adjust command if yours is different)
      vim.cmd("Dired")
    end
  end,
})

---- Other options
--- Change the color theme
vim.cmd("colorscheme gruber-darker")

--- Line numbers
vim.wo.relativenumber = true
vim.wo.number = true

vim.o.cursorline = true
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "yellow" })
vim.api.nvim_set_hl(0, 'Cursor', { bg = "yellow" })

--- Disable mouse
vim.opt.mouse = ""

--- Tab settings
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.softtabstop = 4
vim.o.wrap = false

--- Enable inlay hints
vim.lsp.inlay_hint.enable()

--- Formatting
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})

vim.filetype.add({
    extension = {
        c3 = 'c3',
    },
})

--- Keyboard binds
vim.keymap.set("n", "<Esc><Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>x", ":Compile!<CR>")











