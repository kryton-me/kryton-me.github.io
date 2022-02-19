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
The software is in the OS but it's not configrable without some code. I get it to work I wrote a python script.

~~~
#!/usr/python
# -*- coding: utf-8 -*-

import win32clipboard
import pyttsx
import sys
import unicodedata

def get_copy_buffer():
    try:
        win32clipboard.OpenClipboard()
        data = win32clipboard.GetClipboardData()
        win32clipboard.CloseClipboard()
    except:
        win32clipboard.CloseClipboard()
        data = sys.exc_info()[0]
    return data

def refine_text(data):
    if isinstance(data, basestring):
        # convert a few known unicodes to words
        #data = data.replace(u"€", 'Euros')
        #data = data.replace(u"£", 'Pounds')
        #data = data.replace(u"Ω", 'Ohms')
        #data = data.replace(u"Ω", 'Ohms')
        #data = data.replace(u"μ", 'Mu')

        # Normalize the rest
        #text = unicodedata.normalize('NFKD', data).encode('ascii','ignore')

        text = data

        #print "have cleaned text"
        return text
    else:
        #print
        return "not text"

def say_it(text):
    # Set up the voise engine
    engine = pyttsx.init()
    # Slow it down a bit as you listing for accuracy not comprehension. (defult = 200)
    engine.rate = 120
    # load the text
    engine.say(text)
    # run it and hang around to confirm all is well.
    engine.runAndWait()
    # confirm it's over
    print "done"

if __name__ == '__main__':

    data = get_copy_buffer()
    text = refine_text(data)
    print text
    say_it(text)
~~~

Last tested in Windows 7