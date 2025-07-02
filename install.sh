#!/bin/bash

# Set colors
RED='\e[31m'
GREEN='\e[32m'
BLUE='\e[34m'
BOLD='\e[1m'
NC='\e[0m'

# Source setup scripts
source scripts/setup/.scripts/package_setup.sh 
source scripts/setup/.scripts/config.sh 
source scripts/setup/.scripts/basics.sh 
source scripts/setup/.scripts/development.sh 
source scripts/setup/.scripts/environment.sh 
source scripts/setup/.scripts/terminal.sh 
source scripts/setup/.scripts/media.sh 

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
printf "Setup configuration...\n"
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
printf "Setup basics...\n"
basics
printf "${GREEN}########## Done ##########${NC}\n"

## Development
printf "${BOLD}${BLUE}Dev${NC}\n"
printf "Setup development-env...\n"
development
printf "${GREEN}########## Done ##########${NC}\n"

## Environment
printf "${BOLD}${BLUE}Environment${NC}\n"
printf "Setup environment...\n"
environment
printf "${GREEN}########## Done ##########${NC}\n"

## Terminal
printf "${BOLD}${BLUE}Terminal${NC}\n"
printf "Setup terminal...\n"
terminal
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
