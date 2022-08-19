"　タブを有効にする
let g:airline#extentions#tabline#enabled = 1
" タブに番号を表示する
let g:airline#extensions#tabline#buffer_idx_mode = 1

" カーソルキーでbuffer移動
nnoremap <Left> :bp<CR>
nnoremap <Right> :bn<CR>

" powerline fontを入れる
let g:airline_powerline_fonts = 1

" vim-airline-themesが必要
let g:airline_theme='icebergDark'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

if exists('&ambw')
  set ambiwidth=single
endif

"左側に使用されるセパレータ
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
""右側に使用されるセパレータ
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.crypt = '🔒'		"暗号化されたファイル
"let g:airline_symbols.linenr = '¶'			"行
"let g:airline_symbols.maxlinenr = '㏑'		"最大行
"let g:airline_symbols.branch = '⭠'		"gitブランチ
"let g:airline_symbols.paste = 'ρ'			"ペーストモード
"let g:airline_symbols.spell = 'Ꞩ'			"スペルチェック
"let g:airline_symbols.notexists = '∄'		"gitで管理されていない場合
"let g:airline_symbols.whitespace = 'Ξ'	"空白の警告(余分な空白など)
