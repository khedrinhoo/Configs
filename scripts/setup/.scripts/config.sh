#!/bin/bash

config(){

	chmod +x scripts/system/.scripts/*.sh
	chmod +x scripts/setup/.scripts/*.sh

	mkdir $HOME/.config
	mkdir $HOME/.src
	mkdir $HOME/.scripts

	sudo pacman -S --needed --noconfirm

	config=(
		environment
		media
		scripts
		suckless
		terminal
	)	
	
	for CONFIG in "${config[@]}"; do
		stow --target=$HOME --dir="$CONFIG" $(ls "$CONFIG")  
	done

}
