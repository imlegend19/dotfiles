#!/bin/sh

echo "Setting up zsh..."

# Install zsh & helpers
helpers=(
    zsh
    zsh-syntax-highlighting 
    zsh-autosuggestions
    zsh-history-substring-search
)

brew install ${helpers[@]}

# Make zsh the default environment
chsh -s $(which zsh)
