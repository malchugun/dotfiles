#!/bin/bash

# install necessary packages
sudo apt install zsh mtr-tiny tcpdump vim git htop iptraf-ng pv lzop tmux 

# install packages for youcompleteme
sudo apt install -y build-essential cmake python3-dev
if dpkg -l|grep -q python2.7; then sudo apt install -y python-dev; fi

# git
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig

# tmux
ln -s ~/.dotfiles/tmux/.tmux-ide.conf ~/.tmux-ide.conf

# zsh
git submodule init
git submodule update
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/.dotfiles/zsh/themes/malchugun.zsh-theme ~/.dotfiles/zsh/.oh-my-zsh/themes/malchugun.zsh-theme

# python
sudo ln -s /usr/bin/python3 /usr/bin/python

# vim
ln -s ~/.dotfiles/vim/.vim ~/.vim
ln -s ~/.dotfiles/vim/.vim/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/./install.py --clang-completer

# changing default shell
echo "\nEnter password to change default user shell\n"
chsh -s /bin/zsh
/bin/zsh

