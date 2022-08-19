# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
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

PROMPT='%F{magenta}%n%  %F{blue}%~%f  %F{red}$(__git_ps1 "%s")%f
# for ubuntu PROMPT='%F{cyan}%n%f%F{yellow}@%fubuntu %F{blue}%~%f  %F{red}$(__git_ps1 "%s")%f
%#%

# 日本語が文字化けしないようにする
export LANG=ja_JP.UTF-8

# 日本語のファイル名を表示する
setopt print_eight_bit



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
export PYTHON_HOME="/Library/Frameworks/Python.framework/Version/3.9/bin"
export PATH="$PYTHON_HOME:$PATH"

# nodebrew 
export PATH=$HOME/.nodebrew/current/bin:$PATH

# vscodeのcodeコマンド用のやつ
export PATH=/usr/local/bin/code:$PATH

# rbenv経由でダウンロードしたrubyのパスを通す
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"



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

# docker-composeのエイリアス
alias doc='docker-compose' 

# Intel版HomeBrewのエイリアス
alias intelBrew='arch -x86_64 /usr/local/bin/brew'

# LINE Notifyのエイリアス
alias line_notify="${HOME}/utils/line_notify/notify.sh"

# venvのエイリアス
alias venv="python -m venv"

##########
# zshの設定
##########
# 'cd' なしで移動する
setopt auto_cd
setopt auto_pushd


####################
# 何かのソフトウェア用？
####################
# The next line updates PATH for the Google Cloud SDK.
if [ -f '${HOME}/google-cloud-sdk/path.zsh.inc' ]; then . '${HOME}/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '${HOME}/google-cloud-sdk/completion.zsh.inc' ]; then . '${HOME}/google-cloud-sdk/completion.zsh.inc'; fi

#starship用
#eval "$(starship init zsh)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval "$(anyenv init -)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
