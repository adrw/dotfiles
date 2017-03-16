#!/bin/bash

# Moves files in dotfiles folder to home directory
echo "######## Copying dotfiles to "$(echo ~)
cp -ir dotfiles/ ~/

echo "#### copy-dotfiles.sh ...fin"
