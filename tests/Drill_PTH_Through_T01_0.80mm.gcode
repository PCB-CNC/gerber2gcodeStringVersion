; Produced by drl2gcode.py originally by Franco Lanza

; select absolute coordinate system
G90
; metric
G21
; G61 exact path mode was requested but not implemented
; start spindle
M3 S24000.0


; T01 Diameter: 0.80mm
G1 F300 Z25
G1 F3000 X066986 Y056826
G1 F300 Z0.2
G1 F100 Z-3.0
G1 F300 Z25
G1 F3000 X064446 Y056826
G1 F300 Z0.2
G1 F100 Z-3.0
G1 F300 Z25
G1 F3000 X066986 Y047767
G1 F300 Z0.2
G1 F100 Z-3.0
G1 F300 Z25
G1 F3000 X064446 Y047767
G1 F300 Z0.2
G1 F100 Z-3.0

; stop spindle
M5
; go to safe height
G1 Z25 F30000
; program ends
M2
