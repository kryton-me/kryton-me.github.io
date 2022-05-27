Radio Part 3 - Homebrew
—

Have got annoyed at the poor quality feeds offered by the internet radio I brought, can I do better?

# Hardware
The idea is to have a basic computer to handle the stream and have the ability to turn on the and off sone speaker connected to it.

## Computer 
I have a Raspberry Pi B Gen 1 to hand, yes it’s old but it does the job and saves buying a new one. It also has GPIO pins to turn speakers off and on.

## Speakers
Some speakers with a 5V power input so it can run on a common power supply with the Raspberry Pi. I Guess in theory I could use a USB speaker and have the bus turn the speaker off and on (limit it to 100mA). I’m not sure if that’s implemented and powering things from the Raspberry Pi has proven hit and miss in the past.

## Relay
Use a GPIO pin on the Pi to turn a relay on/off to be able to turn the speakers on/off.

# Software

## Operating system
Raspbian Lite set up headless.

## Player software
Mplayer, it’s as simple as:

	mplayer <stream url>

Then to stop it:

	pkill mplayer

## Control interface
Initially use a Mosh interface to execute shell commands. Ideally some kind of web interface such as [OliveTin](https://www.olivetin.app/index.html).

## Schedule the radio to turn on off
Although I’m quite handy with cron I think I might give “at” a go as I am technically a human.