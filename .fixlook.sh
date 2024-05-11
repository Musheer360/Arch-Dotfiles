#!/bin/bash

# Full paths of the config files
FASTFETCH_CONFIG="/home/musheer360/Downloads/Config Files/fastfetch_config.jsonc"
WAYBAR_CONFIG="/home/musheer360/Downloads/Config Files/waybar_config.jsonc"
CAVA_CONFIG="/home/musheer360/Downloads/Config Files/cava_config"

# Task 1: Copy fastfetch_config.jsonc to ~/.config/fastfetch/
cp "$FASTFETCH_CONFIG" /home/musheer360/.config/fastfetch/

# Remove existing config.jsonc file if it exists
if [ -f /home/musheer360/.config/fastfetch/config.jsonc ]; then
    rm /home/musheer360/.config/fastfetch/config.jsonc
fi

# Rename copied file to config.jsonc
mv /home/musheer360/.config/fastfetch/fastfetch_config.jsonc /home/musheer360/.config/fastfetch/config.jsonc

# Task 2: Copy waybar_config.jsonc to ~/.config/waybar/
cp "$WAYBAR_CONFIG" /home/musheer360/.config/waybar/

# Remove existing config.jsonc file if it exists
if [ -f /home/musheer360/.config/waybar/config.jsonc ]; then
    rm /home/musheer360/.config/waybar/config.jsonc
fi

# Rename copied file to config.jsonc
mv /home/musheer360/.config/waybar/waybar_config.jsonc /home/musheer360/.config/waybar/config.jsonc

# Task 3: Copy cava_config to ~/.config/cava/
cp "$CAVA_CONFIG" /home/musheer360/.config/cava/

# Remove existing config file if it exists
if [ -f /home/musheer360/.config/cava/config ]; then
    rm /home/musheer360/.config/cava/config
fi

# Rename copied file to config
mv /home/musheer360/.config/cava/cava_config /home/musheer360/.config/cava/config

echo "Configuration files copied and replaced successfully."