#!/bin/bash

set -u

# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR

echo "start setup..."

# check volta exists
if ! command -v volta &> /dev/null
then
    echo "install volta"
    # install Volta
    curl https://get.volta.sh | bash
else
    echo "volta is already installed"
    volta -v
fi

# check uv exists
if ! command -v uv &> /dev/null
then
    echo "install uv"
    # On macOS and Linux.
    curl -LsSf https://astral.sh/uv/install.sh | sh
else
    echo "uv is already installed"
    uv -v
fi

# 環境ごとの初期設定
if uname -a | grep -sq "Ubuntu"; then
  # Ubuntu
  echo "-------------"
  echo "ubuntu setup"
elif [ "$(uname)" = "Darwin" ]; then
  # macOS
    #------------------------------------------
    # homebrew(arm64)
    #------------------------------------------
    echo "homebrewをインストールします..."
    which /opt/homebrew/bin/brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    echo "brew doctorを実行します..."
    which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew doctor
    
    echo "brew updateを実行します..."
    which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew update --verbose
    
    echo "brew upgradeを実行します..."
    which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew upgrade --verbose
    
    echo ".Brewfileで管理しているアプリケーションをインストールします..."
    which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew bundle --file ./.Brewfile --verbose
    
    echo "brew cleanupを実行します..."
    which brew >/dev/null 2>&1 && brew cleanup --verbose
    
    echo "Installing some software & library..."
    brew bundle -v --file=~/dotfiles/Brewfile

fi
# zsh関連
[ -e ~/.zsh ] || mkdir -p ~/.zsh
[ -e ~/.zsh/git-prompt.zsh ] || curl https://raw.githubusercontent.com/woefe/git-prompt.zsh/master/git-prompt.zsh > .zsh/git-prompt.zsh
[ -e ~/.zsh/zsh-z.plugin.zsh ] || curl https://raw.githubusercontent.com/agkozak/zsh-z/master/zsh-z.plugin.zsh > ~/.zsh/zsh-z.plugin.zsh
[ -e ~/.zsh/zsh-syntax-highlighting.git  ] || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git > ~/.zsh/

for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".gitmodules" ] && continue

    ln -snfv ~/dotfiles/"$f" ~/
done

[ -e ~/.gitconfig.local ] || cp ~/dotfiles/.gitconfig.local.template ~/.gitconfig.local


cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END
