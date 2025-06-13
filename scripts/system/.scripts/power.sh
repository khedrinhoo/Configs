#!/bin/bash

choice=$(printf "Lock\nReboot\nExit\nShutdown" | dmenu -p "Choose action: ")

[ $choice = "Lock"    ] && systemctl suspend
[ $choice = "Reboot"  ] && systemctl reboot
[ $choice = "Exit"    ] && sudo pkill dwm
[ $choice = "Shutdown"] && systemctl poweroff
