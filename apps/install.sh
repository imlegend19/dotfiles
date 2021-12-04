#!/bin/sh

echo "Setting up apps..."

# Install OS X Applications
apps=(
    google-chrome
    visual-studio-code
    slack
    rectangle
    whatsapp
    postman
    zoomus
    docker
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
brew cask install --appdir="/Applications" ${apps[@]}
