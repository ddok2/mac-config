#!/usr/bin/env bash

# Setup ~/.zshrc
echo "Setting .zshrc file"
mv ~/.zshrc ~/.zshrc.backup
cp ~/.mac-config/config/zshrc ~/.zshrc
cp ~/.mac-config/config/.wakatime.cfg ~/

# Run ZSH so that everything initializes
zsh

# Github
echo "Copy gitignore_global"
cp ~/.mac-config/config/.gitignore_global ~/

echo "Please check github setting before run this script."
ssh-keygen -t rsa -C "syna@iconloop.com"

# Copy public key to Github.com
cat ~/.ssh/id_rsa.pub

# Test connection
ssh -T git@github.com

# Git global config
echo "Setting git global config"
git config --global user.name "Sungyub NA"
git config --global user.email "syna@iconloop.com"
git config --global github.user ddok2
git config --global github.token "your_token_here"
git config --global core.excludesfile ~/.gitignore_global
git config --global commit.gpgsign true
git config --global color.ui true
