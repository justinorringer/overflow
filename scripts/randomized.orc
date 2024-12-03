sr = 44100
kr = 4410
ksmps = 10
nchnls = 2
0dbfs = 1

;=====================================
; reverb initialization
;=====================================

garvbsig  init      0


;=====================================
; delay initialization
;=====================================

gasig     init      0


;===================
; GLOBAL REVERB
;===================

          instr 99

a1        reverb2   garvbsig, p4, p5
          outs      a1,a1

garvbsig  =         0

          endin




;====================
;
; GLOBAL DELAY
;
;====================

          instr 98            ; THIS DELAY IS IN PARALLEL CONFIG
                                             
a1        delay     gasig,p4                 ; DELAY=1.25
a2        delay     gasig,p4*2               ; DELAY=2.50
          outs      a1,a2

gasig     =         0

          endin

		instr	101
idur	=		p3
iamp	=		p4
ipitch	=		p5
iatk	=		p6
irel	=		p7
icut1	=		p8
icut2	=		p9
; kenv	linen	iamp, iatk, idur, irel
kenv linseg 0, p3*.2, 1, p3*.55, .5, p3*.25, 0
kcut	expon	icut1, idur, icut2
aosc    oscili  iamp, ipitch
afilt	tone	aosc, kcut
aout    =  	    afilt*kenv
		outs  	aout, aout
		dispfft	afilt, idur, 4096

garvbsig  =     garvbsig+(aout*.2)
		endin
