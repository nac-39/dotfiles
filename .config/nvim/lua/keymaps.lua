-- <leader> 
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<M-Right>', ':<C-u>bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<M-Left>', ':<C-u>bprevious<CR>', {noremap = true, silent = true})

-- 'ibhagwan/fzf-lua' ----------------------------------------------------------
opt = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<leader>e', "<cmd>lua require('fzf-lua').files()<CR>", opt)
vim.api.nvim_set_keymap('n', '<leader>g', "<cmd>lua require('fzf-lua').git_status()<CR>", opt)
vim.api.nvim_set_keymap('n', '<leader>p', "<cmd>lua require('fzf-lua').live_grep()<CR>", opt)
vim.api.nvim_set_keymap('n', '<leader>h', "<cmd>lua require('fzf-lua').oldfiles()<CR>", opt)
vim.api.nvim_set_keymap('n', '<leader>b', "<cmd>lua require('fzf-lua').buffers()<CR>", opt)
-- 'tpope/vim-fugitive' --------------------------------------------------------
vim.api.nvim_set_keymap('n', '<leader>GG', ':<C-u>Git<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>GC', ':<C-u>Git commit<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>GP', ':<C-u>Git push<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>GL', ':<C-u>Git log --oneline<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>GD', ':<C-u>vert Gdiffsplit !~1', {noremap = true})

