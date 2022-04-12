SDR on MacOS
---

# Introduction
I have a basic RTL-SDR dongle I had the idea to use as a poor mans spectrum analyser. Out of intrest I thought i'd try it out as an SDR radio first to see what I can pick up and as a quick memory refresh regards radio. Researching how to set this up I discovered there's a great dearth of information about running STR software on Apple Mac computers. I thought I'd put my notes together in the hope it my help somewone else.

# Software Clients
I got 3 Client working on my Mac

## SDR++
By far the best, relativly easy to use (as SDR goes) and so far very reliable. the only down side being its on Mac ports not Home Brew so needs sudo to install. I have a rather uneasy feeling every time I use Mac Ports.
I have to say I do like the ability to scrole the spectrum if a signal is a few MHz away.

	sudo port install SDRPlusPlus

# Cubicsdr
Looks prity comprihensive although both my Mac and the RTL-SDR dongle got very hot when using it. 

	brew install --cask cubicsdr

# Sdrdx
Simple and easy to use, possibly a good starting point but lacks the features of other tools.

	brew install --cask sdrdx

# Antenna
I use an old (mid 2000's) indoor VHF TV / UHF TV / FM atenna, althouth not an obvius choice it seems to get good signals across a wide spectrum and I happened to have it to hand. I've had it working on the following bands with resnable signal quality:

* Short wave AM broadcasts
* 2m Amature / HAM radio 
* FM radio broadcasts
* DAB radio broadcasts
* PMR446 radio

It has two 1.5m teluscopic arials set vertically and a durectional loop antenna with a bilt in amplifier.

# What can you listen to?

## Short wave (SW) broadcasts
For anything under 25MHz put the dongle (RTL-SDR) in to Direct sampling Q branch. Also don't forget to put it back or you might find Short wave broadcasts heading up in to the 100s of MHz.

There is still a lots of signals on varous SW bands to listen two. I did find dropping the bandwidth to 9kHz helped clen up the sound quality by cutting out high end noise.

For global allocations for SW and other bands see the

* 🇺🇳 [ITU Frequency Bands allocated to Terrestrial Broadcasting Services page](https://www.itu.int/en/ITU-R/terrestrial/broadcast/Pages/Bands.aspx)

## Frequency Modulation VHF broadcasts
Normal radio, which is probably easier over the Internet although possibly not better quality unless it's the BBC. 

## Amature / Ham radio transmissions 
I guess this is more relvent if your in to the hobby and know what to listen out for. In which case you probably know way more than me. I did manage to hear a transmition from a local repeater. I get the impression the point of the hobby is to see how many people you can talk to and how far away. From this I guess I should not feel to guilty about listening in.

For a list of amatur bands see the ITU Radio regulation site. 

* 🇺🇳 [ITU amature radio regulations](https://life.itu.int/radioclub/rr/rindex.htm)

Not entirely sure I can take the frames site seriously. Most countries then have band allocation lists with more detail:

* [Radio Society of Great Britain band plan](http://rsgb.org/main/operating/band-plans/)
* 🇳🇿 [New Zeland Association of Radio Transmitters](https://www.nzart.org.nz/info/band-plan/)
* 🇨🇦 [Radio Association of Canada band plan](https://www.rac.ca/operating/bandplans/)
* 🇺🇸 [nathional association of amature radio band plan](https://www.arrl.org/band-plan)

### Space
Within the Amature bands there are also transmissions from the international space station as well as amature satellite transmissions.
