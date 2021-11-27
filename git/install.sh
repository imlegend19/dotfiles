#!/bin/sh

echo "Setting up git..."

# Automatic prune on git fetch/pull
git config --global fetch.prune true

# Set global .gitignore file
git config --global core.excludesfile $DOTFILES/git/.gitignore
