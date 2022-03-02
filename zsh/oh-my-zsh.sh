#!/bin/sh

echo "Setting up Oh-My-Zsh..."

# Symlink .zshrc file
rm $HOME/.zshrc
ln -s $DOTFILES/zsh/.zshrc $HOME/.zshrc

if test -f "$DOTFILES/zsh/.private.zshrc"; then
    ln -s $DOTFILES/zsh/.private.zshrc $HOME/.zshrc
fi

# Reload the environment
env zsh
