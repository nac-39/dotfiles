require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "typescript",
        "tsx"
    },
    highlight = {
        enable = true,
    }
})

-- <Tab>で候補をナビゲート
function check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.')[col - 1] == '\\s'
end

vim.api.nvim_set_keymap('i', '<Tab>',
    [[pumvisible() ? "\<C-n>" : v:lua.check_back_space() ? "\<Tab>" : coc#refresh()]],
    { noremap = true, expr = true, silent = true }
)

-- <Tab>で次、<S-Tab>で前
vim.api.nvim_set_keymap('i', '<Tab>',
    [[pumvisible() ? "\<C-n>" : "\<Tab>"]],
    { noremap = true, expr = true, silent = true }
)

vim.api.nvim_set_keymap('i', '<S-Tab>',
    [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]],
    { noremap = true, expr = true, silent = true }
)
