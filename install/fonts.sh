#!/bin/bash

sudo pacman -S --noconfirm --needed \
	noto-fonts noto-fonts-emoji noto-fonts-cjk noto-fonts-extra \
	ttf-nerd-fonts-symbols \
	ttf-jetbrains-mono-nerd \
	ttf-iosevka-nerd \
	ttf-font-awesome \

sudo fc-cache -fv
