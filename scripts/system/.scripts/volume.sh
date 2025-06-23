#!/bin/bash

arg=$1
[ $arg = "up"     ] && amixer set Master 5%+
[ $arg = "down"   ] && amixer set Master 5%-
[ $arg = "toggle" ] && amixer set Master toggle
