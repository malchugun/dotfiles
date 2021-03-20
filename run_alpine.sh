#!/bin/ash

apk add git screen
git clone https://github.com/malchugun/dotfiles.git ~/.dotfiles
screen -d -m -S bash ~/.dotfiles/install_on_linux.sh


