#!/bin/sh
num=0
for i in "$@"
do
    OUT="${i%.*}_720p.mp4"
    ffmpeg -i $i -c:v libx264 -crf 23 -vf scale=w=1280:h=1280:force_original_aspect_ratio=decrease -c:a copy $OUT
done
