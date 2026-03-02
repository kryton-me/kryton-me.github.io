KiCAD-JobSet
---

# Introduction
Some basic settings to get set up with Job Set

# Variables
Set up the follwoing variables:

### Project Defaults

| Name | Description |
| --- | --- |
| PROJECTNAME | This is the file name of the project so may not that usefull. |
| CURRENT_DATE | todays date |

### Variables I've defined
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

#### GERBER

| Name | Value |
| Output directory: | Output/PCB-${PROJECT#}-${VERSION}-GERB |
| Inclued Layers: | Top, Bottom, Silkscreens, Solder masks, Document Layer, & Mechanical Layer |
| General Options: | Plot Drawing sheet, Check zone fills before plotting |
| Gerber Options: | Use Protel filename extensions, Use extended X2 format |

#### PCB Drawing / Specification
| Name | Value |
| Output directory: | Output/PCB-${PROJECT#}-${VERSION}-SPEC |
| Inclued Layers: | Top, Bottom, Silkscreens, Document Layer, User Comments & Mechanical Layer |
| General Options: | Plot Drawing sheet, Check zone fills before plotting |
| PDF Options: | All |
