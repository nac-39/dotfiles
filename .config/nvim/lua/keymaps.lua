-- <leader>
vim.g.mapleader = ' '


opt = {
    noremap = true,
    silent = true
}

function show_documentation()
  if vim.tbl_contains({'vim', 'help'}, vim.bo.filetype) then
    vim.cmd('h ' .. vim.fn.expand('<cword>'))
  elseif vim.fn['coc#rpc#ready']() then
    vim.fn['CocActionAsync']('doHover')
  end
end

-- normal mode
for k, v in pairs({
    ['<M-Right>'] = ':<C-u>bnext<CR>',
    ['<M-Left>'] = ':<C-u>bprevious<CR>',
    -- fzf
    ['<leader>e'] = "<cmd>lua require('fzf-lua').files()<CR>",
    ['<leader>g'] = "<cmd>lua require('fzf-lua').git_status()<CR>",
    ['<leader>p'] = "<cmd>lua require('fzf-lua').live_grep()<CR>",
    ['<leader>h'] = "<cmd>lua require('fzf-lua').oldfiles()<CR>",
    ['<leader>b'] = "<cmd>lua require('fzf-lua').buffers()<CR>",
    -- 'tpope/vim-fugitive'
    ['<leader>GG'] = ':<C-u>Git<CR>',
    ['<leader>GC'] = ':<C-u>Git commit<CR>',
    ['<leader>GP'] = ':<C-u>Git push<CR>',
    ['<leader>GL'] = ':<C-u>Git log --oneline<CR>',
    ['<leader>GD'] = ':<C-u>vert Gdiffsplit !~1',
    -- 'lambdalisue/fern.vim'
    ['<leader>f'] = '<Cmd>Fern . -drawer -toggle<CR>',
    ['<leader>F'] = '<Cmd>Fern . -drawer -reveal=%<CR>',
    -- coc.vim
    ['K'] = ':call v:lua.show_documentation()<CR>',
}) do
    vim.api.nvim_set_keymap('n', k, v, opt)
end

opt1 = {
    noremap = true,
    silent = true,
    expr = true,
}
-- insert mode
for k, v in pairs({
    -- coc.vim
    ['<M-r>'] = 'coc#refresh()'
})do
    vim.api.nvim_set_keymap('i', k, v, opt1)
end

