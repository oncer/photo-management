#!/bin/sh
for i in *.MOV
do
    OUT=$(stat $i --format %y| sed "s/\(....\)-\(..\)-\(..\) \(..\):\(..\).*/\1\2\3_\4\5/")
    ffmpeg -i $i -c:v copy -c:a aac -strict experimental -b:a 192k $OUT.mp4
done
for i in *.AVI
do
    OUT=$(stat $i --format %y| sed "s/\(....\)-\(..\)-\(..\) \(..\):\(..\).*/\1\2\3_\4\5/")
    ffmpeg -i $i -c:v copy -c:a aac -strict experimental -b:a 192k $OUT.mp4
done
