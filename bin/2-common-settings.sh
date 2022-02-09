#!/usr/bin/env bash

# MacOS Preferences

# Set a fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1

# Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Show the ~/Library folder
chflags nohidden ~/Library

# Store screenshots in subfolder on desktop
mkdir ~/Desktop/screenshots
defaults write com.apple.screencapture location ~/Desktop/screenshots

# Github
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

git config --global color.ui true
