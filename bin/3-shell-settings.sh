#!/usr/bin/env bash

# Setup ~/.zshrc
echo "Setting .zshrc file"
mv ~/.zshrc ~/.zshrc.backup
cp ~/.mac-config/config/zshrc ~/.zshrc

# Run ZSH so that everything initializes
zsh
