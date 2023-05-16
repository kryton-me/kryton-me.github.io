SDR on MacOS
---

# Introduction
I have a basic RTL-SDR dongle I had the idea to use as a poor mans spectrum analyser. Out of intrest I thought i'd try it out as an SDR radio first to see what I can pick up and as a quick memory refresh regards radio. Researching how to set this up I discovered there's a great dearth of information about running STR software on Apple Mac computers. I thought I'd put my notes together in the hope it my help someone else.

# Hardware
I used a RTL-SDR blog v3

One thing to note is for anything between 500kHz to 25MHz put the dongle (RTL-SDR) in to Direct sampling (Q branch works best for me). Also don't forget to put it back or you might find Short wave broadcasts appearing in 100MHz bands!

# Software Clients
I got 3 Client working on my Mac

## SDR++
By far the best, relatively easy to use (as SDR goes) and so far very reliable. the only down side being its on Mac ports not Home Brew so needs sudo to install! I have a rather uneasy feeling every time I use Mac Ports.
I have to say I do like the ability to scroll the spectrum if a signal is a few MHz away.

	sudo port install SDRPlusPlus

**Health warning!** Any package manager that requires "sudo" can be very bad for your systems health!

## Cubicsdr
Looks pretty comprehensive although both my Mac and dongle got very hot when using it. 

	brew install --cask cubicsdr

## Sdrdx
Simple and easy to use, possibly a good starting point but lacks the features of other tools.

	brew install --cask sdrdx

