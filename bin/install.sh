#!/bin/sh

echo "Installing commands..."

# Symlink this directory to home
ln -s $DOTFILES/bin $HOME/.bin
