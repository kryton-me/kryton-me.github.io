SDR on MacOS
---

# Introduction
I have a basic RTL-SDR dongle I had the idea to use as a poor mans spectrum analyser. Out of intrest I thought i'd try it out as an SDR radio first to see what I can pick up and as a quick memory refresh regards radio. Researching how to set this up I discovered there's a great dearth of information about running STR software on Apple Mac computers. I thought I'd put my notes together in the hope it my help somewone else.

# Hardware
I used a RTL-SDR blog v3

One thing to note is for anything between 500kHz to 25MHz put the dongle (RTL-SDR) in to Direct sampling (Q branch works best for me). Also don't forget to put it back or you might find Short wave broadcasts appearing in 100MHz bands!

# Software Clients
I got 3 Client working on my Mac

## SDR++
By far the best, relativly easy to use (as SDR goes) and so far very reliable. the only down side being its on Mac ports not Home Brew so needs sudo to install. I have a rather uneasy feeling every time I use Mac Ports.
I have to say I do like the ability to scrole the spectrum if a signal is a few MHz away.

	sudo port install SDRPlusPlus

## Cubicsdr
Looks prity comprihensive although both my Mac and dongle got very hot when using it. 

	brew install --cask cubicsdr

## Sdrdx
Simple and easy to use, possibly a good starting point but lacks the features of other tools.

	brew install --cask sdrdx

