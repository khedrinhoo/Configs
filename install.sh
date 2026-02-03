#!/bin/bash

# Dev
sudo pacman -S --noconfirm --needed git base-devel stow openssh
# Hardware
sudo pacman -S --noconfirm --needed bluez bluez-utils networkmanager 
sudo pacman -S --noconfirm --needed pipewire pipewire-audio pipewire-pulse pipewire-alsa alsa-utils
# Fonts
sudo pacman -S --noconfirm --needed noto-fonts noto-fonts-emoji 
# Window Manager
sudo pacman -S --noconfirm --needed bemenu-wayland sway swaybg i3blocks
# Web
sudo pacman -S --noconfirm --needed firefox chromium
# Terminal
sudo pacman -S --noconfirm --needed kitty tmux gvim nnn htop eza
# Media
sudo pacman -S --noconfirm --needed sxiv zathura mpv mpd unzip 
# Systemd
sudo systemctl enable --now bluetooth
sudo systemctl enable --now NetworkManager
systemctl --user enable --now pipewire pipewire-pulse
