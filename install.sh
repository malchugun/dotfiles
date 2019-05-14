#!/bin/bash

# install software-prop 
sudo apt-get install -y software-properties-common

# latest vim
sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update

# install necessary packages
sudo apt install zsh mtr-tiny tcpdump vim git htop iptraf-ng pv lzop tmux ack-grep 

# git
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig

# tmux
ln -s ~/.dotfiles/tmux/.tmux-ide.conf ~/.tmux-ide.conf

# Go Install

# Download Latest Go
GOURLREGEX='https://dl.google.com/go/go[0-9\.]+\.linux-amd64.tar.gz'
echo "Finding latest version of Go for AMD64..."
url="$(wget -qO- https://golang.org/dl/ | grep -oP 'https:\/\/dl\.google\.com\/go\/go([0-9\.]+)\.linux-amd64\.tar\.gz' | head -n 1 )"
latest="$(echo $url | grep -oP 'go[0-9\.]+' | grep -oP '[0-9\.]+' | head -c -2 )"
echo "Downloading latest Go for AMD64: ${latest}"
wget --quiet --continue --show-progress "${url}"
unset url
unset GOURLREGEX
# Remove Old Go
sudo rm -rf /usr/local/go
# Install new Go
sudo tar -C /usr/local -xzf go"${latest}".linux-amd64.tar.gz
echo "Create the skeleton for your local users go directory"
mkdir -p ~/Projects/Go
# Remove Download
rm go"${latest}".linux-amd64.tar.gz
# For current shell
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

