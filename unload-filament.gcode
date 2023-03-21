G92 E0 ; Reset Extruder position
M302 P1      ; disable cold extrusion checking
G1 E-460 F1500; retract 46cm of filament < THIS NEEDS TO BE MEASURED IN FOR YOUR PRINTER FIRST !
G92 E0 ; Reset Extruder position
M302 P0      ; enable cold extrusion checking
