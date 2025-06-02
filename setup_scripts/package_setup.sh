#!/bin/bash

install_package_pacman() {
	local PACKAGE="$1"
	sudo pacman -S --noconfirm --needed "$PACKAGE" 
}

install_package_aur() {
	local PACKAGE="$1"
	sudo yay -S --noconfirm --needed "$PACKAGE" 
}

uninstall_package() {
	local PACKAGE="$1"
	sudo pacman -Rns --noconfirm "$PACKAGE"
}
