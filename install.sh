#!/bin/bash

# Set colors
RED='\e[31m'
GREEN='\e[32m'
BLUE='\e[34m'
BOLD='\e[1m'
NC='\e[0m'

# Source setup scripts
source setup_scripts/package_setup.sh 
source setup_scripts/directories.sh 
source setup_scripts/hardware.sh 
source setup_scripts/pipewire.sh 
source setup_scripts/bluetooth.sh 
source setup_scripts/fonts.sh 
source setup_scripts/media.sh 
source setup_scripts/development.sh 
source setup_scripts/terminal.sh 
source setup_scripts/window_manager.sh 

# Start promt
setup() {
	cat << "EOF"
 _     _                    _____      _
| |   (_)                  /  ___|    | |
| |    _ _ __  _   ___  __ \ `--.  ___| |_ _   _ _ __
| |   | | '_ \| | | \ \/ /  `--. \/ _ \ __| | | | '_ \
| |___| | | | | |_| |>  <  /\__/ /  __/ |_| |_| | |_) |
\_____/_|_| |_|\__,_/_/\_\ \____/ \___|\__|\__,_| .__/
						| |
						|_|
EOF
}
setup

# Directories
printf "${BOLD}${BLUE}Directories${NC}\n"
printf "Setup directories...\n"
directories
printf "${GREEN}########## Done ##########${NC}\n"

# AUR
printf "${BOLD}${BLUE}AUR${NC}\n"
printf "Install yay...\n"
cd $HOME/.src
git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si --noconfirm
cd $HOME/personal/configs
printf "${GREEN}########## Done ##########${NC}\n"

# System update
printf "${BOLD}${BLUE}System${NC}\n"
printf "Update system...\n"
sudo pacman -Syu --noconfirm
yay -Syu --noconfirm
printf "${GREEN}########## Done ##########${NC}\n"

# Hardware
printf "${BOLD}${BLUE}Hardware${NC}\n"
printf "Setup hardware...\n"
hardware
printf "${GREEN}########## Done ##########${NC}\n"

# Audio
printf "${BOLD}${BLUE}Audio${NC}\n"
printf "Uninstall pulseaudio...\n"
uninstall_package pulseaudio
printf "${GREEN}########## Done ##########${NC}\n"
printf "Setup pipewire...\n"
pipewire
printf "${GREEN}########## Done ##########${NC}\n"

# Bluetooth
printf "${BOLD}${BLUE}Bluetooth${NC}\n"
printf "Setup bluetooth...\n"
bluetooth
printf "${GREEN}########## Done ##########${NC}\n"

# Network
printf "${BOLD}${BLUE}Network${NC}\n"
printf "Setup network...\n"
sudo pacman -S --noconfirm --needed networkmanager 
sudo systemctl enable NetworkManager
printf "${GREEN}########## Done ##########${NC}\n"

# Fonts
printf "${BOLD}${BLUE}Fonts${NC}\n"
printf "Setup fonts...\n"
fonts
printf "${GREEN}########## Done ##########${NC}\n"

## Media
printf "${BOLD}${BLUE}Media${NC}\n"
printf "Setup media...\n"
media
printf "${GREEN}########## Done ##########${NC}\n"

## Browser
printf "${BOLD}${BLUE}Browser${NC}\n"
printf "Install borwser...\n"
sudo pacman -S --noconfirm --needed chromium 
yay -S --noconfirm --needed brave-bin 
printf "${GREEN}########## Done ##########${NC}\n"

## Dev
printf "${BOLD}${BLUE}Dev${NC}\n"
printf "Setup Development-env...\n"
development
printf "${GREEN}########## Done ##########${NC}\n"

## Terminal
printf "${BOLD}${BLUE}Terminal${NC}\n"
printf "Setup Terminal...\n"
terminal
printf "${GREEN}########## Done ##########${NC}\n"

## Window Manager
printf "${BOLD}${BLUE}Window Manager${NC}\n"
printf "Setup Window Manager...\n"
window_manager
printf "${GREEN}########## Done ##########${NC}\n"
