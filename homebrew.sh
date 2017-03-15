#!/bin/bash

# HOMEBREW INSTALL & CONFIGURE

# Install homebrew in ~/homebrew instead of /usr/local https://github.com/Homebrew/brew/blob/master/docs/Installation.md#installation
echo "########## Installing homebrew..."
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

# Add homebrew path to .zshrc
echo "########## Exporting homebrew path..."
echo 'PATH=$PATH:~/homebrew/sbin:~/homebrew/bin' >> .zshrc

# Update homebrew
echo "########## Updating homebrew..."
brew update

# Turn off homebrew analytics
echo ("########## Turning off homebrew analytics...")
echo 'export HOMEBREW_NO_ANALYTICS=1' >> .zshrc
brew analytics off

# Force homebrew secure
echo "########## Force homebrew no-insecure-redirect and require-sha..."
echo 'export HOMEBREW_NO_INSECURE_REDIRECT=1' >> .zshrc
echo 'export HOMEBREW_CASK_OPTS=--require-sha' >> .zshrc
