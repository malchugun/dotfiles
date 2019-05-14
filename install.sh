#!/bin/bash

# install software-prop 
sudo apt-get install -y software-properties-common

# install latest vim
sudo add-apt-repository -y ppa:jonathonf/vim
sudo apt-get update
sudo apt install -y vim

# install necessary packages
sudo apt install -y zsh mtr-tiny tcpdump git htop iptraf-ng pv lzop tmux ack-grep 

# git
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig

# tmux
ln -s ~/.dotfiles/tmux/.tmux-ide.conf ~/.tmux-ide.conf

# For current shell
mkdir $HOME/Projects/Go
export GOPATH=$HOME/Projects/Go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# zsh
cd ~/.dotfiles
git submodule init
git submodule update
cd
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/.dotfiles/zsh/themes/malchugun.zsh-theme ~/.dotfiles/zsh/.oh-my-zsh/themes/malchugun.zsh-theme

# vim
ln -s ~/.dotfiles/vim/.vim ~/.vim
ln -s ~/.dotfiles/vim/.vim/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
vim +GoInstallBinaries +qall

# cron for nightly updates
cd /tmp
crontab -l > mycron
echo "0 0 * * *  cd ~/.dotfiles && git pull" >> mycron
crontab mycron
rm mycron

sudo chsh vspirin -s /usr/bin/zsh

