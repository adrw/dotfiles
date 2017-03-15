#!/bin/bash

# MAIN INSTALL

# Install oh-my-zsh http://ohmyz.sh/
echo "########## Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install and configure Homebrew using script
echo "########## Running homebrew.sh ....."
./homebrew.sh
