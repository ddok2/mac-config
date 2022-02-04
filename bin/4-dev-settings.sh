#!/usr/bin/sh

DEV_PATH="$HOME"/Development

# Make Dev dir.
mkdir -p "$DEV_PATH"

# Go
mkdir -p "$GOPATH" "$GOPATH"/src "$GOPATH"/pkg "$GOPATH"/bin

# Node.js
nvm i 14
nvm i 16
nvm alias default 16

npm i npm -g
npm i yarn -g

# Docker-compose Files
git clone git@github.com:ddok2/docker-compose-files.git "$DEV_PATH"/docker
