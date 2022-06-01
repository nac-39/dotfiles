#!/bin/sh

karabiner_root=$(cd $(dirname $0)/.. && pwd)

# dotfiles/.config/karabiner/assetsのリンクを
# ~/.config/karabiner/assetsに作成

cd ${karabiner_root}/karabiner/assets/complex_modifications
for file in *.json;do
    ln -s ${PWD}/${file} ${HOME}/.config/karabiner/assets/complex_modifications/
done

