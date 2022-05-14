Dictation and Text to Speech (TTS)
===
If you're not the quickest on a keyboard or at reading text here are a couple of hacks to speed up life.

# iOS TTS
* Select the text
* On the pop up menu tap the right arrow
* Tap speak

# iOS Dictation
* Place the curser where you want the text
* Tap the microphone symbol on the keyboard
* Dictate what you want
* tap the screen to stop.

# MacOS TTS via Mouse
* select the text on the screen
* “Edit” -> “Speech” -> “Start Speaking”

# MacOS TTS keyboard shortcut

## Set up
* System preferences -> Keyboard -> Shortcuts -> App Shortc...
* click "+" (below the list on the right)
* Application = "All Applications"
* Menu Title= "Start Speaking"
* Keyboard Shortcut = cmd + shift + C
* click "add"

## To use
* select the text on the screen, 
* press "cmd + shift + C"

# MacOS Dictation
* Place the curser where you want the text
* Double tap the Fn key
* Dictate what you want
* Single tap Fn to stop

# Windows TTS
Windows has a built in Text To Speech tool but there is no way to access it without using some form of software. To get around this I have released a basic Python script, A copy of the script can be found on [GitHub](https://github.com/kryton-me/PyWinTTS). It has been tested on Windows 10 and MacOS 11. I have released this under the MIT license for maximum compatibility.

As an aside although this tool is written expressly with Windows in mind I have also tested it on MacOS 11, interestingly MacOS fully supports utf8 where as it falls over in windows if you don’t strip utf8 out characters. For this reason inside the script is a list of common utf8 characters and english words to represent them. You may wish to add to this list if your missing regular characters. Although this tool supports MacOS I’d advise using the built in tool listed above. 

## Install Python
This script has been tested on Python 3.10

## libraries required
Command syntax for Windows users if your on a Mac / Linux try “pip3 install” instead.

### Copy buffer access

    py -m pip install pyperclip

This uses the BSD Licence

### Text to speech tool access

    py -m pip install easy_pyttsx3

This uses the MIT License

## Shortcut
In order to use this in windows with a key combination a shortcut file is needed.

* create a link file on the desktop to the script
* set the target as the above script
* set a keyboard shortcut in the link file as: crtl + ⬆️ + C

In with the python script is a windows shortcut file with a key combination already set up. Although I’m not convinced it will work on other systems.

## Using the script
* Select the text to want read then press ctrl + C to copy it.
* Press the keyboard combination crtl + ⬆️ + C to have it read back.

[/](/)
[license](/LICENSE)

Keywords: Dyslexia, TTS, Python