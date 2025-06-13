#!/bin/bash

# Set colors
RED='\e[31m'
GREEN='\e[32m'
BLUE='\e[34m'
BOLD='\e[1m'
NC='\e[0m'

# Source setup scripts
source setup_scripts/package_setup.sh 
source setup_scripts/config.sh 
source setup_scripts/basics.sh 
source setup_scripts/suckless.sh 
source setup_scripts/media.sh 
source setup_scripts/development.sh 
source setup_scripts/terminal.sh 
source setup_scripts/environment.sh 

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

# Config
printf "${BOLD}${BLUE}Config${NC}\n"
printf "Setup Configuration...\n"
config
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

# Basics
printf "${BOLD}${BLUE}Basics${NC}\n"
printf "Setup Basics...\n"
basics
printf "${GREEN}########## Done ##########${NC}\n"

## Suckless
printf "${BOLD}${BLUE}Suckless${NC}\n"
printf "Setup Suckless Utils...\n"
suckless
printf "${GREEN}########## Done ##########${NC}\n"

## Browser
printf "${BOLD}${BLUE}Browser${NC}\n"
printf "Install borwser...\n"
sudo pacman -S --noconfirm --needed chromium 
yay -S --noconfirm --needed brave-bin 
printf "${GREEN}########## Done ##########${NC}\n"

## Media
printf "${BOLD}${BLUE}Media${NC}\n"
printf "Setup media...\n"
media
printf "${GREEN}########## Done ##########${NC}\n"

## Terminal
printf "${BOLD}${BLUE}Terminal${NC}\n"
printf "Setup Terminal...\n"
terminal
printf "${GREEN}########## Done ##########${NC}\n"

## Development
printf "${BOLD}${BLUE}Dev${NC}\n"
printf "Setup Development-env...\n"
development
printf "${GREEN}########## Done ##########${NC}\n"
