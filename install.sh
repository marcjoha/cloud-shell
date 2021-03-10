#!/bin/bash
CWD=`pwd`

# Clean up
rm ~/README-cloudshell.txt &> /dev/null

# Create base folders
mkdir -p ~/.cloudshell
mkdir -p ~/bin

# Remove apt-get warning
touch ~/.cloudshell/no-apt-get-warning

# Install some binaries
ln -sf $CWD/bin/kube-ps1.sh  ~/bin/kube-ps1.sh
chmod a+x $CWD/bin/kube-ps1.sh
ln -sf $CWD/bin/aws-mfa  ~/bin/aws-mfa
chmod a+x $CWD/bin/aws-mfa

# Symlink dotfiles
ln -sf $CWD/dotfiles/customize_environment  ~/.customize_environment
chmod a+x $CWD/dotfiles/customize_environment
ln -sf $CWD/dotfiles/bashrc  ~/.bashrc
ln -sf $CWD/dotfiles/vimrc  ~/.vimrc
ln -sf $CWD/dotfiles/tmux.conf  ~/.tmux.conf
