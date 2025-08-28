#!/bin/bash

# Server
sudo pacman -S --needed --noconfirm xorg xorg-xinit 

# Window manager
sudo pacman -S --needed --noconfirm bspwm sxhkd

# Fonts
sudo pacman -S --needed --noconfirm ttf-cascadia-mono-nerd noto-fonts noto-fonts-emoji

# Audio
sudo pacman -S --needed --noconfirm pipewire pipewire-pulse alsa-utils

# Screenshot
sudo pacman -S --needed --noconfirm scrot

# Browser
sudo pacman -S --needed --noconfirm chromium

# Terminal
sudo pacman -S --needed --noconfirm alacritty tmux

# Development
sudo pacman -S --needed --noconfirm base-devel git openssh stow
