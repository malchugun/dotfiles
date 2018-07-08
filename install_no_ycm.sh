#!/bin/bash

# install necessary packages
sudo apt install zsh mtr-tiny tcpdump vim git htop iptraf-ng pv lzop tmux ack-grep 

# git
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig

# tmux
ln -s ~/.dotfiles/tmux/.tmux-ide.conf ~/.tmux-ide.conf

# zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.dotfiles/zsh/.oh-my-zsh 
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/.dotfiles/zsh/themes/malchugun.zsh-theme ~/.dotfiles/zsh/.oh-my-zsh/themes/malchugun.zsh-theme

# vim
ln -s ~/.dotfiles/vim/.vim ~/.vim
ln -s ~/.dotfiles/vim/.vim/.vimrc_no_ycm ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# changing default shell
echo -e "\n Enter password to change default user shell \n"
chsh -s /bin/zsh
/bin/zsh

