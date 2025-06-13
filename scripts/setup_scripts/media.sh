#!/bin/bash

media(){

	media=(
		sxiv
		mpv
		mpd
		zathura
		zathura-pdf-mupdf
		mupdf
		libmupdf
		ffmpeg
		gimp
		kdenlive
		texlive
	)

	for MEDIA in "${media[@]}"; do
		install_package_pacman "$MEDIA" 
	done
}
