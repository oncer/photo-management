#!/bin/bash
shopt -s nocaseglob
for i in *.jpg
do
	magick "$i" -scale 1920x1920\> -auto-orient -quality 92 "$i"
done
