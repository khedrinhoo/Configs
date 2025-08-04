#!/bin/bash

sudo pacman -S --noconfirm --needed blueberry bluez bluez-utils

sudo systemctl enable --now bluetooth.service
