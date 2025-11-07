#!/bin/bash

# Installation

## Hardware
sudo pacman -S --noconfirm --needed bluez networkmanager 
sudo pacman -S --noconfirm --needed pipewire pipewire-audio pipewire-pulse pipewire-alsa pipewire-jack alsa-utils wireplumber
## Xorg Server
sudo pacman -S --noconfirm --needed xorg xorg-xinit
## AUR
cd $HOME/.src
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd $HOME/Configs 
## Window Manager
sudo pacman -S --noconfirm --needed bspwm sxhkd rofi
## Web
sudo pacman -S --noconfirm --needed chromium 
yay -S --noconfirm --needed brave-bin
## Terminal
sudo pacman -S --noconfirm --needed kitty tmux nvim nnn htop 
## Dev
sudo pacman -S --noconfirm --needed git base-devel
## Media
sudo pacman -S --noconfirm --needed sxiv zathura mpv mpd

# Systemd
sudo systemctl --user --now enable bluetooth
sudo systemctl --user --now enable NetworkManager
sudo systemctl --user --now enable wireplumber pipewire pipewire-pulse

# Locations
cd $HOME
stow --target=$HOME/.config Configs
cd $HOME/Configs
stow --target=$HOME/ bash
