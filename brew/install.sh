#!/bin/sh

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
    echo "Seting up Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update
