KiCAD tips
---

# Project 

## Git
If you using Git, turn off back ups
* Project -> Preferences -> Prefernces -> Common -> Project Backup -> Turn off "Automatically backup projects
* Project -> Preferences -> Prefernces -> Version Control -> Turn on "Enable Git Tracking" if not alrady on.


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
  
