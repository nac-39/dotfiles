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
    shiftwidth = 4,
    swapfile = false,
    ambiwidth = "single",
    termguicolors = true,
    winblend = 0, -- ウィンドウの不透明度
    pumblend = 0, -- ポップアップメニューの不透明度
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])

-- plugin settings

-- coc.nvim

-- グローバル変数の設定
local global_options = {
    -- vim-sandwich
    sandwich_no_default_key_mappings = 1,
    operator_sandwich_no_default_key_mappingss = 1,

    -- coc.vim
    coc_global_extensions = { 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-git', 'coc-fzf-preview', 'coc-lists' },

    -- rainbow
    rainbow_active = 1,
    -- rustfmt
    rustfmt_autosave = 1,
    rust_conceal = 1,
    rustc_path = "/Users/nanaco.s/.cargo/bin/rustc",

    -- fern.vim
    fern_default_hidden = 1,
    fern_renderer = 'nerdfont',
}



for k, v in pairs(global_options) do
    vim.g[k] = v
end
