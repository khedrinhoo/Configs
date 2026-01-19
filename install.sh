#!/bin/bash

# Dev
sudo pacman -S --noconfirm --needed git base-devel stow openssh
# AUR
cd $HOME/.src
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si --noconfirm
cd $HOME/configs 
# Hardware
sudo pacman -S --noconfirm --needed bluez bluez-utils networkmanager 
sudo pacman -S --noconfirm --needed pipewire pipewire-audio pipewire-pulse pipewire-alsa pipewire-jack alsa-utils
# Fonts
sudo pacman -S --noconfirm --needed noto-fonts noto-fonts-emoji 
# Window Manager
sudo pacman -S --noconfirm --needed hyprland hyprshot waybar bemenu-wayland 
# Web
sudo pacman -S --noconfirm --needed firefox chromium
# Terminal
sudo pacman -S --noconfirm --needed kitty tmux gvim nnn htop fzf eza
# Media
sudo pacman -S --noconfirm --needed sxiv zathura mpv mpd libreoffice unzip
# Systemd
sudo systemctl enable --now bluetooth
sudo systemctl enable --now NetworkManager
sudo systemctl enable --now pipewire pipewire-pulse
