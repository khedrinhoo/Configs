#!/bin/bash

development(){

	dev=(
		base-devel
		git
		python
		gcc
		gdb
		lua
		luarocks
		openssh
	)

	devaur=(
		visual-studio-code-bin
	)

	for DEV in "${dev[@]}"; do
		install_package_pacman "$DEV" 
	done

	for DEVAUR in "${devaur[@]}"; do
		install_package_aur "$DEVAUR" 
	done

	sudo systemctl enable --now sshd

}
