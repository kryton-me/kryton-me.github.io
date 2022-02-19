eTrex sync
===
Syncing an old Garmin eTrex with modern fitness tracker apps. Yes I coild buy a modern device but where is the fun in that.

# Needed equipment
* Garmin eTrex assuming pre Bluetooth model
  * Tested on an eTrex 30
* Apple iPad / iPhone
* iPhone / some iPads: Lightning port to USB-A port adapter
* some iPads: USB-C to USB-A
* USB-A to USB-B Mini lead.
* Komoot app installed

# set up eTrex (do this once)
* On your eTrex, press back until you get the main menu
* Confirm the following settings 
* "Setup" -> "System" -> "USB Mode" -> Select "Garmin"
  * This enables access to the files on the eTrex
* "Setup" -> "Tracks" -> "Auto Archive" -> Select "Daily"
  * This is optional
  * This splits the track up each day which is handy for finding a tour by date
  * If you do more than one tour a day or multi day trips probably best to manage this manually.

# Komoot Tour to eTrex
Being able to get a planned tour on your eTrex ready for your ride
* Plug USB lead between iPad/iPhone & eTrex
* "USB cable detected, Would you like to go to Mass Storage?" select "Yes"
* Open Komoot app
* Profile -> Tours -> Planned
* Tap on the tour you want 
* Tap on "…" icon in top right corner
* "Export GPX File"
* "Save to Files"
* Tap the top left "< Name" option till it says "Cancel"
* Scroll to the bottom of the list where hopefully you will see "GARMIN" listed
* tap on "GARMIN" -> "Garmin" -> "GPX"
* tap on "Save" in the top right corner
* <wait a few seconds to be safe>
* unplug the USB lead at both ends
* Power on your eTrex if needed.
* Press back until you get to the main menu
* Select "Track Manager"
* Select the name of the Tour.
* "View Map" -> "Go" (assuming your near the start)
* alternatively select show on map to leave it on your map.

# eTrex log to Komoot
Having done your planned tour now you need to see how you did.
* Plug in USB lead between iPad/iPhone & eTrex
* "USB cable detected, Would you like to go to Mass Storage?" select "Yes"
* Open Komoot app
* Profile -> Tours -> tap "+"
* Tap "Import a File (GPX, FIT or TCX)"
* Tap the top left "< Name" option till it says "Cancel"
* Tap on "GARMIN" -> "Garmin" -> "GPX"
* If the ride was today select the "Current" folder and the "Current" file
* If the ride was on a previous day tap the "Archive" folder and select the file of the rides date. 
  * Its in YYYY-MM-DD HH.MM.SS Day format
  * The time stamp appears to be at the start of the file in local (not UTC / Zulu) time.
* "Import as completed Tour"
* Change the date to when the ride took place
  * Defaults to today even though the gpx format includes the date.
* Change the sport type.
* Tap "Continue"

[/](/)
Keywords: Garmin, komoot, eTrex