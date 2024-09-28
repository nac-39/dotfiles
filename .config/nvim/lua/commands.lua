-- ユーザーコマンドを定義する
vim.api.nvim_create_user_command('Format', ":call CocAction('format')", { nargs = 0 })


-- Nerdfont を使う
vim.cmd('let g:fern#renderer="nerdfont"')

-- アイコンに色をつける
vim.cmd([[
  augroup my-glyph-palette
    autocmd! *
    autocmd FileType fern call glyph_palette#apply()
    autocmd FileType nerdtree,startify call glyph_palette#apply()
  augroup END
]])
