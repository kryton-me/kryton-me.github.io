KiCAD-JobSet
---

# Introduction
Some basic settings to get set up with Job Set, Please note this uses Unix / Linux / Mac file paths Windows users need to adjust accordinly

# Variables
* Open top level schimatic --> File --> Schematic Setup...
* Project --> Text Variables

Set up the follwoing variables:

### Project Defaults

| Name | Description |
| --- | --- |
| PROJECTNAME | This is the file name of the project so may not that usefull. |
| CURRENT_DATE | todays date |

### Variables to defined
THis is just my suggestion feel free to set it up your own way.

| Name | Description |
| --- | --- |
| VERSION | Issue of files being issued
| PROJECT# | i.e. PCB-001 |
| PROJECT-DESCRIPTION | Discription of the project |
| COMPANY | Company / Organisation responsible |
| BY | Initals of designer and potentially reviewer |
| VERSION-CURRENT | Description of changes in that version |
| VERSION-LAST | Description of changes in that version |
| VERSION-LAST+1 | Description of changes in that version |
| VERSION-LAST+2 | Description of changes in that version |
| VERSION-LAST+3 | Description of changes in that version |
| VERSION-LAST+4 | Description of changes in that version |
| VERSION-LAST+5 | Description of changes in that version |
| VERSION-LAST+6 | Description of changes in that version |


# Usage

A syntax example:
```${PROJECTNAME}``` or ```${CURRENT_DATE}```

### Page Settings
Applicable and SCH and PCB and Automated the title block of any drawing. 
| Variable on Sheets / Drawing | Applicable too | Applicable Variable | Notes |
| --- | --- | --- | --- |
| Issue Date: | Both | ```${CURRENT_DATE}``` | |
| Revision: | Both | ```${VERSION}``` | |
| Title: | Circuit | ```PCBA-${PROJECT#}-${VERSION}, ${PROJECT-DESCRIPTION}``` | Extra "A" for assembly |
| Title: | PCB | ```PCB-${PROJECT#}-${VERSION}, ${PROJECT-DESCRIPTION}``` | |
| Company: | Both | ```${COMPANY}``` | |
| Comment1: | Both | ```${BY}``` | |
| Comment2: | Both | ```${VERSION-CURRENT}``` | |
| Comment3: | Both | ```${VERSION-LAST}``` | |
| Comment4: | Both | ```${VERSION-LAST+1}``` | This is the last displayed comment. |
| Comment5: | Both | ```${VERSION-LAST+2}``` | |
| Comment6: | Both | ```${VERSION-LAST+3}``` | |
| Comment7: | Both | ```${VERSION-LAST+4}``` | |
| Comment8: | Both | ```${VERSION-LAST+5}``` | |
| Comment9: | Both | ```${VERSION-LAST+6}``` | |

### JobSet settings

#### Set up a file
Project tool -> File -> New Jobset File... -> Enter file name -> save

#### Destinations
Just one Desitination for Both PCB & PCBA

| Name | Value | notes |
| --- | --- | --- |
| Description: | ```Output``` | |
| Destination path: | ```../Output``` | Exact syntax with dots is impotant (Not tested on Windows) |
| Inclued jobs: | tick them all | Go back to check this once they are set up |

#### GERBER with drawing
```+``` --> "PCB: Export Gerbers" --> "OK" 

| Name | Value |
| --- | --- |
| Output directory: | ```PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}-GERB``` |
| Inclued Layers: | Top, Bottom, Silkscreens, Solder masks, Document Layer, & Mechanical Layer |
| General Options: | Plot Drawing sheet, Check zone fills before plotting |
| Gerber Options: | Use Protel filename extensions, Use extended X2 format |

Actions:
* Compress / zip the folder containing gerbers in to a file called: PCB-${PROJECT#}-${VERSION}-GERB.zip

#### GERBER no Drawing (JLC)
```+``` --> "PCB: Export Gerbers" --> "OK" 

| Name | Value |
| --- | --- |
| Output directory: | ```PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}-GERB``` |
| Inclued Layers: | Top, Bottom, Silkscreens, Solder masks,& Mechanical Layer |
| General Options: | Check zone fills before plotting |
| Gerber Options: | Use Protel filename extensions, Use extended X2 format |

Actions:
* Compress / zip the folder containing gerbers in to a file called: PCB-${PROJECT#}-${VERSION}-GERB.zip


#### PCB Drawing / Specification
```+``` --> "PCB: Export PDF" --> "OK"

| Name | Value |
| --- | --- |
| Output directory: | ```PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}-SPEC.pdf``` |
| Inclued Layers: | Document Layer |
| Plot on All Layers: | Top, Bottom, Silkscreens, User Comments & Mechanical Layer |
| General Options: | Plot Drawing sheet, Check zone fills before plotting |
| PDF Options: | All |

Actions: 
* remane the PDF files to the name of the directory it's in
* move it up a level
* Delete directory named "SPEC.pdf"

#### PCB Pick and Place file
```+``` --> "PCB: Export Position Data" --> "OK"

| Name | Value |
| --- | --- |
| Output file: | ```PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}-PAP.csv``` |
| Format: | CSV |
| Units: | Millimeters |
| Inclued: | Board edge layer, use drill/place file origin, Generate single file with both front and back positions |

Actions
This may need editing to be compatible with a manufacter [such as JLC](2026-02-KiCADToJLC]

#### PCB: 3D Model
```+``` --> "PCB: Export 3D Model" --> "OK"
  
| Name | Value |
| --- | --- |
| Format: | STEP |
| File: | ```PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}-3D.step``` |
| Board Options: | Export board body, export silk screen, Export components (All) |
| Coordinates | Board center origin |
| Other Options | Substitute similarly named models, Don't Write P-curves to STEP file |

#### Schemtic (SCH) PDF
```+``` --> "Schematic: Export PDF" --> "OK"

| Name | Value |
| --- | --- |
| Output directory: | ```PCB-${PROJECT#}-${VERSION}/PCBA-${PROJECT#}-${VERSION}-SCH.pdf``` |
| Options | Page Size Schematic size, Plot Drawing sheet, Output mode color, color theme KiCAD classic |
| PDF Options | Generate property popups, Generate clickable links for hierachical elements |

Actions
* remane the PDF files to the name of the directory it's in
* move it up a level
* Delete directory named "SPEC.pdf"

#### Bill of Materials (BOM)
```+``` --> "Schematic: Generate Bill of Materials" --> "OK"

| Name | Value |
| --- | --- |
| Output directory: | ```PCB-${PROJECT#}-${VERSION}/PCBA-${PROJECT#}-${VERSION}-BOM.csv``` |
| Edit | Select View Preset |
| Export | Format preset: csv |

Actions:
* None

# Process

* Open schimatic editor
  * File -> Schematic Setup -> Project -> Text Variables
* Open Project
  * Open ".kicad_jobseet"
* Generate All Destinations
