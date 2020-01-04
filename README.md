# Duet-Maestro-12864-Menu-Files
A set of files to allow a Duet Maestro to present a basic menu system on a 12864 reprap graphic display. 
Designed with a single extruder cartesian printer in mind.

Installation:

Download the complete set of files, unzip them and, using the DWC Display page, upload them to your /menu folder.

Beware, any existing files with the same name will be overwritten, so best backup first.

To adjust the filament loading and unloading procedure for your particular setup, edit the "load" and "unload" files, they are normal GCODE macros.

To change materials/temperatures shown under "HEAT", edit the "heat" file

The "LEVEL BED" button calls G32, so you should have something in your bed.g
