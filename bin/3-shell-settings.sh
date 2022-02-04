#!/usr/bin/sh

# Setup ~/.zshrc
echo "Setting .zshrc file"
mv ~/.zshrc ~/.zshrc.backup
cp ~/.mac-config/zshrc ~/.zshrc

# Run ZSH so that everything intializes
zsh
