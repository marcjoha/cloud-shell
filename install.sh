#!/bin/bash
CWD=`pwd`

# Set up binaries
mkdir -p ~/bin
ln -sf $CWD/kube-ps1.sh  ~/bin/kubee-ps1.sh
ln -sf $CWD/aws-mfa  ~/bin/aws-mfa

# Symlink all dotfiles
ln -sf $CWD/customize_environment  ~/.customize_environment
ln -sf $CWD/bashrc  ~/.bashrc
ln -sf $CWD/vimrc  ~/.vimrc
ln -sf $CWD/tmux.conf  ~/.tmux.conf
