syntax enable
set shiftwidth=4

augroup bufpreview
  autocmd!
  autocmd Filetype markdown :PreviewMarkdown
augroup END

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'vim-denops/denops.vim'
Plug 'kat0h/bufpreview.vim'
call plug#end()

" 行番号を表示
set number

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/nanaco.s/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/nanaco.s/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/Users/nanaco.s/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

