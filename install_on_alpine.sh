#!/bin/bash

# install vim
sudo apk add vim

# install python3
sudo apk add python3

# install necessary packages
sudo apk add zsh mtr tcpdump git htop iptraf-ng pv lzo tmux ack shadow sed

# git
ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig

# tmux
ln -s ~/.dotfiles/tmux/.tmux-ide.conf ~/.tmux-ide.conf
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

# zsh
cd ~/.dotfiles
git submodule init
git submodule update
cd
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/.dotfiles/zsh/themes/malchugun.zsh-theme ~/.dotfiles/zsh/.oh-my-zsh/themes/malchugun.zsh-theme
touch .docker_host

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

