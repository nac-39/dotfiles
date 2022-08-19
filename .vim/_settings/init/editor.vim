" 行番号を表示
set number

set encoding=utf8
" 構文ハイライトを有効化
syntax enable
" シンタックスハイライトを有効化
set highlight


" 前回の検索パターンが存在するとき、それにマッチするテキストを全て強調表示する。
set hlsearch
" 検索パターンにおいて大文字と小文字を区別しない。
set ignorecase
" 打ち込んだところまでの検索パターンのテキストを表示する
set incsearch
" 検索パターンが大文字を含んでいたらオプション 'ignorecase' を上書きする。
set smartcase

" カーソル行のハイライト
set cursorline
" 最下ウィンドウにいつステータス行が表示されるかを設定する。2=常に表示
set laststatus=2

" インデントの見た目の空白数の設定値
set shiftwidth=4

set tabstop=4
" 新しい行を開始した時、新しい業のインデントを現在行と同じにする
set autoindent
" かっこのハイライト
hi MatchParen ctermfg=LightGreen ctermbg=blue
