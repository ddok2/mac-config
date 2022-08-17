#!/usr/bin/env bash

DEV_PATH="$HOME"/Development

# Make Dev dir.
mkdir -p "$DEV_PATH"

# Go
mkdir -p "$GOPATH" "$GOPATH"/src "$GOPATH"/pkg "$GOPATH"/bin

# Node.js
nvm i 14
nvm i 16
nvm i 18
nvm alias default 16

npm i npm -g
npm i yarn -g

# Docker-compose Files
git clone git@github.com:ddok2/docker-compose-files.git "$DEV_PATH"/docker

# RocksDB@6.26.1
# brew extract --version=6.26.1 rocksdb homebrew/cask
# brew install rocksdb@6.26.1
