#!/bin/sh

# Install pyenv
brew install pyenv
brew install pyenv-virtualenv

# Use zlib from brew (Refer: https://stackoverflow.com/a/54955286)
brew install zlib

# Install python 3
pyenv install 3

# Fetch the latest version
LATEST=$(pyenv install --list | grep -v - | grep -v b | tail -1)

# Setup latest version
pyenv install $LATEST
pyenv global $LATEST

# Install pipX
brew install pipx
pipx ensurepath

# Install global dependencies
deps=(
    black
)

pipx install ${deps[@]}
