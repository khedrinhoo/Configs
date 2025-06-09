#!/bin/bash

window_manager(){

	wm=(
        hyprland
		i3
        xorg
        xorg-xinit
	)

    wmaur=(
        hyprshot
    )

	for WM in "${wm[@]}"; do
		install_package_pacman "$WM" 
	done

	for WMAUR in "${wmaur[@]}"; do
		install_package_aur "$WMAUR" 
	done

	cd dmenu/.src/dmenu
	make
	sudo make install clean
	cd $HOME/personal/configs
}
