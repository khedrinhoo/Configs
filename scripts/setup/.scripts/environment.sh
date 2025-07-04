#!/bin/bash

environment(){

	environment=(
        i3
        dmenu
        bspwm
        sxhkd
	)

	for ENVIRONMENT in "${environment[@]}"; do
		install_package_pacman "$ENVIRONMENT" 
	done

}
