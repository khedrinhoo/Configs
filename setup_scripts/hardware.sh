#!/bin/bash

hardware(){

	hardware=(
		xf86-video-amdgpu
		amd-ucode
		mesa
		mesa-utils
		fuse
		fuse-exfat
		pciutils
	)

	for HARDWARE in "${hardware[@]}"; do
		install_package_pacman "$HARDWARE" 
	done
}
