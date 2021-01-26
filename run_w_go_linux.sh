#!/bin/bash

git clone https://github.com/malchugun/dotfiles.git ~/.dotfiles
sudo apt install screen
screen -d -m -S bash ~/.dotfiles/install.sh


