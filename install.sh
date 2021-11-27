#!/bin/sh

echo "Setting up your Mac..."

# Pat to your dotfiles
DOTFILES="$HOME/dotfiles"

# Install dotfiles on a fresh system
source $DOTFILES/bin/install.sh
source $DOTFILES/brew/install.sh
source $DOTFILES/zsh/install.sh
source $DOTFILES/macos/install.sh
source $DOTFILES/apps/install.sh

echo "Done!"