# Antenna
I use an old (mid 2000's) indoor VHF TV / UHF TV / FM atenna, althouth not an obvius choice it seems to get good signals across a wide spectrum and I happened to have it to hand. I've had it working on the following bands with resnable signal quality:

* Short wave AM broadcasts 75m & up
* 80m Amature / HAM radio & up
* FM radio broadcasts
* DAB radio broadcasts
* PMR446 radio

It has two 1m ish telescopic vertically antennas and a durectional loop antenna. it has a built in amplifier with adjustable gain.

# Terestrial Broadcast radio
For frequenciy allocations see the [ITU Frequency Bands allocated to Terrestrial Broadcasting Services page](https://www.itu.int/en/ITU-R/terrestrial/broadcast/Pages/Bands.aspx)

## MF Medium Wave 

* Modulation mode: AM
* Channel spacing: 9kHz
* SDR Bandwidth: ?kHz
* Dongle mode: Direct sampling (Q branch)
* ITU bands: "Low frequency (LF) and Medium frequency (MF) Bands"
	* Upper of the two bands
* Wavelenght(s): 370m

I've not been able to pick this up, I suspect this is down to my Antenna.

## HF National shortwave (SW)

* Modulation mode: AM 
* Channel spacing: 5kHz
* SDR Bandwidth: 9kHz
* Dongle mode: Direct sampling (Q branch)
* ITU bands: "High Frequency (HF) Bands for national broadcasting"
* Wavelenght(s): 
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
* Wavelenght(s): 
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

## VHF "FM radio"

* Modulation mode: WFM
* Channel spacing: 
* SDR bandwidth:
* Dongle mode: Direct off
* ITU bands: "Very High frequency (VHF) Bands"
* Wavelenght(s): 3m

The SDR software dose a good job of reciving thease signals with very good sound quality. Much better than DAB and some internet streams. 

## DAB broadcasts

* Modulation mode: DAB/DAB+
* Mux spacing: 1.712MHz
* SDR bandwidth: N/A
* Dongle mode: Direct off
* ITU bands: "Very High frequency (VHF) Bands
* Wavelenght(s): 1.5m, & 1.3m

SDR plus plus does not pick these up directly however you can install a dedicated piece of DAB software to decode the signals. I used welle.io.

	sudo port install welle.io
	
Worked really well although it listed the configuration of each stream and made it clear why DAB can sound so terrible. 32kHz sample rate on 40kbit/s AAC or 80kbit/s Mpeg 1 layer II any one?

## VHF / UHF / Satellite TV
This is what the RTL–SDR chipset originally designed to do recive terastrial TV broadcasts. In theory it's also possible to recive some of the lower frequencies from a satelite LNB (assuming the bias T coupuld power it) I don't have an intrest in exploring TV Broadcasts.

# 2-way radio comunications

## Amature / Ham radio transmissions

* Modulation mode: lots
* Channel spacing: ?
* SDR bandwidth: 6kHz on fm
* Dongle mode: Direct sampling (Q branch) & Direct off (28.8MHz in middle of 10m band)
* ITU bands: see link below
* Wavelenght(s): see varous links below.

I guess this is more relvent if your in to the hobby and know what to listen out for. In which case you probably know way more than me. I did manage to hear a transmition from a local repeater. 

For a list of amatur bands see the ITU Radio regulation site. 

* 🇺🇳 [ITU amature radio regulations](https://life.itu.int/radioclub/rr/rindex.htm)

Not entirely sure I can take the frames site seriously. Most countries then have band allocation lists with more detail and some contries have adtional bands such as the UKs 4m band. 

* 🇬🇧 [Radio Society of Great Britain band plan](http://rsgb.org/main/operating/band-plans/)
* 🇳🇿 [New Zeland Association of Radio Transmitters](https://www.nzart.org.nz/info/band-plan/)
* 🇨🇦 [Radio Association of Canada band plan](https://www.rac.ca/operating/bandplans/)
* 🇺🇸 [nathional association of amature radio band plan](https://www.arrl.org/band-plan)

### Space
Within the Amature bands there are also transmissions from the international space station as well as amature satellite transmissions.

## CB 
* Modulation mode: FM / PM / AM / DSB / SSB
* Channel spacing: 10k
* SDR bandwidth: ?
* Dongle mode: Direct sampling (Q branch)
* band: [around 27MHz but varies by country](https://en.m.wikipedia.org/wiki/Citizens_band_radio)
	* 🇺🇸 [FCC allocations](https://www.fcc.gov/wireless/bureau-divisions/mobility-division/citizens-band-radio-service-cbrs)
	* 🇬🇧 & 🇪🇺 [Ofcom channel alocation uk & CEPT/EU](https://www.ofcom.org.uk/__data/assets/pdf_file/0022/84406|/citizens-band.pdf)
	* 🇳🇿 [rms' allocation of CB & PRS](https://rrf.rsm.govt.nz/smart-web/smart/page/-smart/domain/licence/LicenceSummary.wdk?id=146140)
* Wavelenght(s): 11m

UK channels CB channels only permit FM/PM only

## 🇪🇺 PMR446 analouge
* Modulation mode: FM
* Channel spacing: 12.5kHz
* SDR bandwidth: 12kHz
* Dongle mode: Direct off
* band: 446.0 to 446.2 MHz
* Wavelenght(s): 67cm

[decision](https://docdb.cept.org/download/1491)

## 🇪🇺 PMR446 Digital
* Modulation mode: dPMR
* Channel spacing: 6.25kHz
* SDR bandwidth: N/A
* Dongle mode: Direct off
* band: UHF 446.0 to 446.2 MHz
* Wavelenght(s): 67cm

[decision](https://docdb.cept.org/download/1491)

## 🇺🇸🇨🇦 FRS
* Modulation" mode: NBFM
* Channel spacing: 12.5kHz
* SDR bandwidth: ?
* Dongle mode: Direct off
* band: UHF 462 to 467 MHz
* Wavelenght(s): 65cm

[fcc frs](https://www.fcc.gov/wireless/bureau-divisions/mobility-division/family-radio-service-frs)

## 🇳🇿🇦🇺 PRS / UHF CB
* Modulation mode: FM/PM
* Channel spacing: 12.5kHz / 25kHz (telemetry)
* SDR bandwidth: ?
* Dongle mode: Direct off
* band: UHF 476.4250 to 477.4125 MHz
* Wavelenght(s): 65cm

[rms' allocation of CB & PRS](https://rrf.rsm.govt.nz/smart-web/smart/page/-smart/domain/licence/LicenceSummary.wdk?id=146140)
