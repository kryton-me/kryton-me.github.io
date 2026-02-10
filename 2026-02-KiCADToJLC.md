KiCAD to JLC 
---
# Intro
* KiCAD version: 9

# PCB design files
Open the PCB Editor

* File -> Fabricaltion Outputs -> Gerbers(.gbr)...
* Select the  output location ```../Output/<PCB name>-<PCB version>-GERB```
* Should be OK by default just ensure
 * "Use extended X2 format (recomended) is enables
 * "Document Layer" in ticked on the "Included Layers" coloumn
* click "Generate Drill Files..."
* click "Plot"
* compress ```../Output/<PCB name>-<PCB version>-GERB``` in to a ```.zip``` file
 

# BOM

In the "Schematic Editor" -> "Tools" -> "Edit Symbol Fields"

Set the "Coloumn Label" to match the following: 

| From | KiCAD Name (Field) | JLC | 
| --- | --- | --- |
| KiCAD | Reference | Designator | 
| KiCAD | Value | Comment |
| KiCAD | Footprint | Footprint |
| Custom | Supplier Part Number | LCSC |
| Custom | Package | JLC |
| Custom | Manufacturer | Manufacturer |
| Custom | Manufacturer Product Number | MFR Part # |  

# Component locations to 

Open the PCB Editor

* File -> Fabricaltion Outputs -> Component placment 
* Select the  output location ```../Output/```
* "Generate Position File"
* Open "<PCB Name>-all-pos.csv" in a text editor
* Change the top line as follows;
  * ```Ref``` to ```Designator```
  * ```PosX``` to ```Mid X```
  * ```PosY``` to ```Mid Y```
  * ```Rot``` to ```Rotation``` Not entrily sure if "-90" needs to be change to "270"?
  * ```Side``` to ```Layer``` should "bottom" to "Bottom" is not an issue.

# Links
* [JLC automated software](https://jlcpcb.com/help/article/How-to-Generate-BOM-and-Centroid-Files-from-KiCad-in-Linux)
