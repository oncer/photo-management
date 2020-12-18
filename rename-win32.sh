#!/bin/sh
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
$SCRIPTPATH/jhead -n%Y%m%d_%H%M%S_%04i *.jpg
$SCRIPTPATH/jhead -n%Y%m%d_%H%M%S_%04i *.jpeg
$SCRIPTPATH/jhead -n%Y%m%d_%H%M%S_%04i *.JPG
#for i in *.mp4
#do
    #OUT=$(stat $i --format %y| sed "s/\(....\)-\(..\)-\(..\) \(..\):\(..\).*/\1\2\3_\4\5/")
    #mv $i $OUT.mp4
#done
