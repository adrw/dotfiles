#!/bin/bash

# MAIN INSTALL
echo "######################################"
echo "######################################"
echo "#########/#########|––––\#############"
echo "########/#\########|#####\############"
echo "#######/###\#######|#####/############"
echo "######/–––––\######|––––/#############"
echo "#####/#######\#####|##################"
echo "####/#########\####|##################"
echo "######################################"
echo "######################################"

# Install oh-my-zsh http://ohmyz.sh/
echo "# Installing oh-my-zsh..."
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Change Mac settings
echo "# Running mac-defaults.sh..."
./scripts/mac-defaults.sh

# Copy Dotfiles
echo "# Running copy-dotfiless.sh..."
./scripts/copy-dotfiles.sh

# Install and configure Homebrew using script
echo "# Running homebrew.sh..."
./scripts/homebrew.sh

# Install Apps
echo "# Installing Apps with insall.sh..."
./scripts/install.sh



echo "..................................FIN"


