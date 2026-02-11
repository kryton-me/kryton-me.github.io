KiCAD tips
---

# Project 

### Git
If you using Git, turn off back ups
* Project -> Preferences -> Prefernces -> Common -> Project Backup -> Turn off "Automatically backup projects
* Project -> Preferences -> Prefernces -> Version Control -> Turn on "Enable Git Tracking" if not alrady on.

### Drawing sheets

* Comment1: By: kryton, review: J Smtih
* Comment2: current version, Changes
* Comment3: previus version, changes
* Comment4: previus version, changes

# SCH

## Net classes Patterns
* ```/Da*``` for "Data" as net local to sheet
* ```GN*``` for "GND" as design wide net no local to sheet

# PCB

## Net classes
Set them up before tracksing

# Standard parts
Set up the following parts in a Global libary:

### PCB Spec
Table listing the PCB specification on "User.Drawings"
Inclued things like the following:
#### General requirments
* "Glass Transition Tempreture" 
  * i.e. >150C
* "Panelisation"
  * "See drawing..."
  * "PCB Manufecturer Discression"
  * "Assembly house Discression"
* Pad Surface Finish
* "Dimension Tolerance (CNC routing)"
* "Board outline tolerance"
* "Thickness Tolernce" 
* "Hole tolerance (Plated)"
* Hole Size Non-Plated"
* "Via's Construction"
  * Tented
  * Filled
#### Regulatory requirments
* Flamability Compliance (UL94 / IEC 60695-11-X0)
* Enviromental Compliance
  * RoSH 2 inc 2015/863 Amandments
#### Quality / Traceability requirments
* Markings applied by PCB Manufacture
  * UL File Number
  * Date
  * Batch Code
  * Manufacture Name / Registered Logo
* Acceptability (IPC A-600)
  * Class 1 2 or 3
* PCB test
#### PCB Supplier, pre-production analysis
* Silkscreen / Solder mask errors
  * Reffer to customer
* Copper errors
  * Reffer to customer

# Outputs
[There are much better Automated ways of doing this](https://docs.kicad.org/9.0/en/kicad/kicad.html#jobsets) This is a discription of how to get a design out assuming automation has not been set up.

### SCH
Print Circuit diagram

Location:
```../Output/${PROJECTNAME}-1-SCH.csv```

### BOM

Location
```../Output/${PROJECTNAME}-1-BOM.csv```

Headings
```"Reference","Qty","Value","Manufacturer","Manufacturer Part Number"```

### PCB Drawing
Print PCB

```../Output/${PROJECTNAME}-1-PCB.csv```

### GERBER
Yuck (Argh not a good data format)

* PCB Design -> File -> Fabrication Outputs -> Gerbers(.gbr)...
* Output: ```../Output/${PROJECTNAME}-1-GERB```
* Check layers
* Confirm "Use extended X2 format (recomended)" is ticked
* "Gnerate DRill Files..." --> "Generate"
* "Close"
* "Plot"
* Regenrate zone fills if asked

Go to the "${PROJECTNAME}-1-GERB" folder and compress it as a zip. 

### Pick and Place file
This is ony needed if using Gerber not ODB++ or IPC files formats

* PCB design -> File -> Fabrication Outputs -> Conponent Placement(.pos,.gbr)... 
* Output: ```../Output/```
* Generate Position File

Find the ${PROJECTNAME}-all-pos.csv and rename with "version-PAP". 
