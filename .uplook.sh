#!/bin/bash

# Remove all files and folders inside /home/musheer360/.config/cfg_backups/
rm -rf /home/musheer360/.config/cfg_backups/*

# Change directory to ~/HyDE/Scripts
cd ~/HyDE/Scripts

# Pull the latest changes from the Git repository
git pull

# Run install.sh with the -r flag
./install.sh -r