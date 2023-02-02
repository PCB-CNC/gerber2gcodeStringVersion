; Produced by drl2gcode.py originally by Franco Lanza

; select absolute coordinate system
G90
; metric
G21
; G61 exact path mode was requested but not implemented
; start spindle
M3 S24000.0


; T01 Diameter: 0.00mm

; stop spindle
M5
; go to safe height
G1 Z25 F30000
; program ends
M2
