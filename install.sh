#!/bin/bash

## Hardware
sudo pacman -S --noconfirm --needed bluez bluez-utils networkmanager 
sudo pacman -S --noconfirm --needed pipewire pipewire-audio pipewire-pulse pipewire-alsa pipewire-jack alsa-utils
## Fonts
sudo pacman -S --noconfirm --needed noto-fonts noto-fonts-emoji ttf-jetbrains-mono-nerd
## AUR
cd $HOME/.src
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si --noconfirm
cd $HOME/Configs 
## Window Manager
sudo pacman -S --noconfirm --needed sway swaybg rofi
## Web
sudo pacman -S --noconfirm --needed chromium firefox
## Terminal
sudo pacman -S --noconfirm --needed kitty tmux nvim nnn htop fzf
## Dev
sudo pacman -S --noconfirm --needed git base-devel stow openssh
## Media
sudo pacman -S --noconfirm --needed sxiv zathura mpv mpd 
# Systemd
sudo systemctl enable --now bluetooth
sudo systemctl enable --now NetworkManager
systemctl --user enable --now pipewire pipewire-pulse