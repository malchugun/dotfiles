#!/bin/ash

apk add git screen curl sudo
git clone https://github.com/malchugun/dotfiles.git ~/.dotfiles
screen -d -m -S ash ~/.dotfiles/install_on_alpine.sh


