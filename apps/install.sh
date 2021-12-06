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
    ngrok
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
brew install --cask --appdir="/Applications" ${apps[@]}
