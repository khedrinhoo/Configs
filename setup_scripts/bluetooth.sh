#!/bin/bash

bluetooth(){

	bluetooth=(
		bluez
		bluez-utils
		blueman
	)

	for BLUETOOTH in "${bluetooth[@]}"; do
		install_package_pacman "$BLUETOOTH" 
	done

	sudo systemctl enable --now bluetooth.service
}
