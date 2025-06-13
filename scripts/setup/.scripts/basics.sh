#!/bin/bash

basics(){

	hardware=(
		xf86-video-amdgpu
		amd-ucode
		mesa
		mesa-utils
		fuse
		fuse-exfat
		pciutils
	)

	bluetooth=(
		bluez
		bluez-utils
		blueman
	)

	audio=(
		pipewire
		pipewire-audio
		pipewire-alsa
		alsa-utils
		alsa-firmware
	)

	fonts=(
		noto-fonts
		noto-fonts-emoji
		ttf-noto-nerd
		ttf-nerd-fonts-symbols
		ttf-jetbrains-mono
		ttf-jetbrains-mono-nerd
		otf-font-awesome
	)

	for HARDWARE in "${hardware[@]}"; do
		install_package_pacman "$HARDWARE" 
	done

	for BLUETOOTH in "${bluetooth[@]}"; do
		install_package_pacman "$BLUETOOTH" 
	done

	sudo systemctl --user enable --now bluetooth.service


	for AUDIO in "${audio[@]}"; do
		install_package_pacman "$AUDIO" 
	done

	sudo systemctl --user enable --now pipewire.service pipewire.socket 

	for FONTS in "${fonts[@]}"; do
		install_package_pacman "$FONTS" 
	done

	sudo fc-cache -fv
}
