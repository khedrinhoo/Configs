#!/bin/bash

# Set colors
RED='\e[31m'
GREEN='\e[32m'
BLUE='\e[34m'
BOLD='\e[1m'
NC='\e[0m'

# Start promt
setup() {
	cat << "EOF"
 _     _                    _____      _
| |   (_)                  /  ___|    | |
| |    _ _ __  _   ___  __ \ `--.  ___| |_ _   _ _ __
| |   | | '_ \| | | \ \/ /  `--. \/ _ \ __| | | | '_ \
| |___| | | | | |_| |>  <  /\__/ /  __/ |_| |_| | |_) |
\_____/_|_| |_|\__,_/_/\_\ \____/ \___|\__|\__,_| .__/
						| |
						|_|
EOF
}
setup

# Source setup scripts
source install/audio.sh
source install/aur.sh
source install/bar.sh
source install/bluetooth.sh
source install/browser.sh
source install/development.sh
source install/document.sh
source install/filemanager.sh
source install/fonts.sh
source install/graphics.sh
source install/hardware.sh
source install/hypr.sh
source install/image.sh
source install/latex.sh
source install/screenrecord.sh
source install/screenshot.sh
source install/terminal.sh
source install/video.sh
