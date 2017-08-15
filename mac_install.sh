#!/bin/sh

BOX_BUILD_DIR=`dirname $0`

echo "Setting up your Mac..."

mkdir -p ~/projects

# Install Homebrew
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install software with Homebrew
echo "Updating brew..."
brew update
echo "Upgrading brew software..."
brew upgrade
brew tap homebrew/bundle
echo "Installing brew bundle"
brew bundle

# Set shell to local bash
echo "Setting local bash shell"
echo '/usr/local/bin/bash' | sudo tee -a /etc/shells
chsh -s /usr/local/bin/bash

# Set macOs Preferences
echo "Setting macOs Preferences"
source macos_preferences

# Link dotfiles
echo "Using stow to link dotfiles"
stow -t $HOME -R general
