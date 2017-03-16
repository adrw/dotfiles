#!/bin/bash

# HOMEBREW INSTALL & CONFIGURE

shellrc=.zshrc

# Install homebrew in ~/homebrew instead of /usr/local https://github.com/Homebrew/brew/blob/master/docs/Installation.md#installation
echo "########## Installing homebrew..."
#mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

# Add homebrew path to .zshrc
echo "########## Exporting homebrew path..."
hbPath='PATH=$PATH:~/homebrew/sbin:~/homebrew/bin'

if ! grep -Fxq "$hbPath" ~/$shellrc ; then
  echo "$hbPath" >> ~/$shellrc
fi

# Update homebrew
echo "########## Updating homebrew..."
brew update

# Turn off homebrew analytics
echo "########## Turning off homebrew analytics..."
hbNoAnalytics='export HOMEBREW_NO_ANALYTICS=1'
if ! grep -Fxq "$hbNoAnalytics" ~/$shellrc ; then
  echo "$hbNoAnalytics" >> ~/$shellrc
fi
brew analytics off

# Force homebrew secure
echo "########## Force homebrew no-insecure-redirect and require-sha..."

hbNoInsecure='export HOMEBREW_NO_INSECURE_REDIRECT=1'
if ! grep -Fxq "$hbNoInsecure" ~/$shellrc ; then
  echo "$hbNoInsecure" >> ~/$shellrc
fi


hbRequireSHA='export HOMEBREW_CASK_OPTS=--require-sha'
if ! grep -Fxq "$hbRequireSHA" ~/$shellrc ; then
  echo "$hbRequireSHA" >> ~/$shellrc
fi


# Install Brew Cask
echo "########## Install brew cask..."
brew cask

echo "#### homebrew.sh ...fin"
