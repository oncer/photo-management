#!/bin/bash
shopt -s nocaseglob
for i in *.jpg
do
	size=$(stat -c %s "$i")
	if (($size < 2 * 1024*1024)); then
	   continue
   	fi
	echo "Resizing $i..."
	magick "$i" -scale 1920x1920\> -auto-orient -quality 92 "$i"
done
