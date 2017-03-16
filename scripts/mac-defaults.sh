#!/bin/bash

# Changes Mac settings

# Show hidden files
echo "######## Show all files"
defaults write com.apple.finder AppleShowAllFiles TRUE 
killall Finder

# Increase keyboard key repeat rates
echo "######## Shorten key repeat rates"
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)



echo "#### mac-defaults.sh ...fin"





