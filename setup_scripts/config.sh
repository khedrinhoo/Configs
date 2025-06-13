#!/bin/bash

config(){

	cd setup_scripts
	chmod +x *.sh
	cd ..

	mkdir $HOME/.config
	mkdir $HOME/.src

	sudo pacman -S --needed --noconfirm

	config=(
		dwm
		dmenu
		st
		fontconfig
		zathura
		nvim
		tmux
		yazi
	)	
	
	for CONFIG in "${config[@]}"; do
		stow -t ~ "$CONFIG"
	done

}