## SDRangle
[SDR angle](https://www.sdrangel.org/)
yet to test it out.

Handy for Amateur TV broadcasts

# Antenna
I use an old (mid 2000's) indoor VHF TV / UHF TV / FM antenna, Although not an obvious choice it seems to get good signals across a wide spectrum and I happened to have it to hand. I've had it working on the following bands with reasonable signal quality:

* Short wave AM broadcasts 75m & up
* FM radio broadcasts
* DAB radio broadcasts
* PMR446 radio

It has two 1m ish telescopic vertically antennas and a directional loop antenna. it has a built in amplifier with adjustable gain.

# Terrestrial Broadcast radio
For frequency allocations see the [ITU Frequency Bands allocated to Terrestrial Broadcasting Services page](https://www.itu.int/en/ITU-R/terrestrial/broadcast/Pages/Bands.aspx)

## MF Medium Wave 
* Modulation mode: AM
* Channel spacing: 9kHz
* SDR Bandwidth: ?kHz
* Dongle mode: Direct sampling (Q branch)
* ITU bands: "Low frequency (LF) and Medium frequency (MF) Bands"
	* Upper of the two bands
* Wavelength(s): 370m

I've not been able to pick this up, I suspect this is down to my Antenna choice.

## HF National shortwave (SW)
* Modulation mode: AM 
* Channel spacing: 5kHz
* SDR Bandwidth: 9kHz
* Dongle mode: Direct sampling (Q branch)
* ITU bands: "High Frequency (HF) Bands for national broadcasting"
* Wavelength(s): 
	* 125m 2.4MHz
	* 90m 3.3MHz
	* 75m 4MHz
	* 60m 4.9MHz
	* 59m 5.0MHz

## HF International shortwave (SW)
* Modulation mode: AM 
* Channel spacing: 5kHz
* SDR Bandwidth: 9kHz
* Dongle mode: Direct sampling (Q branch)
* ITU bands: "High Frequency (HF) Bands for international broadcasting under RR12"
* Wavelength(s): 
	* 49m 6MHz
	* 41m 7.3MHz
	* 31m 9.7MHz
	* 25m 12MHz
	* 22m 14MHz
	* 19m 15MHz
	* 16m 18MHz
	* 15m 19MHz
	* 13m 22MHz
	* 11m 26MHz

This is the area I have found most interesting as I used to listen to SW radio as a child, either on when away to get news from home or to get a diffrent opinion of the world from my local media. Although there are still plenty of station it feels in decline.

## VHF "FM radio"
* Modulation mode: WFM
* Channel spacing: 
* SDR bandwidth:
* Dongle mode: Direct off
* ITU bands: "Very High frequency (VHF) Bands"
* Wavelength(s): 3m

The SDR software dose a good job of receiving these signals with very good sound quality. Much better than DAB and some internet streams so still worth listening to.

## DAB broadcasts
* Modulation mode: DAB/DAB+
* Mux spacing: 1.712MHz
* SDR bandwidth: N/A
* Dongle mode: Direct off
* ITU bands: "Very High frequency (VHF) Bands
* Wavelength(s): 1.5m, & 1.3m

SDR plus plus does not pick these up directly however you can install a dedicated piece of DAB software to decode the signals. I used welle.io.

	sudo port install welle.io

**Health warning!** Any package manager that requires "sudo" can be very bad for your systems health!

Worked really well although it listed the configuration of each stream and made it clear why DAB can sound so terrible. 32kHz sample rate on 40kbit/s AAC or 80kbit/s Mpeg 1 layer II any one?

## VHF / UHF / Satellite TV
This is what the RTL–SDR chipset originally designed to do receive terrestrial TV broadcasts. In theory it's also possible to receive some of the lower frequencies from a satelite LNB (assuming the bias T could power it) I don't have an intrest in exploring TV Broadcasts.

# 2-way radio communications
Personally I don't like the idea of listening in to peoples personal conversations. I feel it's not unreasonable to listen to some Ham band broadcasts i.e. signals from the International space station. Otherwise I've only used it to receive radio equipment I own to improve my technological understanding though practical application.

## Amateur / Ham radio transmissions

For a list of amateur bands see the ITU Radio regulation site. 

* 🇺🇳 [ITU amateur radio regulations](https://life.itu.int/radioclub/rr/rindex.htm)

Not entirely sure I can take the frames site seriously. Most countries then have band allocation lists with more detail and some contries have additional bands such as the UKs 4m band. 

* 🇬🇧 [Radio Society of Great Britain band plan](http://rsgb.org/main/operating/band-plans/)
* 🇳🇿 [New Zealand Association of Radio Transmitters](https://www.nzart.org.nz/info/band-plan/)
* 🇨🇦 [Radio Association of Canada band plan](https://www.rac.ca/operating/bandplans/)
* 🇺🇸 [national association of amateur radio band plan](https://www.arrl.org/band-plan)

### Ham FT8

One thing that was of interest was listening in to the FT8 protocol and seeing how far away you can pick a signal up from. I managed to pick up stations pretty much the other side of the plant from me. you will need the following software.

* Sound flower (audio loopback software)
	* brew install Soundflower
	* developer needs authorising in the system preferences
	* This is for Intel / Mac OS 11 (big sur) or earlier  
* SDR++ (SDR software discussed above)
	* sudo port install SDRPlusPlus
	* Need to set to “direct sampling, Q branch”
	* 20m band seems most popular
	* Modulation = Upper Side band
	* bandwidth = 1k5
	* audio sink = Soundflower (2ch)
* WSJT-X (decoding software)
	* brew install wsjtx
	* Audio input = Soundflower (2ch)
	* Set radio as “Hamlib NET rigctl
	* “Localhost:4532” (broken at time of writing)
	* Check volume is in green
* Gridtracker (plot stations)
	* brew install gridtracker
	* Automatically connects to WSJT-X logs
	* Extend contact fade to 24hr to view last days worth of results.

## CB

* Modulation mode: FM / PM / AM / DSB / SSB
* Channel spacing: 10k
* SDR bandwidth: ?
* Dongle mode: Direct sampling (Q branch)
* band: [around 27MHz but varies by country](https://en.m.wikipedia.org/wiki/Citizens_band_radio)
	* 🇺🇸 [FCC allocations](https://www.fcc.gov/wireless/bureau-divisions/mobility-division/citizens-band-radio-service-cbrs)
	* 🇬🇧 & 🇪🇺 [Ofcom channel allocation uk & CEPT/EU](https://www.ofcom.org.uk/__data/assets/pdf_file/0022/84406|/citizens-band.pdf)
	* 🇳🇿 [rms' allocation of CB & PRS](https://rrf.rsm.govt.nz/smart-web/smart/page/-smart/domain/licence/LicenceSummary.wdk?id=146140)
* Wavelength(s): 11m

UK channels CB channels only permit FM/PM only

## 49MHz License free band
You used to have 2-way radios that used this band but as I belive it's mostly used for baby monitors now so I've not investigated. From memory you where lucky to get 10m with a reasonable signal.

## LPD433
* Modulation mode: FM
* Channel spacing: 25kHz
* Max broadcast power: 0.01W
* SDR bandwidth: ?
* Dongle mode: Direct off
* band: UHF 433 to 434 MHz
* Wavelength(s): 70cm

Not sure I've ever head of anyone who owned the equipment let alone used it, Given the 10mW power it's not surprising. I've included this out of curiosity.

## 🇪🇺 PMR446 analogue
* Modulation mode: FM
* Channel spacing: 12.5kHz
* SDR bandwidth: 12kHz
* Dongle mode: Direct off
* band: 446.0 to 446.2 MHz
* Wavelength(s): 67cm

[decision](https://docdb.cept.org/download/1491)

## 🇪🇺 PMR446 Digital
* Modulation mode: dPMR
* Channel spacing: 6.25kHz
* SDR bandwidth: N/A
* Dongle mode: Direct off
* band: UHF 446.0 to 446.2 MHz
* Wavelength(s): 67cm

[decision](https://docdb.cept.org/download/1491)

## 🇺🇸🇨🇦 FRS
* Modulation" mode: NBFM
* Channel spacing: 12.5kHz
* SDR bandwidth: ?
* Dongle mode: Direct off
* band: UHF 462 to 467 MHz
* Wavelength(s): 65cm

[fcc frs](https://www.fcc.gov/wireless/bureau-divisions/mobility-division/family-radio-service-frs)

## 🇳🇿🇦🇺 PRS / UHF CB
* Modulation mode: FM/PM
* Channel spacing: 12.5kHz / 25kHz (telemetry)
* SDR bandwidth: ?
* Dongle mode: Direct off
* band: UHF 476.4250 to 477.4125 MHz
* Wavelength(s): 65cm

[rms' allocation of CB & PRS](https://rrf.rsm.govt.nz/smart-web/smart/page/-smart/domain/licence/LicenceSummary.wdk?id=146140)