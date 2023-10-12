local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ import = "csnvim.plugins" },
	{ import = "csnvim.plugins.lsp" },
}, {
	install = {
		colorscheme = { "nightfly" },
	},
	checker = {
		enabled = true, -- check for updates on startup
		notify = false -- dont notify me
	},
	change_detection = {
		notify = false
	}
})
