Electronics Safety Standards
===
A brief list of standards found on Electronics products I’ve come across. I’ve not mentioned versions as they change regularly. Be warned Standard numbers also change and I’m not planning to maintain this page. The BSI Shop is a handy place to check CE standards for the current version but is not the definitive list.

# Approvals & Schemes
There are two schemes I’ve come across CE and US Federal.

## CE
With CE you you typically get 4 levels:

Directive or Regulation (i.e. Medical Device Regulations)
Primary Standard (i.e. 60601-1)
tests requirements (i.e. Shall achieve EMC class B radiated immunity )
test method (i.e. EMC radiated immunity chamber set up)

## US
With the Federal US approach you tend to get standards written or adopted by different US Federal bodies which cover different aspects of your design.

# Glossary

## Europe / CE / Most of world
* BS = British Standard
by British Standards Institute (BSI)
* BS EN = British Standard of EN 🇬🇧
* CB Scheme 🌍
Part of IEC
Scheme to accredit testing between countries
* CISPR = Comité International Spécial des Perturbations Radioélectriques 🌍
* International Special Committee on Radio Interference
EN550xx EMC standards
* DIN = German Standard 🇩🇪
by Deutsches Institut für Normung
or German Institute for Standardization
* DIN EN = German Standard of EN 🇩🇪
* E Mark 🇺🇳
by United Nations
* EN = European Normalised 🇪🇺
used for CE mark
* ETSI = European Telecommunications Standards Institute 🇪🇺
* IEC = International Electrotechnical Commission 🌍
Normally Numbered 60000 to 79999
* ISO = International Organization for Standardization 🌍

## North America
* ANSI = American National Standards Institute 🇺🇸
* CAN = Canadian standard
by SCC = Standards Council of Canada 🇨🇦
  * CAN/CSA standards
  * CAN/ULC standards
* FCC = Federal Communications Commission 🇺🇸
* FDA = Food & Drug Administration 🇺🇸
Search standards recognises for medical equipment
* IEEE = Institute of Electrical and Electronics Engineers 🇺🇸
* UL 🇺🇸 Formerly “Underwriters Laboratories”

# Documentation & General Quality standards
* ISO9001 – Quality management systems. Requirements
Further Medical specific Quality standards in the Medical equipment section
* ISO/IEC 26300 – Open Document Format for Office Applications (OpenDocument).
  * OpenOffice / LibreOffice file formats
* ISO/IEC 29500 – Information technology. Document description and processing languages. Office Open XML File Formats.
  * Microsoft office file formats
* ISO 8601-1 – Date and time. Representations for information interchange. Basic rules
How to write the date
* BS8888 – Technical product documentation and specification
Covers a lots of standards for drawings and much more.
* ETSI EN 303 645 CYBER; Cyber Security for Consumer Internet of Things: Baseline Requirements
Cyber Security standards for internet of things

# Medical Equipment
* Medical Device Regulation 2017/745 🇪🇺
* In Vitro Diagnostic Medical Devices 2017/746 🇪🇺
  * IEC / EN60601-1 Medical electrical equipment. General requirements for basic safety and essential performance
Tricky to find on BSI shop due to a quirk of their search engine.
  * IEC / EN60601-1-2 Medical electrical equipment. General requirements for basic safety and essential performance. Collateral Standard. Electromagnetic disturbances. Requirements and tests
  * CISPR 11 / EN55011 Industrial, scientific and medical equipment. Radio-frequency disturbance characteristics. Limits and methods of measurement
  * ISO 13485 Medical devices — Quality management systems — Requirements for regulatory purposes 🌍
If your PCB is going in a Medical product your Manufacture will need this to make your life easy.
* FDA Title 22 CFR part 11 – ELECTRONIC RECORDS; ELECTRONIC SIGNATURES 🇺🇸
Not only manufacturing but also design documentation.

# Automotive
* E mark 🇺🇳 (World but not US)
Type approval for Vehicles
  * E11 UK
  * E1 Germany
  * E43 Japan
* CISPR 12 / EN55012 Vehicles, boats and internal combustion engines. Radio disturbance characteristics. Limits and methods of measurement for the protection of off-board receivers

