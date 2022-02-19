ECAD Software
=============

# Cad Software requirements

Runs on Unix(MacOS) or Other Unix-like system
Supports ODB++ or simular Manufactering outputs
Easy to configure
Good Library availability
From past experience I’d have the above requirements of any ECAD tools I would want to use.

# KiCAD

Linux / MacOS support is good but no ODB++ which is annoying. I’ve only had a brief play with it but it struck me as tricky to configure unless you learnt it. from what I’ve heard the library support is not bad Already being ARM compatible sounds very promising for future MacOS support.

From the future? Check the ODB++ ticket and IPC-2581 ticket. Looks like IPC-2581 was on the v6 roadmap but has been pushed back. There is also an ARM MacOS ticket to keep an eye on.

# Eagle CAD (Part of AutoCAD Fusion)

MacOS & Linux support (Intel only), Sadly no ODB++ support but playing with it strikes me as not to bad to use and configure. Best of all it has library support from Wurth who’s components I like to use. Will they Migrate to ARM is the big question? Do I want to invest time learning a tool that may stay Intel only.

# Pulsonix

I briefly got this to work with WINE however it kept falling over due to requesting a windows font I did not have installed. This could have been fixable but felt like a lot of work to use an expensive tool not designed for MacOS. I then updated my Mac to 10.15 and WINE broke. I note CodeWeavers have their cross over product working with 10.15 again however this tool is not designed / supported for MacOS so post ARM migration I very much doubt any support will remain. I’m considering this as being a Windows only tool. It does have ODB++ support and past experience suggest the user interface is much better than a lot of tools I’ve used.

# Dip Trace

Officially supplied with WINE for use on MacOS however MacOS 10.15 does not support WINE. Has ODB++ support, seems relatively easy to use and comes with some libraries. Whether they would ever consider further MacOS support remains to be seen, especially with the ARM move.

# Altium

Windows Only, Supports ODB++, is not the easiest to set up documentation templates as can take quite some time to configure. Has a decent library as standard and integrates in to Octparts.

# Osmond PCB

MacOS only, PCB only no Schematic capture so a bit Old school not being an intreated tool so I think I’d look elsewhere.

# Zuiken CadStar

Windows only, Has ODB++ support, No to bad to use from memory but I’m not sure what the library situation is now days.

Other tools I’m aware of but have no experience of / ability to test:

* Upvertor
* OrCad
* Allegro
* Design Spark

[/](/)
Keywords: DIPTRACE, ECAD, KICAD, MACOS