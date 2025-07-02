#!/bin/bash

terminal(){

	terminal=(
        wezterm
        tmux
        neovim
        fzf
        eza
		unzip
	)

	for TERMINAL in "${terminal[@]}"; do
		install_package_pacman "$TERMINAL" 
	done

}
