#!/bin/bash

terminal(){

	terminal=(
		unzip
	)

	for TERMINAL in "${terminal[@]}"; do
		install_package_pacman "$TERMINAL" 
	done

}
