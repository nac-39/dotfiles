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
    termguicolors = true,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])

-- plugin settings
-- rainbow
vim.g.rainbow_active = 1
-- rustfmt
vim.g.rustfmt_autosave = 1
vim.g.rust_conceal = 1
vim.g.rustc_path = "/Users/nanaco.s/.cargo/bin/rustc"

-- coc.nvim
vim.g.coc_global_extensions = { 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-git', 'coc-fzf-preview', 'coc-lists' }
-- fern.vim
vim.g['fern#default_hidden'] = 1
vim.g['fern#renderer'] = 'nerdfont'

