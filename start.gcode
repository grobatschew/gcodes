M140 S[first_layer_bed_temperature] ; set bed temp
M104 S{first_layer_temperature[0] } ; set extruder temp
G28 ; home all axes
G29 ; ABL
G1 X0 Y0 Z2 F5000;
G1 X0 Y1 Z0 F500;
G1 X0 Y20 Z5 F3000 ; lift
M117 Purge extruder
G92 E0 ; Reset Extruder
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S[first_layer_temperature] ; wait for extruder temp
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0; move extruder to the left
G1 X0 Z0.4 F5000.0 ; Move to start position
G1 X0 Y20 Z5 F5000.0 ; Move to start position
G1 X0 Y20 Z0.24 F5000.0 ; Move to start position
G1 X0 Y200.0 Z0.20 F1500.0 E15 ; Draw the first line
G1 X2 Y200.0 Z0.20 F5000.0 ; Move to side a little
G1 X2 Y30 Z0.16 F1500.0 E30 ; Draw the second line
G1 X2 Y30 Z0.5 F3300.0  ; lift
G1 X4 Y35 Z0.5 F3300.0 ; move over
G1 X4 Y35 Z0.16 F3300.0 ; drop down
G92 E0 ; Reset Extruder
G1 F1800 E-2.5 ; Retract filament 2.5 mm to prevent oozing
G92 E0 ; Reset Extruder
G1 X4.0 Y35 Z0.28 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed during travel
