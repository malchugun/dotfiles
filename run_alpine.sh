#!/bin/ash

apk add git curl sudo
git clone https://github.com/malchugun/dotfiles.git ~/.dotfiles
ash ~/.dotfiles/install_on_alpine.sh


