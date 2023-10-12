return {
	"bluz71/vim-nightfly-guicolors",
	priority = 1000, -- make sure to load this before all other start plugins
	config = function()
		-- load the colorscheme here
		-- Lua initialization file
		vim.g.nightflyTransparent = true
		vim.cmd([[colorscheme nightfly]])
	end,
}
