return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.config("lua_ls", {})
        vim.lsp.config("pyright", {})
        vim.lsp.config("clangd", {})
        vim.lsp.config("rust_analyzer", {})
    end
}
