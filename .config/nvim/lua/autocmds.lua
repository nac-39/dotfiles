local augroup = vim.api.nvim_create_augroup -- Create/get sutocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Remove whitespace on save
autocmd("BufWritePre", {
	pattern = "*",
	command = ":%s/\\s\\+$//e",
})
-- Don't auto commenting new lines
autocmd("BufEnter", {
	pattern = "*",
	command = "set fo-=c fo-=r fo-=o",
})

-- Restore cursor location when file is opened
autocmd({ "BufReadPost" }, {
	pattern = { "*" },
	callback = function()
		vim.api.nvim_exec('silent! normal! g`"zv', false)
	end,
})

augroup('coc_ts', {})
autocmd('FileType', {
    group = 'coc_ts',
    pattern = {'typescript', 'typescriptreact'},
    callback= function() coc_typescript_settings() end
})

function coc_typescript_settings()
      vim.api.nvim_buf_set_keymap(0, 'n', '<Plug>(lsp)f', ':CocCommand eslint.executeAutofix<CR>:CocCommand prettier.formatFile<CR>', {silent = true})
end
