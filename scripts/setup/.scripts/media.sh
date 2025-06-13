#!/bin/bash

media(){

	media=(
		ffmpeg
		gimp
		kdenlive
		sxiv
		mpv
		mpd
		zathura
		zathura-pdf-mupdf
		mupdf
		libmupdf
		texlive
	)

	for MEDIA in "${media[@]}"; do
		install_package_pacman "$MEDIA" 
	done
}
