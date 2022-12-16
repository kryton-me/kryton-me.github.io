Spell Checker tips
===
This page is mainly looking at check as you type tools

# Browers

## Firefox
Firefox has two options that need to be enabled:

Menu button -> Settings -> General -> Language and Appearance -> Language -> "Check your spelling as you type"

check the above setting is enabled (ticked)

if it's not working try:

   about:config

accept the risk and Contine

search for spellcheck

change from 0 to 1 or 2

   layout.spellcheck.Default  2

## Edge
appears to give you full office spelling & grammer by default. 

# Text / code editors

## Notepad++ (Windows)
### install

   winget install Notepad++

### set up spelling

Plugins -> Plugins Admin -> search "spell" -> tick "DSpellCheck -> Install

click Yes

Windows admin approval

Plugins -> DSpellCheck -> Settings -> Change Current Language -> Dowload Lanuages...

Tick the Languag(es) of intrest

Install Selected

Plugins -> DSpellCheck -> Settings -> Change Current Language -> confirm its set to the required language

### Set up dark mode
Settings -> Preferences -> Dark Mode -> Enable Dark mode

### Change font
Settings -> Style Configurator... -> Global Stules -> Global override -> Enable global font

Set the font to your preffrence.

## TextMate (Mac OS)
### install
from the command line using homebrew

   brew install --cask textmate

## Emacs (cross platform)
### install (Windows)
from the commans line (search -> cmd)

   winget install GNU.Emacs

Then on your desktop creat a shortcut pointing to:

   C:\Program Files\Emacs\emacs-<version number>\bin\runemacs.exe

### install (MacOS)
from the command line using homebrew

   brew install --cask emacs

### install (Linux)
You probably already have it installed if not check your mackage manager


[/](/)
[license](/LICENSE)

