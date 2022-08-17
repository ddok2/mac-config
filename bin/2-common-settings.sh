#!/usr/bin/env bash

# MacOS Preferences

###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

###############################################################################
# Screen                                                                      #
###############################################################################

# Store screenshots in subfolder on desktop
mkdir ~/Desktop/screenshots
defaults write com.apple.screencapture location ~/Desktop/screenshots


###############################################################################
# Others                                                                      #
###############################################################################

# Set a fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2

# Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Show the ~/Library folder
chflags nohidden ~/Library

# Set Hostname
sudo scutil --set HostName syna

# Change short user password policy
pwpolicy getaccountpolicies | awk 'NR>1' > ~/Desktop/file.plist
# change >> policyAttributePassword matches '^$|.{1,}+'
pwpolicy setaccountpolicies ~/Desktop/file.plist
passwd
