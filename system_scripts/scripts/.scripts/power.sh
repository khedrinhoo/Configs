#!/bin/bash

choice=$(printf "Lock\nReboot\nExit\nShutdown" | dmenu -p "Choose action: ")

[ $choice = "Lock"    ] && sudo suspend
[ $choice = "Reboot"  ] && sudo reboot
[ $choice = "Exit"    ] && sudo pkill dwm
[ $choice = "Shutdown"] && sudo poweroff
