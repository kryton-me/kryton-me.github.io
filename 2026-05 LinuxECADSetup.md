Linux ECAD Setup
---

# Introduction
A quick set up of tools for ECAD on a fresh Linux install.

# Install software witout the faff
flatpacks from flathub are genrally a good cross platform method of installing applications that are sandboxed and often maintained by the app developers so are up to date.

in most distros they can be acced via the following Apps:
* KDE = "discover" application.
* Gnome = "software" application.

just make sure flathub is set up on (your distro)[https://flathub.org/en/setup] first.

## ECAD tool
A professional grade yet free ECAD tool - highly recomended
```flatpak install flathub org.kicad.KiCad```

## GUI git client for Linux
Still struggling with this one, I've trued the following:
* Cola git ```flatpak install flathub com.github.git_cola.git-cola```
* Desktop plus ```flatpak install flathub io.github.pol_rivero.github-desktop-plus```
* command line git
* git Authentication tool.

## Text editor
* KDE comes with Kwrite which is pritty good
* GNOME kwrite can be installed: ```flatpak install flathub org.kde.kwrite```

## Chrome without the AI bloat, you millage may vary.
It does not have a varified flatpak on flat hub, best follow your distro.

## Libre Office
It's ".fods" format is ideal for git storeing of design calulations in a spreadsheet as it's tracable. 
```flatpak install flathub org.libreoffice.LibreOffice```

# Extensions

## Virtual box drivers
Not in winget just mount from the Virtual box on the host

# Update softwrae from flathub
use discover or software, on some distros (ubuntu) you need to use the application you installed to install flat hub in addtion to the distros application.
