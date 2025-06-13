#!/bin/bash

suckless(){

	printf "Install dwm...\n"
	cd suckless/dwm/.src/dwm
	sudo make install clean
	cd $HOME/personal/configs

	printf "Install dmenu...\n"
	cd suckless/dmenu/.src/dmenu
	sudo make install clean
	cd $HOME/personal/configs

	printf "Install st...\n"
	cd suckless/st/.src/st
	sudo make install clean
	cd $HOME/personal/configs

	printf "Install slstatus...\n"
	cd suckless/slstatus/.src/slstatus
	sudo make install clean
	cd $HOME/personal/configs
}
