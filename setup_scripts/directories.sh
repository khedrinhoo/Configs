#!/bin/bash

dir(){

	cd setup_scripts
	chmod +x *.sh
	cd ..

	mkdir $HOME/.config
	mkdir $HOME/.src

	config=(
		dmenu
		fontconfig
		hypr
		i3
		i3status
		nvim
		sxhkd
		tmux
		wezterm
		yazi
		zathura
		zsh
	)	
	
	for CONFIG in "${config[@]}"; do
		stow -t ~ "$CONFIG"
	done

}