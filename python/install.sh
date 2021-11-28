#!/bin/sh

# Install pipX
brew install pipx
pipx ensurepath

# Install global dependencies
deps=(
    black
    pipenv
)

pipx install ${deps[@]}
