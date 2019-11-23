#!/bin/bash

git clone https://github.com/malchugun/dotfiles.git ~/.dotfiles
apt install screen
screen -d -m -S bash ~/.dotfiles/install_with_GO.sh


