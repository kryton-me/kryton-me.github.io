Windows Tools
---

# Intro
If I need to use windows what tools do I need to install to make it more useful. In the Unix / Linux world a lots of this would be built in or available via a package manager. 

# Text Editor - Notepad++
* GNU 3
[Download exe here](https://notepad-plus-plus.org/downloads/)

# Shell - cygwin
* LGPL 3
[Set up instructions](https://www.cygwin.com/install.html)

Worth adding the following based on other pages
* grep
* tree
* mosh
* ssh
* nano
*   no vim here
* inetutils
*   telnet / ftp... clients

# robust remote terminal - mosh
“mosh” package in cygwin

# X client - cygwinX
[Set up instructions](http://x.cygwin.com/)

# Scripting - Python

## Install python
Natively in to Windows not via Cygwin
[Download direct from Python.org](https://www.python.org/downloads/windows/)

## PYPI
PIP should install with python via the above installer, con firm it's installed

    py -m pip —-version

Then to install a package use the following:

    py -m pip install “SomeProject”


For more help see [the help page](https://packaging.python.org/en/latest/tutorials/installing-packages/). 


# Info - BGinfo
[Instruction & Download](https://docs.microsoft.com/en-us/sysinternals/downloads/bginfo)

## BG INFo shut down time stamp

    C:\Windows\System32\catroot2\edb.chk “Time stampt of File”

## BGinfo settings
~~~
\viewkind4\uc1\pard\fi-2880\li2880\tx2880\cf1\b\fs24
Shutdown Time:\tab\protect <Shutdown Time>\protect0\par
Boot Time:\tab\protect <Boot Time>\protect0\par
Host Name:\tab\protect <Host Name>\protect0\par
IP Address:\tab\protect <IP Address>\protect0\par
Network Card:\tab\protect <Network Card>\protect0\par
~~~

# Octave
[Octave wiki](https://wiki.octave.org/Octave_for_Microsoft_Windows)

[/](/)
[license](/LICENSE)

