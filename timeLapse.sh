!#/usr/bin/env bash

printf '%s\n' "Renaming files to date order"

#rename the files to get them in date order.

exiftool -d '%Y-%m-%d_%H;%M%;%S-%%01.c.%%e' '-filename<CreateDate' .

printf '%s\n' "Renaming done!"

#Get the name of the folder assuming its the project name

projectName=${PWD##*/}

printf '%s\n' "Calling the video file $projectName.mp4"

#Run ffmpeg

ffmpeg -framerate 25 -pattern_type glob -i "*.JPG" -s:v 1920x1080 -c:v libx264 -crf 17 -pix_fmt yuv420p "$projectName.mp4"