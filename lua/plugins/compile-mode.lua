return {
  "ej-shafran/compile-mode.nvim",
  branch = "latest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- "m00qek/baleia.nvim",
  },
  config = function()
    ---@type CompileModeOpts
    vim.g.compile_mode = {
        input_word_completion = true,
        baleia_setup = true,
        bang_expansion = true,
    }
  end
}
