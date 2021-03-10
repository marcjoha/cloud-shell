#!/bin/bash
CWD=`pwd`

# Create base folders
mkdir -p ~/.cloudshell
mkdir -p ~/bin

# Remove various warnings
touch ~/.cloudshell/no-apt-get-warning
touch ~/.cloudshell/no-pip-warning

# Configure k8s prompt
ln -sf $CWD/bin/kube-ps1.sh  ~/bin/kube-ps1.sh
chmod a+x $CWD/bin/kube-ps1.sh

# Symlink dotfiles
ln -sf $CWD/dotfiles/customize_environment  ~/.customize_environment
chmod a+x $CWD/dotfiles/customize_environment
ln -sf $CWD/dotfiles/bashrc  ~/.bashrc
ln -sf $CWD/dotfiles/vimrc  ~/.vimrc
ln -sf $CWD/dotfiles/tmux.conf  ~/.tmux.conf
