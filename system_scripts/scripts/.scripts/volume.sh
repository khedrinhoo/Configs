#!/bin/bash

arg=$1
[ $arg = "up"     ] && amixer set Master 5%+
[ $arg = "dowm"   ] && amixer set Master 5%-
[ $arg = "toggle" ] && amixer set Master toggle
