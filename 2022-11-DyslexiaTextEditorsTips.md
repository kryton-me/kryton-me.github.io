Dyslexia - Text editor tips
===
This page is looking at text editors of various operating systems and how to configure them to have spell checkers, white on black text (often called Dark mode) and change the font to something more friendly. This is aimed at those writing code & want spell checked comments.

# Notepad++ (Windows)
## install

   winget install Notepad++

## set up spelling

Plugins -> Plugins Admin -> search "spell" -> tick "DSpellCheck -> Install

click Yes

Windows admin approval

Plugins -> DSpellCheck -> Settings -> Change Current Language -> Dowload Lanuages...

Tick the Languag(es) of intrest

Install Selected

Plugins -> DSpellCheck -> Settings -> Change Current Language -> confirm its set to the required language

## Set up dark mode
Settings -> Preferences -> Dark Mode -> Enable Dark mode

## Change font
Settings -> Style Configurator... -> Global Stules -> Global override -> Enable global font

Set the font to your preffrence.

# TextMate (Mac OS)
## install
from the command line using homebrew

   brew install --cask textmate

## Spelling

## Dark mode

## Font change

# Pretext (iOS / iPadOS free version)
Theme and spell checker default to the system standards unless you buy the pro version. I.E. Uses DarkMode if the device is set to that, uses the Operating system spell checker. Not aware of any ability to change the font although it is not a bad sans serif. 

Technically it does lack file support for coding as it only appears to support mark down (.md) and text files (.txt).

## install
use the Apple App store

# Textastic (iOS / iPadOS)
Very configurable but no real spellchecker support so a poor choice in my opinion.

## install
use the Apple App store

## Set up spelling
just Autocorrection when typing.

settings (cog ⚙️) -> Code Editor -> Keyboard-> Autocorection

### Set up Font
settings (cog ⚙️) -> Code Editor -> Font -> OpenDyslexicMono if installed

### Set up Dark mode
settings (cog ⚙️) -> UITheam -> Dark (or System if your phone is set to Dark)
	 
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