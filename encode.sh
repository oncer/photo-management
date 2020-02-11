#!/bin/sh
num=0
for i in *.MOV
do
    let "num=num+1"
    OUT=$(stat $i --format %y| sed "s/\(....\)-\(..\)-\(..\) \(..\):\(..\).*/\1\2\3_\4\5/")_$(printf "%02d" $num)
    ffmpeg -i $i -crf 23 -c:v libx264 -c:a aac -strict experimental -b:a 192k $OUT.mp4
done
for i in *.AVI
do
    let "num=num+1"
    OUT=$(stat $i --format %y| sed "s/\(....\)-\(..\)-\(..\) \(..\):\(..\).*/\1\2\3_\4\5/")_$(printf "%02d" $num)
    ffmpeg -i $i -crf 23 -c:v libx264 -c:a aac -strict experimental -b:a 192k $OUT.mp4
done
