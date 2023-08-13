# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
##########
# 見た目関連
###########
# パスとgitのブランチを表示
setopt PROMPT_SUBST

##################
# git関連
##################
source ~/.zsh/git-prompt.sh
# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# z-zshの読み込み
source ~/.zsh/zsh-z.plugin.zsh
zstyle ':completion:*' menu select
if [ -n "$SSH_CONNECTION" ]; then
  PROMPT='%F{magenta}%n%f@%m%  %F{blue}%~%f  %F{red}$(__git_ps1 "%s")%f
%# '
else
  PROMPT='%F{magenta}%n%f%  %F{blue}%~%f  %F{red}$(__git_ps1 "%s")%f
%# '
fi

# 日本語が文字化けしないようにする
export LANG=ja_JP.UTF-8

# 日本語のファイル名を表示する
setopt print_eight_bit

#########################
# control-rをfzfにする
#########################

function select-history() {
  BUFFER=$(history -n -r 1 | fzf --no-sort +m --query "$LBUFFER" --prompt="History > ")
  CURSOR=$#BUFFER
}
zle -N select-history
bindkey '^r' select-history

#########################
# zsh-syntax-highlighting
#########################
# コマンドに色つける
source ${HOME}/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES
# エイリアスコマンドのハイライト
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'
# 存在するパスのハイライト
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
# グロブ
ZSH_HIGHLIGHT_STYLES[globbing]='none'

# マッチしない括弧
ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=red,bold'
# 括弧の階層
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-5]='fg=cyan,bold'
# カーソルがある場所の括弧にマッチする括弧
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='standout'



######
# path
######
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# PYTHON_HOMEにインストールしたpythonのパスを指定する
export PYTHON_HOME="${HOME}/.pyenv/"
export PATH="$PYTHON_HOME:$PATH"

# nodebrew 
export PATH=$HOME/.nodebrew/current/bin:$PATH

# vscodeのcodeコマンド用のやつ
export PATH=/usr/local/bin/code:$PATH

# rbenv経由でダウンロードしたrubyのパスを通す
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"

# flutter
export  PATH=$PATH:~/.local/bin/flutter/bin

export PATH=$HOME/.anyenv/bin:$PATH
export PATH=$HOME/.nodenv/bin:$PATH

# node管理
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# batの環境変数
export BAT_THEME=TwoDark
############
# エイリアス #
############
# pythonコマンドでpython3が起動するにようにaliasを設定
alias python='python3'
alias pip='pip3'

# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias ls='ls -FG'
alias ll='ls -alFG'

# rmは丁寧に扱う
alias rm="rm -i"

# git
alias g="git"

# docker-composeのエイリアス
alias doc='docker-compose' 

# Intel版HomeBrewのエイリアス
alias intelBrew='arch -x86_64 /usr/local/bin/brew'

# LINE Notifyのエイリアス
alias line_notify="${HOME}/utils/line_notify/notify.sh"

# venvのエイリアス
alias venv="python -m venv"

# 一瞬でvscodeを開くエイリアス
alias cr="code -r ."

# vimでメモ取るエイリアス
alias vimemo="nvim /tmp/memo.txt && cat /tmp/memo.txt | pbcopy && \rm /tmp/memo.txt"

# karabiner-elementsのcli
alias karabiner_cli="/Library/Application\ Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli"

alias kli="/Library/Application\ Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli --select-profile lily58"
alias kmac="/Library/Application\ Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli --select-profile 'Mac Internal Keyboard'"
alias kfi="/Library/Application\ Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli --select-profile FILCO"

# ある地点の天気を表示するエイリアス
alias tenki="~/workspace/utility/tenki.sh"           ##########

# catをbatにする
alias cat="bat -pP"

# git
alias g="git"

alias nv="nvim"
# zshの設定
##########
# cd -の後にタブ補完でサジェストされるようにする
setopt auto_pushd


####################
# 何かのソフトウェア用？
####################
# The next line updates PATH for the Google Cloud SDK.
if [ -f '${HOME}/google-cloud-sdk/path.zsh.inc' ]; then . '${HOME}/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '${HOME}/google-cloud-sdk/completion.zsh.inc' ]; then . '${HOME}/google-cloud-sdk/completion.zsh.inc'; fi

#starship用
# eval "$(starship init zsh)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# anyenv
eval "$(anyenv init -)"
eval "$(nodenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# manにシンタックスハイライトをつける
man() {
        env \
            LESS_TERMCAP_mb=$(printf "\e[1;33m") \
            LESS_TERMCAP_md=$(printf "\e[1;33m") \
            LESS_TERMCAP_me=$(printf "\e[0m") \
            LESS_TERMCAP_se=$(printf "\e[0m") \
            LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
            LESS_TERMCAP_ue=$(printf "\e[0m") \
            LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
