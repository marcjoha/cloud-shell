#!/bin/bash
CWD=`pwd`

# Clean up
rm ~/README-cloudshell.txt &> /dev/null

# Set up binaries
mkdir -p ~/bin
ln -sf $CWD/bin/kube-ps1.sh  ~/bin/kube-ps1.sh
chmod a+x $CWD/bin/kube-ps1.sh
ln -sf $CWD/bin/aws-mfa  ~/bin/aws-mfa
chmod a+x $CWD/bin/aws-mfa

# Symlink all dotfiles
ln -sf $CWD/dotfiles/customize_environment  ~/.customize_environment
chmod a+x $CWD/dotfiles/customize_environment
ln -sf $CWD/dotfiles/bashrc  ~/.bashrc
ln -sf $CWD/dotfiles/vimrc  ~/.vimrc
ln -sf $CWD/dotfiles/tmux.conf  ~/.tmux.conf
