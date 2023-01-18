local options = {
	encoding = "utf-8",
	fileencoding = "utf-8",
	cursorline = true,
	number = true,
	clipboard = "unnamedplus",
	shell = "zsh",
	smartcase = true,
	smartindent = true,
	undofile = true,
	background = "dark",
	tabstop = 4,
	expandtab = true,
	showcmd = true, 
	hlsearch = true,
	pumblend = 20,
	shiftwidth = 4,
	swapfile = false,
	ambiwidth = "single",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])

-- plugin settings
-- rainbow
rainbow_active = 1
