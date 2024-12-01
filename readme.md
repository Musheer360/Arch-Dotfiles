# Minimal Arch Linux + Hyprland Dotfiles (Catppuccin Mocha)

These are my personal dotfiles for Arch Linux, designed to work as an extension of [HyprDots by Prasanthrangan](https://github.com/prasanthrangan/hyprdots). These configurations are specifically tailored to work with the Catppuccin Mocha theme.

## Important Note

These dotfiles should be applied **AFTER** installing HyprDots. They contain customizations and modifications that enhance and personalize the base HyprDots setup.

### Required HyprDots Version

Please use the specific commit of HyprDots from May 1, 2024:

```bash
git clone https://github.com/prasanthrangan/hyprdots.git
cd hyprdots
git checkout d201d0d9ec04e025e304431385811239825d235c
```

## Directory Structure

```
Arch-Dotfiles/
├── .config/                # Application configs
│   ├── btop/              # System monitor
│   ├── cava/              # Audio visualizer
│   ├── fastfetch/         # System information
│   ├── hypr/              # Hyprland WM
│   ├── peaclock/          # Terminal clock
│   ├── waybar/            # Status bar
│   └── zathura/           # PDF viewer
├── .mozilla/              # Firefox configs
├── scripts/               # Utility scripts
└── shell/                 # Shell configurations
```

## Installation

⚠️ **IMPORTANT: Monitor Configuration**
Before proceeding with the installation, you MUST modify the `.config/hypr/monitors.conf` file to match your monitor setup. The current configuration is:

```conf
monitor=HDMI-A-1,1920x1080@75,0x0,1
```

Change this to match your monitor specifications. You can get your monitor information by running:

```bash
hyprctl monitors
```

### Installation Steps

1. First, install HyprDots using the specific commit mentioned above
2. Clone this repository:

```bash
git clone https://github.com/yourusername/Arch-Dotfiles.git
```

3. Run the installation script:

```bash
cd Arch-Dotfiles/scripts
./.fixlook.sh
```

⚠️ **Note**: The installation script is currently in development and might not copy all configuration files. You may need to manually copy some files to their respective locations. Please check the directory structure above and ensure all configurations are properly placed.

## Package Lists

These files list the packages installed on my system for reference:

- `installed_pacman_packages.txt`: List of all packages installed via pacman on my system
- `installed_flatpak_apps.txt`: List of all Flatpak applications installed on my system

These are not requirements but rather a reference of my complete system setup. You may not need all of these packages, or you might need additional ones depending on your use case.

### Essential Packages

While the complete package lists are provided for reference, you will need at least:

- hyprland
- waybar
- kitty (or your preferred terminal)
- firefox (if you want to use the included userChrome.css)
- zsh (if you want to use the included shell configurations)
- btop
- cava
- fastfetch
- zathura

## Manual Configuration Steps

If the installation script misses any files, you can manually copy them to their respective locations:

1. Check if all directories exist in `~/.config/`
2. Compare the contents of each directory with the repository
3. Copy any missing files manually
4. Ensure file permissions are correct

## Customizations

These dotfiles include customizations for:

- Hyprland window manager configuration
- Waybar styling and modules
- Terminal applications (btop, cava, fastfetch)
- Firefox custom CSS
- ZSH shell configuration
- Various utility scripts

## Known Issues

- The installation script may not copy all configuration files
- Some manual intervention might be required for complete setup
- Always backup your existing configurations before installation

## Credits

- Base configuration: [HyprDots by Prasanthrangan](https://github.com/prasanthrangan/hyprdots)
- Theme: [Catppuccin Mocha](https://github.com/catppuccin/catppuccin)
