#!/bin/bash

# install necessary packages
sudo apt install -y zsh mtr-tiny tcpdump vim git htop iptraf-ng netcat-openbsd pv lzop tmux 

# install packages for youcompleteme
sudo apt install -y build-essential cmake python3-dev

# clonin vundle for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# clonning oh-my-zsh 
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.dotfiles/zsh/.oh-my-zsh 

# install youcompleteme
~/.vim/bundle/YouCompleteMe/./install.py --clang-completer

