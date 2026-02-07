return {
	"rebelot/kanagawa.nvim",
	config = function()
		require('kanagawa').setup({
			compile=true,
			background = {
				dark = "dragon",
				light = "lotus"
			}
		})
	end,
	build = function()
		vim.cmd(":KanagawaCompile")
	end
}
