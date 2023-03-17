-- ユーザーコマンドを定義する
vim.api.nvim_create_user_command('Format', ":call CocAction('format')", { nargs = 0 })
