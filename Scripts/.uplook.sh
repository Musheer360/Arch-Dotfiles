#!/bin/bash

# Delete all files in hyde cache directory
rm -rf /home/musheer360/.cache/hyde/*

# Change directory to ~/HyDE/Scripts
cd ~/HyDE/Scripts

# Pull the latest changes from the Git repository
git pull

# Run install.sh with the -r flag
./install.sh -r
