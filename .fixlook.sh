#!/bin/bash

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${MAGENTA}╔════════════════════════════════════════╗${NC}"
echo -e "${MAGENTA}║    Starting configuration deployment   ║${NC}"
echo -e "${MAGENTA}╚════════════════════════════════════════╝${NC}"

# Use $HOME instead of hardcoded path
CONFIG_DIR="$HOME/Downloads/Config Files"
echo -e "${BLUE}Source directory:${NC} $CONFIG_DIR"

# Full paths of the config files
FASTFETCH_CONFIG="$CONFIG_DIR/fastfetch_config.jsonc"
WAYBAR_CONFIG="$CONFIG_DIR/waybar_config.jsonc"
WAYBAR_STYLE="$CONFIG_DIR/waybar_style.css"
CAVA_CONFIG="$CONFIG_DIR/cava_config"
HYPR_CONFIG="$CONFIG_DIR/hyprland.conf"
HYPR_KEYBINDS="$CONFIG_DIR/keybindings.conf"
HYPR_MONITORS="$CONFIG_DIR/monitors.conf"

# Function to create directory if it doesn't exist
create_dir() {
    if [ ! -d "$1" ]; then
        echo -e "${YELLOW}Directory $1 does not exist. Creating it...${NC}"
        mkdir -p "$1"
        echo -e "${GREEN}✓ Directory $1 created successfully.${NC}"
    else
        echo -e "${CYAN}→ Directory $1 already exists.${NC}"
    fi
}

# Function to copy files safely
copy_config() {
    if [ ! -f "$1" ]; then
        echo -e "${RED}✗ ERROR: Source file $1 does not exist!${NC}"
        return 1
    fi

    if [ -f "$2" ]; then
        echo -e "${YELLOW}! Destination file $2 exists. Removing it...${NC}"
        rm "$2"
        echo -e "${GREEN}✓ Old configuration file removed.${NC}"
    fi

    echo -e "${BLUE}→ Copying $1 to $2...${NC}"
    cp "$1" "$2"
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓ File copied successfully.${NC}"
    else
        echo -e "${RED}✗ ERROR: Failed to copy file!${NC}"
        return 1
    fi
}

echo -e "\n${MAGENTA}═══ Creating necessary directories ═══${NC}"
create_dir "$HOME/.config/fastfetch"
create_dir "$HOME/.config/waybar"
create_dir "$HOME/.config/cava"
create_dir "$HOME/.config/hypr"

echo -e "\n${MAGENTA}═══ Copying configuration files ═══${NC}"

echo -e "\n${CYAN}▶ Processing Fastfetch configuration...${NC}"
copy_config "$FASTFETCH_CONFIG" "$HOME/.config/fastfetch/config.jsonc"

echo -e "\n${CYAN}▶ Processing Waybar configurations...${NC}"
copy_config "$WAYBAR_CONFIG" "$HOME/.config/waybar/config.jsonc"
copy_config "$WAYBAR_STYLE" "$HOME/.config/waybar/style.css"

echo -e "\n${CYAN}▶ Processing Cava configuration...${NC}"
copy_config "$CAVA_CONFIG" "$HOME/.config/cava/config"

echo -e "\n${CYAN}▶ Processing Hyprland configurations...${NC}"
copy_config "$HYPR_CONFIG" "$HOME/.config/hypr/hyprland.conf"
copy_config "$HYPR_KEYBINDS" "$HOME/.config/hypr/keybindings.conf"
copy_config "$HYPR_MONITORS" "$HOME/.config/hypr/monitors.conf"

echo -e "\n${MAGENTA}╔════════════════════════════════════════╗${NC}"
echo -e "${MAGENTA}║   Configuration deployment completed!  ║${NC}"
echo -e "${MAGENTA}╚════════════════════════════════════════╝${NC}"
