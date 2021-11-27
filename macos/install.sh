#!/bin/sh

echo "Setting up OS X..."

# Install Bash 4
brew install bash

# Install Binaries
binaries=(
    trash
    wget
    git
    nvm
    git-delta
    jesseduffield/lazygit/lazygit
    lazygit
)

brew install ${binaries[@]}

# Cleanup brew installs
brew cleanup

# Set preferences
source $DOTFILES/macos/preferences.sh
