#!/bin/bash

sudo pacman -S --needed --noconfirm git base-devel wget

cd ~/.src

git clone https://aur.archlinux.org/yay-bin.git

cd yay-bin

makepkg -si --noconfirm --needed

cd ~/Setup/
