#!/bin/bash

suckless(){

	cd dwm/.src/dwm
	sudo make install clean
	cd $HOME/personal/configs

	cd dmenu/.src/dmenu
	sudo make install clean
	cd $HOME/personal/configs

	cd st/.src/st
	sudo make install clean
	cd $HOME/personal/configs
}
