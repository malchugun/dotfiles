#!/bin/bash

# install necessary packages
sudo apt install -y zsh mtr-tiny tcpdump vim git htop iptraf-ng netcat-openbsd pv lzop tmux 

# install packages for youcompleteme
sudo apt install -y build-essential cmake python3-dev

# git
ln -s ~/.ddotfiles/git/.gitconfig ~/.gitconfig

# tmux
ln -s ~/.ddotfiles/tmux/.tmux-ide.conf ~/.tmux-ide.conf

# vim
ln -s ~/.ddotfiles/vim/.vim ~/.vim
ln -s ~/.ddotfiles/vim/.vim/.vimrc ~/.vimrc

# zsh
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/.dotfiles/zsh/themes/malchugun.zsh-theme ~/.dotfiles/zsh/.oh-my-zsh/themes/malchugun.zsh-theme

# python
sudo ln -s /usr/bin/python3 /usr/bin/python

# clonin vundle for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# clonning oh-my-zsh 
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.dotfiles/zsh/.oh-my-zsh 

# install youcompleteme
~/.vim/bundle/YouCompleteMe/./install.py --clang-completer

