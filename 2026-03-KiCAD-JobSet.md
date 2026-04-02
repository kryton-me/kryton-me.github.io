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

| Name | Description | Notes |
| --- | --- | --- |
| VERSION | Version of PCB deisgn | changes with netlist or coppeer |
| ISSUE | Issue of documentation | Revision of documents |
| PROJECT# | i.e. PCB-001 | |
| PROJECT-DESCRIPTION | Discription of the project | |
| COMPANY | Company / Organisation responsible | Embed in template if possible |
| BY | Creator: MF or Mic F or M Faraday | |
| APPROVER | Approver: see above | |
| VERSION-CURRENT | Description of changes in that version | |
| VERSION-LAST | Description of changes in that version | |
| VERSION-LAST+1 | Description of changes in that version |
| VERSION-LAST+2 | Description of changes in that version |
| VERSION-LAST+3 | Description of changes in that version |
| VERSION-LAST+4 | Description of changes in that version |
| VERSION-LAST+5 | Description of changes in that version |
| VERSION-LAST+6 | Description of changes in that version |


# Usage

A syntax example:
```${PROJECTNAME}``` or ```${CURRENT_DATE}```

I've added Number which is not in the default template to comply with BS8888

### Page Settings
THis can be skipped if the correct page templates are set up.

Applicable and SCH and PCB and Automated the title block of any drawing. 
| Variable on Sheets / Drawing | Applicable too | Applicable Variable | Notes |
| --- | --- | --- | --- |
| Issue Date: | Both | ```${CURRENT_DATE}``` | |
| Revision: | Both | ```${VERSION}``` | |
| Title: | Circuit | ```${PROJECT-DESCRIPTION} Circuit Diagram``` | Extra "A" for assembly |
| Title: | PCB | ```${PROJECT-DESCRIPTION} Printed Circuit Board``` | |
| Number: | Circuit | ```PCBA-${PROJECT#}-${VERSION}``` | Extra "A" for assembly |
| Number: | PCB | ```PCB-${PROJECT#}-${VERSION}``` | |
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
| Output directory: | ```PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}-GERB``` |
| Inclued Layers: | Top, Bottom, Silkscreens, Solder masks,, Past mask, Document Layer, & Multi Layer |
| General Options: | Plot Drawing sheet, Check zone fills before plotting |
| Gerber Options: | Use Protel filename extensions, Use extended X2 format |

Actions:
* Compress / zip the folder containing gerbers in to a file called: PCB-${PROJECT#}-${VERSION}-GERB.zip

#### GERBER no Drawing (JLC)
```+``` --> "PCB: Export Gerbers" --> "OK" 

| Name | Value |
| --- | --- |
| Output directory: | ```PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}-GERB``` |
| Inclued Layers: | Top, Bottom, Silkscreens, Solder masks, Past mask & Multi Layer |
| General Options: | Check zone fills before plotting |
| Gerber Options: | Use Protel filename extensions, Use extended X2 format |

### Drill Data (JLC)
```+``` --> "PCB: Export drill data" --> "OK" 

Note this uses the gerber folder so it's with the GAERBER data in the same zip file. 
| Name | Value |
| --- | --- |
| Output directory: | ```PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}-GERB``` |
| Fromat: | Excellon, PTH and NPTH in single file, use alternative drill mode for oval holes |
| Options: | Orgin: Absolute, Units: Millimeters, Zeros: Decimal format (remomended) |

Actions:
* Compress / zip the folder containing gerbers in to a file called: PCB-${PROJECT#}-${VERSION}-GERB.zip

### IPC-2581
| Name | Value |
| --- | --- |
| Output directory: | PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}-IPC-2581.xml |
| Inclued Layers: | Units:mm, Precision: 6, Version C |
| BOM Columns: | Internal ID: Generate Unigue, Manufacturer P/N: Omit, Manufactrer: N/A, Distribution P/N: Omit, Disibutor: N/A |

### ODB++
| Name | Value |
| --- | --- |
| Output directory: | PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}-ODB |
| Inclued Layers: | Units:mm, Precision: 4, Compression: ZIP |

#### PCB Drawing / Specification
```+``` --> "PCB: Export PDF" --> "OK"

| Name | Value |
| --- | --- |
| Output directory: | ```PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}-SPEC.pdf``` |
| Inclued Layers: | Document Layer |
| Plot on All Layers: | Top, Bottom, Silkscreens, User Comments & Multi-Layer |
| General Options: | Plot Drawing sheet, Check zone fills before plotting |
| PDF Options: | All |

Actions: 
* remane the PDF files to the name of the directory it's in
* move it up a level
* Delete directory named "SPEC.pdf"

#### PCB Pick and Place file
WARNING: Make sure all copper compnents & PCB shapes / specs are marked "Do Not Populate" 
Components with "180.000000" appear to have the wrong polarity. to many digits? 
```+``` --> "PCB: Export Position Data" --> "OK"

| Name | Value |
| --- | --- |
| Output file: | ```PCB-${PROJECT#}-${VERSION}/PCB-${PROJECT#}-${VERSION}-PAP.csv``` |
| Format: | CSV |
| Units: | Millimeters |
| Tick boxes: | Exclued all footprints with the Do Not Populate flag set, Inclued Board edge layer, Generate single file with both front and back positions |

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
