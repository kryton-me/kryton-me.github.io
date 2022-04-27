SDR-Spectrum-Analyser
---

# Introduction
Is it possible to use a basic RTL-SDR dongle as a halfway decent spectrum analyser. The brief being I have a PCB I want to do some pre-cert testing / sniffing on my desk without speeding a lot of money on chamber hire and or giving Rohde & Schwarz a lot of money for one of their lovely boxes (wipes dribble from mouth). Clearly this is going to be no substitute for a chamber and an RTL-SDR dongle has only a 2.4MHz bandwidth so a lot of samples are going to be required. Also nothing is going to be calibrated so it's only good for "that annoying spike at 36MHz has gone" type of analysis. you will still need a chamber. 

# ["rtl_power"](http://kmkeen.com/rtl-power/)
My first pice of research lead me to discover that a pice of software for just this exists and comes with the rtl-sdr driver. The problem (advantage?) being it outputs in csv data not a visual graph electronics engineers are used to, however their is help at hand if you run the help command.

	rtl_power --help

At the bottom of that help file is a link to a water fall graph tool (do your own Quasi peak by eye any one?) written in python: [http://kmkeen.com/tmp/heatmap.py.txt](http://kmkeen.com/tmp/heatmap.py.txt). When you open that file you will notice (if you're in to Pyhton) that it's been edited to exit giving you a URL for presumably a new and improved tool. [https://raw.githubusercontent.com/keenerd/rtl-sdr-misc/master/heatmap/heatmap.py](https://raw.githubusercontent.com/keenerd/rtl-sdr-misc/master/heatmap/heatmap.py). Now my security alarm bells start rinigning at this point but I thought it was wroth a look at the URL. The code looked like it was trying to do what is suggested and appears to be written by the rtl_power author so I took a copy.

If I wanted to say scan from 30MHz to 100MHz (because I know thats where the PSU plays havoc with my radiated emissions) in steps of say 10kHz. I then have an integration interval and exit time to consider (or it will carry on for ever). I decided to have an integration of 0.5s and stop it after 2mintes, outputting the data in the file samples.csv.

	rtl_power -f 25M:100M:10k -i 0.5s -e 2m samples.csv

Then to plot the waterfall graph I pass the output file to heatmap.py specifying the image file I'd like it to make.

	./heatmap2.py samples.csv scan.png

In the end I wrote a shell script to do this for me naming the files by date:

'''
dateTime=$(date +"%Y-%m-%d_%H-%M-%S")
outputData="$dateTime.csv"
outputImg="$dateTime.png"
rtl_power -f 25M:100M:10k -i 0.5s -e 2m $outputData
./heatmap2.py $outputData $outputImg
open $outputImg
'''

In principle having a highly configurable command line tool sounded amazing but in reality using a heatmap was not very helpfull as you only have the brightness levels of you monitor to indicate if you have an issue. If I could find a different method of plotting the information it would be idea even plotting a quasi peak. I'm not sure I have the skill / imagination to do this myself.

# [rtlSpectrum.jar](https://github.com/dernasherbrezon/rtlSpectrum)
The next piece of software is a gui for rtl power. Took me a while to get the right version of Java running (I've not wittingly use java for about 20 years). I have to say I stuggled a little with this, to star with the example command to run the tool is windows specific. I guess the "_win" should have been the give away, doh.

I'm not sure how to get the tool to run the rtl power command of my choice I need to spend some more time with the documentation. I have been able to load files generated with the above script so it's useful for plotting if nothing else. Interestingly I ran it with an arial attached and the big peaks match the known local transmitters so the data makes sense. In fact I used this to compair the spectrum of two antennas. 

# Other software I've not tried
I've found all of this software from the [rtl-sdr blog site](https://www.rtl-sdr.com/big-list-rtl-sdr-supported-software/).

## Dead projects?

###[RTL_SDR_Wide_Spectrum_Analyzer](http://zolli.altervista.org/rtl_sdr_wide_spectrum/index.html)
Again not sure how alive this is. the only reference to age is Unbuntu 17 which was released in 2017 with no long term suport.

###[qspectrumanalyzer](https://github.com/xmikos/qspectrumanalyzer)
Looks like a dead project as not touched since 2017

### [RTLSDR Scanner](https://sourceforge.net/projects/rtlsdrscanner/)
Looks cool but a bit dead and the project site is down and it's not been updated since 2016

## Windows Only
Use my Windows system is still bricked

###[RTL-SDR PANORAMIC SPECTRUM ANALYZER](https://sourceforge.net/projects/guiforrrtlpower/)
I'd like to try this but it's Windows Only.

###[Touchstone](http://rfexplorer.com/touchstone/)
Annoyingly Windows

## Err?

###[retrogram-rtlsdr](https://github.com/r4d10n/retrogram-rtlsdr)
I'm a fan of ASCII art however possible lacks a little in detail.

