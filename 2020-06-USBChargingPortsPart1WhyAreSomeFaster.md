USB Charging ports – Part 1, Why are some faster?
===
I’ve noticed that some devices charge better on certain USB power supplies / charging ports and not others, so I thought I’d try to figure out what’s going on. Just too clarify I’m considering all “USB Chargers” as “USB power supplies” with “Charging ports” as the device plugging in (i.e. a smart phone) has the charger built in to it to charge it’s own battery.

# Initial testing – is there a problem?
Initially to find out which devices drew what current on which charging ports I modified a USB lead so that the +V wire (normally Red) was Open Circuit (O/C) with both ends exposed. I then used my multimeter in current mode to measure the draw of each device on each charging ports. This confirmed my suspicions that just because it’s a 5V 2A power supply the device in question did not nesacerilly draw 2A even if it did on other charging ports.


Basic USB test lead, Current measured with a DMM via the crock clips.

# Further testing – categorising chargers
Researching further I discovered the Lygte info page on USB charging port specifications. This categorise different charging port specs the Author is aware off and helped me categorise the chargers I have.

Second USB test lead, acts as an extension lead so can be used with any proprietary USB lead. Enables current measurements and D+ & D- voltage measurements. This really needs re-designing in to a box as the data lines are only designed for 3.3V and the +V rail is 5V so a short could result in damage.

# Conclusions of testing
I’d love to say there are some simple rules to follow to make my USB charging life simple but quite frankly it’s a mess. From my testing I’ve been able to establish the following random facts about devices & USB charging ports.

# Devices

## Modern Apple devices (Lightning port)
* Need an Apple 10W (A1357) charger to draw over 1A
* On USB DCP chargers they limit to 1A
* Modern Apple 1A chargers (A1399) are now USB DCP

## Apple iPod (30Pin port)
* Needs an old Apple 1A (A1299 / A1205) to charge at 500mA
* Limits to 100mA on a USB DCP & Apple 2A

## Sony Compact system camera (CSC)
charges at up to 1.4A on 
* USB DCP
* Samsung 2A
* Apple 2A

##Sony Action camera
charges at up to 500mA
* USB DCP
* Apple 2A
* Apple 1A
* Interestingly Charges at upto 800mA if D+ / D- are open circuit.
Lots of devices simply take the current they want regardless and rely on the usb ports current limit to prevent an over load.
USB power supplies

# Generic chargers I own:
Either conform to:
* USB DCP
* Apple 1A
* Apple 2A

or are:

## Bolse (LC058)
* “Universal” = Apple 1A (not USB DCP)
* “Samsung” = Samsung 2A
* “iPad” = Apple 2A

## Belkin USB ports on 8-way mains extension lead
* 2.4A limit
* USB DCP

## Anker Battery (A1211)
* PowerIQ port limits Sony CSC to 1A
* Seems to be OK with other kit.

# Further thoughts:
Looking at Lygte info there is a Sony changing spec so I’d like to get my hands on a Sony spec charger and see what the camera’s do. I did once see the Anker battery set it’s ports to 3.3V on D+ & D- and the Sony CSC took 1A so I wonder if that’s the current limit Lygte info could not find out? I could not repeat this and I had a relatively high impedance current meter in series at the time which could have limited things.

Redesigning the USB test lead to make sure D- can’t be accidentally shorted to +V and possibly trash the data port of the equipment under test. This could be a rather expensive mistake!

If you’re looking at buying chargers Lygte info has a comprehensive list of reviewed chargers, although this does not cover every possible charger it can give you an idea of what to expect from each manufacturer. I certainly recommend the site.

[/](/)
Keywords: ELECTRONICS TECHNOLOGIESTAGS: ANKER, APPLE, BELKIN, CSC, IPAD, IPHONE, LIGHTNING, SONY, USB, USB DCP