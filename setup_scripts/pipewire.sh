#!/bin/bash

pipewire(){

	pipewire=(
		pipewire
		pipewire-audio
		pipewire-alsa
		alsa-utils
		alsa-firmware
	)

	for PIPEWIRE in "${pipewire[@]}"; do
		install_package_pacman "$PIPEWIRE" 
	done

	systemctl --user enable pipewire.service pipewire.socket 
}
