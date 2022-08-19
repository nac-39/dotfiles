" ALE.vim: 非同期でLintをするプラグイン
"
" ハイライトの設定
highlight clear ALEErrorSign
highlight clear ALEWarningSign	

let g:ale_fixers['javascript'] = ['prettier-eslint']

" ファイル保存時に実行
let g:ale_fix_on_save = 1

" ローカルの設定ファイルを考慮する
let g:ale_javascript_prettier_use_local_config = 1
