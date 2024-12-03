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


;====================
;
; GLOBAL DELAY
;
;====================
        instr 98            ; THIS DELAY IS IN PARALLEL CONFIG
                                             
a1      delay     gasig,p4                 ; DELAY=1.25
a2      delay     gasig,p4*2               ; DELAY=2.50
        outs      a1,a2
gasig   =         0
        endin


;===================
; GLOBAL REVERB
;===================
        instr 99
a1      reverb2   garvbsig, p4, p5
        outs      a1,a1
garvbsig  =       0
        endin

;=====================================
; Main synth sound
;=====================================
	instr	101
idur	=		p3
iamp	=		p4
ipitch	=		p5
iatk	=		p6
irel	=		p7
icut1	=		p8
icut2	=		p9
kenv    linseg 0, p3*.2, 1, p3*.55, .5, p3*.25, 0
kcut	expon	icut1, idur, icut2
aosc    oscili  iamp, ipitch
afilt	tone	aosc, kcut
aout    =  	    afilt*kenv
		outs  	aout, aout
		dispfft	afilt, idur, 4096

garvbsig  =     garvbsig+(aout*.15)
	endin

;=====================================
; Waves
; - a lot of help here from cSound book example
;=====================================
        instr	110
idur	=		p3
iamp	=		p4
ifrq	=		p5
iatk	=		p6
irel	=		p7
icut1	=		p8
icut2	=		p9
ipan    =               p10
;               xamp, irise, idec, iatdec
kamp    linenr  iamp, idur*.2, idur*.75, 0.2
kenv	linen	kamp, iatk, idur, irel
kcut	expon	icut1, idur, icut2 ; exponential envelope where icut1 is the bottom and icut2 is the top
kfrq    randi   ifrq, 0.5
anoise	rand    kfrq

afilt	tone	anoise, kcut
aout    =  	afilt*kenv

	outs  	aout*ipan, aout*(1-ipan)
garvbsig =      garvbsig+(aout*.05)

	dispfft	afilt, idur, 4096
	endin


;------------------------
; 120 - 150 are for samples
; ------------------------
        instr 130
iamp    =   p4
iindex  =   p5
Sname   sprintf "sounds/whistling-%02d.wav", iindex
a1, a2  diskin Sname
        outs a1*iamp, a2*iamp
garvbsig =      garvbsig+(a1*.05)
        endin

; instr start   dur    amp     num
; i140	100	ignore 1	2
        instr 140
iamp    =   p4
iindex  =   p5
kpan    =   .25
Sname   sprintf "sounds/bucket-%02d.wav", iindex
a1, a2  diskin Sname
        outs a1*iamp*(kpan), a2*iamp*(1-kpan)
garvbsig =      garvbsig+(a1*.05)
        endin
