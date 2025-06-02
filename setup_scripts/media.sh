#!/bin/bash

media(){

	media=(
		sxiv
		mpv
		mpd
		ffmpeg
		gimp
		kdenlive
		texlive
		zathura
		zathura-pdf-mupdf
		mupdf
		libmupdf
	)

	for MEDIA in "${media[@]}"; do
		install_package_pacman "$MEDIA" 
	done
}