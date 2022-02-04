#!/usr/bin/env bash

echo "Installing xcode-stuff"
xcode-select --install

# check for Homebrew, install if don't have it
if test ! "$(which brew)"; then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# update homebrew recipes
echo "Updating homebrew..."
brew update

# install mas
brew install mas

# signin to the mac app store
mas signin darkerkorean@gmail.com

# install apps
echo "Installing my apps from brewfile..."
pushd "$HOME" || exit
brew bundle --file=~/.mac-config/Brewfile
popd || exit

# install oh my zsh
echo "Installing Oh My ZSH..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install oh-my-zsh theme
echo "Install powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/themes/powerlevel10k
