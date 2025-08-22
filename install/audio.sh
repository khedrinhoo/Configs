#!/bin/bash

sudo pacman -S --noconfirm --needed alsa-utils alsa-firmware pipewire pipewire-pulse pipewire-alsa wireplumber

systemctl --user enable pipewire pipewire-pulse wireplumber
