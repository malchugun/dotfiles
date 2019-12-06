#!/bin/bash

git clone https://github.com/malchugun/dotfiles.git ~/.dotfiles
sudo apt install screen
sudo screen -d -m -S bash ~/.dotfiles/install.sh


