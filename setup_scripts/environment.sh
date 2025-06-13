#!/bin/bash

environment(){

	environment=(
		sxhkd
		dunst
	)

	for ENVIRONMENT in "${environment[@]}"; do
		install_package_pacman "$ENVIRONMENT" 
	done

}
