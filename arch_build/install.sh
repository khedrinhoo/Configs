#!/bin/bash

# Dev
sudo pacman -S --noconfirm -- needed base-devel git wget curl openssh stow vulkan-radeon zed

# Suckless
sudo pacman -S --noconfirm --needed libx11 libxft libxinerama xorg-server xorg-xinit sxhkd

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
sudo pacman -S --noconfirm --needed sxiv zathura mpv mpd unzip scrot obsidian

# VM
sudo pacman -S --noconfirm --needed gnome-boxes 

# Systemd
sudo systemctl enable --now bluetooth
sudo systemctl enable --now NetworkManager
sudo systemctl enable --now libvirtd
systemctl --user enable --now pipewire pipewire-pulse
