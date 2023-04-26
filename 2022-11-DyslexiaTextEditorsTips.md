Dyslexia - Text editor tips
===
This page is looking at text editors of various operating systems and how to configure them to have spell checkers, white on black text (often called Dark mode) and change the font to something more friendly. This is aimed at those writing code & want spell checked comments.

# Desktop editors
The following text editors are 

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

## Emacs (cross platform)
I started to look at setting up emacs with spell checkers and diffrent fonts and it's quite involved and worthy of a seprate page should I ever get around to doing it.

## TextMate (Mac OS)

### Install
From the command line using homebrew

   brew install --cask textmate

### Spelling
Uses the operating systems tool, to enable:

   Edit -> Spelling > -> Check Spelling While Typing 

### Dark mode
uses Operating system preffence by default

### Font change
Change here:

   View -> Font > -> Show Fonts

# Mobile editors 
I'm focusing on iOS / iPad devices here as I don't personaly run any Android devices. [See my thoughts on operating systems](/2021-01-OperatingSystems)

## Pretext (free version)
Theme and spell checker default to the system standards unless you buy the pro version. I.E. Uses DarkMode if the device is set to that, uses the Operating system spell checker. Not aware of any ability to change the font although it is not a bad sans serif. 

Technically it does lack file support for coding as it only appears to support mark down (.md) and text files (.txt). This site is mastered in mark down hence including it.

## Textastic
Very configurable but no real spellchecker support so a poor choice in my opinion.

### Set up spelling
Just Autocorrection when typing.

settings (cog ⚙️) -> Code Editor -> Keyboard-> Autocorection

### Font
settings (cog ⚙️) -> Code Editor -> Font -> OpenDyslexicMono if installed

### Dark mode
settings (cog ⚙️) -> UITheam -> Dark (or System if your phone is set to Dark)

## Working Copy
Not an editor as such but inclueds a very good one so worthy of note. It's actually a git client  so if your editing code chances are it will be in a git repository. It has lots of formats it can keyword highlight and even preview files such as mark down. To my knowledge it lacks a spellchecker so is not currently a viable option. 

### Chainging font
In the editor, in the top right hand corner of the screen you will see the word "Plain text", "C#", "Hexadecimal"... tap this then "Font:". Gives you the option import fonts.

### Dark mode
Defaults to the system option, can be over ridden in the systems options if needed.

[/](/)
[license](/LICENSE)