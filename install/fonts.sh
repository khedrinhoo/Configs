#!/bin/bash

sudo pacman -S --noconfirm --needed \
	noto-fonts noto-fonts-emoji \
	ttf-nerd-fonts-symbols \
	ttf-jetbrains-mono-nerd \
	ttf-iosevka-nerd \
	ttf-cascadia-mono-nerd \

sudo fc-cache -fv
