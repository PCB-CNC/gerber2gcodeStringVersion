; Produced by drl2gcode.py originally by Franco Lanza

; select absolute coordinate system
G90
; metric
G21
; G61 exact path mode was requested but not implemented
; start spindle
M3 S24000.0


; T05 Diameter: 1.00mm
G1 F300 Z25
G1 F3000 X073533 Y006096
G1 F300 Z0.2
G1 F100 Z-3.0
G1 F300 Z25
G1 F3000 X058193 Y007677
G1 F300 Z0.2
G1 F100 Z-3.0

; stop spindle
M5
; go to safe height
G1 Z25 F30000
; program ends
M2
