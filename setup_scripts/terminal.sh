#!/bin/bash

terminal(){

	terminal=(
		tmux
		fzf
		yazi
		nvim
		btop
		eza
		tldr
		unzip
	)

	for TERMINAL in "${terminal[@]}"; do
		install_package_pacman "$TERMINAL" 
	done

}
