#!/bin/bash

pipewire(){

	pipewire=(
		pipewire
		pipewire-audio
		pipewire-jack
		pipewire-alsa
		alsa-utils
		alsa-firmware
		sof-firmware
		wireplumber
	)

	for PIPEWIRE in "${pipewire[@]}"; do
		install_package_pacman "$PIPEWIRE" 
	done

	systemctl --user enable pipewire.service pipewire.socket 
}