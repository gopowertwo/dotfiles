#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/git/dotfiles
############################

########## Variables

files=".vimrc .zshrc"    # list of files/folders to symlink in homedir

##########

# Backing up the existing dotfiles
for dotfile in $files; do
    if [ -L ~/$dotfile ]; then
        echo "Backing up $dotfile"
        mv ~/$dotfile ~/$dotfile.bkp
    fi
done

for dotfile in $files; do
    echo "Creating symlink to $dotfile in home directory."
    ln -s $PWD/$dotfile ~/$dotfile
done
