#!/bin/bash

terminal(){

	terminal=(
		wezterm
		zsh
		tmux
		fzf
		yazi
		nvim
		btop
		eza
		tldr
	)

	for TERMINAL in "${terminal[@]}"; do
		install_package_pacman "$TERMINAL" 
	done

	# oh-my-zsh
	sudo chsh -s $(which zsh)
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

}