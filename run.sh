#!/bin/bash

#######
# Author: florianbouchet
# Mail: contact@florianbouchet.fr
# What: Install and configure zsh with custom rules and oh-my-zsh
# Require: git, curl (automatically installed if not yet)
#######

##
# Ensure script is runned with privileges
##

if [[ $EUID -ne 0 ]]; then
    echo "Installation will update/upgrade your system and install zsh without any confirmation ask. Type your password to continue."
    sudo -v
fi

# Udate/Upgrade system
sh ./src/update.sh

# Install requirements
sh ./src/install-requirements.sh

# Update system and install zsh if doesn't installed
sh ./src/install-zsh.sh
  
# Install fonts (https://github.com/powerline/fonts)
sh ./src/install-fonts.sh

# Install "oh-my-zsh" (https://github.com/robbyrussell/oh-my-zsh)
sh ./src/install-oh-my-zsh.sh

# Copy files
#sh ./src/copy-zsh-conf.sh
