Time lapse
==========

## The problem

I have a couple of cameras which can be configured to take timelapse as JPEG files. Previously I used a piece of software from the camera manufacturer to turn them in to MP4 files. This software has finally stopped working due to an OS update (the software having gone unsupported a few years ago).

How should I go about making time lapses from these files now that the accompanying software no longer works.

# Finding a solution

Looking around various app stores I found a lot of software pro-porting to do the job and a lots of reviews suggesting they did not. Then looked at the history to see it had not been updated in 4 years so was unlikely to be maintained going forward. I decided to give up on this sort of proprietary software and look towards open source.

I found a few mentions of open source software that did this but the only ones under active development where ffmpeg and virtualdub. Sadly my Windows system is still bricked 🧱 so ffmpeg it is.

# Installing ffmpeg

Using brew to install on my Mac. PC still 🧱ed


     brew install ffmpeg

test the install by calling ffmpeg

     ffmpeg

I got a version statement followed by a list of options, this suggests its working.

# Time Lapse settings

Rahul Sekhar has a great article on using ffmpeg for time lapses. I largely followed this article to set up my on own arguments and settings:

The full documentation can be found here

I picked the following settings:

~~~
-framerate 25 
~~~

I tend to shoot in 25fps anyway for flicker reasons and it keeps the file size / bitrate lower than 30fps. I can’t tell the difference and it’s still better than cinema! If I want to go faster I’ll speed it up in the edit suite.

~~~
-pattern_type glob -i "*.JPG"
~~~

use a “glob” pattern to find all the .JPG files in the current folder. The Pattern being “*.JPG”

~~~
-s:v 1920x1080
~~~

set frame size on the video stream. I want to show this on 16:9 1080p screens and it’s the native resolution of the time lapse files from my camera anyway. Guess i could just go -autoscale but I may change camera and I want a fixed 1080p set up.

~~~
-c:v libx264
~~~

Use h264 codec on the video stream. I know, not very open source but I want my TV and Phone to play this.

~~~
-crf 17 
~~~

Constant rate factor, For x264 this is 0 lossless 51 terrible, at 17 my camera put out around 500kBps on lower light images

~~~
-pix_fmt yuv420p 
~~~

Set pixel format as yuv420p which has 12 bits per pixel. I don’t know the in’s and out’s of this but I do know I need to do this for compatibility with Apple software.

So this results in a command along the lines of:

~~~
ffmpeg -framerate 25 -pattern_type glob -i "*.JPG" -s:v 1920x1080 -c:v libx264 -crf 17 -pix_fmt yuv420p timelapse1080p25fps.mp4
~~~

# The Problem with using file names

In most cases simply using the file names is fine, however on larger time lapses the camera splits the images over multiple folders and can also reset the file number counter. This means the resulting time lapse is out of sequence. This is where the Exif Tool comes in very hand.

# Installing ExifTool

     brew install exiftool

# Bash Script time! 😁

making all of this repeatable sounds like a job for a small bash script!

~~~
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
~~~

Oh and Yes I know it needs to be “.JPG” not “.jpg” but that’s what my camera produces.

# Animation

It possible to also use this for animation although in this case some adjustments need to be made.

Speed, i’ve dropped this to 15fps, less watchable but a lot less work when doing the animation.

Cropping, when I tried this I used a non 1920×1080 camera so needed to crop the image. If I left ffmpeg to it’s self it would reduce the images to the output size specified but would distort the aspect ratio. To get around this I used the 

~~~
-filter:v “crop=W:H”X:Y” 
~~~

	 command. W is Width of crop (X) in pixels, H is High of crop (Y) in pixels, X is the width offset between the original and the crop (0 if going from say 3:2 to 16:9). Y is the hight offset between the original and the crop. i.e. how much your going to loose from the top. It’s best worked out for a given camera each time. Not sure I can be bothered but I think it would be possible to use exiftools and some maths in a script to work it out each time. As an example here are the numbers to crop a “3k” 3:2 (3000×2000) image as it’s nice round numbers. -filter:v “crop=3000:1680″0:160” this assumes the crop should be in the middle. 
* W = original width
* H = original high * 0.56
* X = 0
* Y = (Original high – H )/2

~~~
ffmpeg -framerate 15 -pattern_type glob -i "*.JPG" -s:v 1920x1080 -c:v libx264 -crf 17 -pix_fmt yuv420p -filter:v "crop=3000:2000:0:160" "$projectName.mp4"
~~~

TAGS: FFMPEG, MACOS, MP4, TIME LAPSE