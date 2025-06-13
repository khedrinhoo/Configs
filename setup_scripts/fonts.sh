#!/bin/bash

fonts(){

	fonts=(
		noto-fonts
		noto-fonts-emoji
		ttf-noto-nerd
		ttf-nerd-fonts-symbols
		ttf-jetbrains-mono
		ttf-jetbrains-mono-nerd
		otf-font-awesome
	)

	for FONTS in "${fonts[@]}"; do
		install_package_pacman "$FONTS" 
	done

	sudo fc-cache -fv
}
