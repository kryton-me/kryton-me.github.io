Dictation and Text to Speech (TTS)
===
If you're not the quickest on a keyboard or ar reading text here are a couple of hacks to speed up life.

#iOS TTS
* Select the text
* On the pop up menu tap the right arrow
* Tap speak

#iOS Dictation
* Place the curser where you want the text
* Tap the microphone symbol on the keyboard
* Dictate what you want
* tap the screen to stop.

# MacOS TTS via Mouse
* select the text on the screen
* “Edit” -> “Speech” -> “Start Speaking”

# MacOS TTS keyboard shortcut

## set up
* System preferences -> Keyboard -> Shortcuts -> App Shortc...
* click "+" (below the list on the right)
* Application = "All Applications"
* Menu Title= "Start Speaking"
* Keyboard Shortcut = cmd + shift + C
* click "add"

## to use
* select the text on the screen, 
* press "cmd + shift + C"

# MacOS Dictation
* Place the curser where you want the text
* Double tap the Fn key
* Dictate what you want
* Single tap Fn to stop.

# Windows TTS
The software is in Windows but it's not configurable without some code. There are a few ways to solve this, a Python script is one possibility. Do not install this unless you have knowledge/ approval of System Administrators. This implementation has known issues with unicode characters, some common characters have been dealt with but the script may still hang.

## libraries required 
### Copy buffer access
This is cross platform so should work on Linux / MacOS as well.
'''
pip install pyperclip
'''
### Text to speech tool
This is also cross platfor so should work on Linux / MacOS as well.
'''
pip install pyttsx
'''
### Unicode

## Python script
A copy of the script can be found on (github)[https://github.com/kryton-me/PyWinTTS]

## Shortcut
* create a link file on the desktop 
* set the target as the above script
* set a keyboard shortcut in the link file as: crtl + ⬆️ + C




[/](/)
Keywords: Dyslexia, TTS, Python