Linux ECAD Setup
---

# Introduction
A quick set up of tools for ECAD on a fresh Linux install. I'll assume your are using one of the mainstream KDE / GNOME distros with comercial support options i.e. Redhat / Fedora / SuSE / Ubuntu. I've largly based this on support of the follwing tools: [KiCAD](https://www.kicad.org/help/system-requirements/) & [PicoScope](https://www.picotech.com/downloads/linux)

Warning curerently KiCAD still requires X11 and does not mention SuSE, it works in Wayland but often hangs when using dialogs. 


# Install software witout the faff
flatpacks from flathub are genrally a good cross platform method of installing applications that are sandboxed and often maintained by the app developers so are up to date.

in most distros they can be acced via the following Apps:
* KDE = "discover" application.
* Gnome = "software" application.

just make sure flathub is set up on [your distro](https://flathub.org/en/setup) first.

## ECAD tool
A professional grade yet free ECAD tool - highly recomended
```flatpak install flathub org.kicad.KiCad```

## LTSpice
Analouge's spice tool

Install wine
I've not suggested flathub as the Author is unknown
* Redhat / fedora ```sudo dnf install wine```
* Debian / Unbuntu ```sudo apt install wine```
* SUSE ```sudo zypper install wine```

Download the [windows version of LT spice](https://www.analog.com/en/resources/design-tools-and-calculators/ltspice-simulator.html)

Then double click on the LTspice64.msi in your downloads folder.

## Pico Scope
For Fedora please see [my guide](/2026-05-PicoScope7onFedora.html)

For Ubutu and openSUSE [please ses there guide](https://www.picotech.com/downloads/linux).

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
