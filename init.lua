---- Plugins
--- Load Lazy plugin manager
require("config.lazy")

--- Change the color theme
vim.cmd("colorscheme gruber-darker")

---- Other options
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
