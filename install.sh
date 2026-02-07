#!/bin/bash

# Dev
sudo pacman -S --noconfirm --needed git wget curl base-devel openssh stow

# Suckless
sudo pacman -S --noconfirm --needed libx11 libxft libxinerama xorg-server xorg-xinit

# Network
sudo pacman -S --noconfirm --needed networkmanager 
# Bluetooth
sudo pacman -S --noconfirm --needed bluez bluez-utils 
# Audio
sudo pacman -S --noconfirm --needed pipewire pipewire-audio pipewire-pulse pipewire-alsa alsa-utils

# Fonts
sudo pacman -S --noconfirm --needed noto-fonts noto-fonts-emoji ttf-jetbrains-mono

# Web
sudo pacman -S --noconfirm --needed firefox chromium

# Terminal
sudo pacman -S --noconfirm --needed tmux vim nnn btop htop fzf

# Media
sudo pacman -S --noconfirm --needed sxiv zathura mpv mpd unzip 

# Systemd
sudo systemctl enable --now bluetooth
sudo systemctl enable --now NetworkManager
systemctl --user enable --now pipewire pipewire-pulse