#Household
* IEC/EN60335 Household and similar electrical appliances
  * CISPR 14 part 1 / EN55014-1 Electromagnetic compatibility. Requirements for household appliances, electric tools and similar apparatus. Emission
  * CISPR 14 part 2 / EN55014-2 Electromagnetic compatibility. Requirements for household appliances, electric tools and similar apparatus. Immunity.

# Multimedia Equipment
* IEC/EN62368-1 Audio/video, information and communication technology equipment. Safety requirements
* UL62368-1 Audio/video, information and communication technology equipment – Part 1: Safety requirements
* CAN/CSA-C22.2 No. 62368-1-14 Audio/video, information and communication technologyequipment — Part 1: Safety requirements
* EN55024 Superseded by EN55035
* CISPR 32 / EN55032 Electromagnetic compatibility of multimedia equipment. Emission Requirements
* CISPR 35 / EN55035 Electromagnetic compatibility of multimedia equipment. Immunity requirements
* IEC/EN 60130-9 Connectors for frequencies below 3 MHz. Circular connectors for radio and associated sound equipment
Formally DIN 41524 AKA “DIN connector” which is now an IEC / European standard.

#Radio Equipment
* Radio Equipment Directive 2014/53/EU
If its got a radio in (not counting noise PSUs with unterminated tracks) it’s cover by RED
Yes even your Wi-Fi connected Dishwasher.
Power Supplies specifically
  * IEC/EN61558-1 Safety of transformers, reactors, power supply units and combinations thereof. General requirements and tests
  * IEC/EN61558-2-16 Safety of transformers, reactors, power supply units and similar products for supply voltages up to 1 100 V. Particular requirements and tests for switch mode power supply units and transformers for switch mode power supply units
  * IEC/EN61204-3 Low-voltage switch mode power supplies. Electromagnetic compatibility (EMC)

#Flamability testting
* UL94 Standard for Tests for Flammability of Plastic Materials for Parts in Devices and Appliances
See also:
  * ISO 9772 Cellular plastics — Determination of horizontal burning characteristics of small specimens subjected to a small flame
  * ISO 9773 Plastics — Determination of burning behaviour of thin flexible vertical specimens in contact with a small-flame ignition source

# EMC testing

## EMC CE 🇪🇺
* IEC/EN61000-4-2 Electromagnetic compatibility (EMC). Testing and measurement techniques. Electrostatic discharge immunity test
Playing with a Gun!
* IEC/EN61000-4-3 Electromagnetic compatibility (EMC). Testing and measurement techniques. Radiated, radio-frequency, electromagnetic field immunity test
Cook it in a chamber!
* IEC/EN61000-4-4 Electromagnetic compatibility (EMC). Testing and measurement techniques. Electrical fast transient/burst immunity test
More chamber cooking
* IEC/EN61000-4-5 Amendment 1 – Electromagnetic compatibility (EMC). – Part 4-5: Testing and measurement techniques – Surge immunity test
Cook the PSU
* IEC/EN61000-4-6 Electromagnetic compatibility (EMC). Testing and measurement techniques. Immunity to conducted disturbances, induced by radio-frequency fields
Cook the Cables
* IEC/EN61000-4-8 Electromagnetic compatibility (EMC). Testing and measurement techniques. Power frequency magnetic field immunity test
Cook Lab staff
* IEC/EN61000-4-11 Electromagnetic compatibility (EMC). Testing and measurement techniques. Voltage dips, short interruptions and voltage variations immunity tests for equipment with input current up to 16 A per phase
* IEC/EN61000-3-3 Tracked Changes. Electromagnetic compatibility (EMC). Limits. Limitation of voltage changes, voltage fluctuations and flicker in public low-voltage supply systems, for equipment with rated current <= 16 A per phase and not subject to conditional connection

## EMC USA 🇺🇸
* FCC Title 47 CFR Part 15 Subpart B – Unintentional Radiators
* IEEE/ANSI C63.4, conducted emission testing, conducting ground plane, digital equipment, electric field measurement, line impedance stabilization network, low-voltage electrical equipment, low-voltage electronic equipment, magnetic field measurement, normalized site attenuation, radiated emission testing, radio-noise emissions, radio-noise power, site attenuation, unintentional radiators

TAGS: CONFORMITYTAGS: BS, CE, CISPR, DIN, EN, EU, FDA, STANDARDS