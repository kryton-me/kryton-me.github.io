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

### Page Settings for drawings
Applicable and 

Issue Date: ```${CURRENT_DATE}```
Revision: ```${VERSION}```
Title (SCH): ```PCBA-${PROJECT#}-${VERSION}, ${PROJECT-DESCRIPTION}```
Title (PCB): ```PCB-${PROJECT#}-${VERSION}, ${PROJECT-DESCRIPTION}```
Company: ```${COMPANY}```
Comment1: ```${BY}```
Comment2: ```${VERSION-CURRENT}```
Comment3: ```${VERSION-LAST}```
Comment4: ```${VERSION-LAST+1}``` <-- This is the last displayed comment. 
Comment5: ```${VERSION-LAST+2}```
Comment6: ```${VERSION-LAST+3}```
Comment7: ```${VERSION-LAST+4}```
Comment8: ```${VERSION-LAST+5}```
Comment9: ```${VERSION-LAST+6}```

### JobSet settings
