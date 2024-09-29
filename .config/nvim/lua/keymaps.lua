-- <leader>
vim.g.mapleader = ' '


local opt = {
    noremap = true,
    silent = true
}

function show_documentation()
    if vim.tbl_contains({ 'vim', 'help' }, vim.bo.filetype) then
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
    ['<leader>fe'] = "<cmd>lua require('fzf-lua').git_files()<CR>",
    ['<leader>fg'] = "<cmd>lua require('fzf-lua').git_status()<CR>",
    ['<leader>f'] = "<cmd>lua require('fzf-lua').live_grep()<CR>",
    ['<leader>fh'] = "<cmd>lua require('fzf-lua').oldfiles()<CR>",
    ['<leader>fb'] = "<cmd>lua require('fzf-lua').buffers()<CR>",
    ['<leader>fp'] = "<cmd>lua require('fzf-lua').files()<CR>",
    -- 'tpope/vim-fugitive'
    ['<leader>gg'] = ':<C-u>Git<CR>',
    ['<leader>gc'] = ':<C-u>Git commit<CR>',
    ['<leader>gp'] = ':<C-u>Git push<CR>',
    ['<leader>gl'] = ':<C-u>Git log --oneline<CR>',
    ['<leader>gd'] = ':<C-u>vert Gdiffsplit !~1',
    -- 'lambdalisue/fern.vim'
    ['<leader>b'] = '<Cmd>Fern . -drawer -toggle<CR>',
    ['<leader>B'] = '<Cmd>Fern . -drawer -reveal=%<CR>',
    ['<M-f>'] = '<Cmd>Format<CR>',
    -- coc.vim
    ['K'] = ':call v:lua.show_documentation()<CR>',
    ['<leader>k'] = '<cmd>:call CocAction("jumpDefinition", "split")<CR>'
}) do
    vim.api.nvim_set_keymap('n', k, v, opt)
end

local opt1 = {
    noremap = true,
    silent = true,
    expr = true,
}
-- insert mode
for k, v in pairs({
    -- coc.vim
    ['<M-r>'] = 'coc#refresh()'
}) do
    vim.api.nvim_set_keymap('i', k, v, opt1)
end
