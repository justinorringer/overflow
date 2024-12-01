; I want to use a counter to determine the rythmn of the piece
; have the counter change from 4 bit to 3 bit to 2 bit
; on overflow, have a sound play

sr = 44100
kr = 4410
ksmps = 10
nchnls = 2
0dbfs = 1

		instr	101
idur	=		p3
iamp	=		p4
ipitch	=		p5
iatk	=		p6
irel	=		p7
icut1	=		p8
icut2	=		p9
kenv	linen	iamp, iatk, idur, irel
kcut	expon	icut1, idur, icut2
aosc    oscili  iamp, ipitch
afilt	tone	aosc, kcut
aout    =  	    afilt*kenv
		outs  	aout, aout
		dispfft	afilt, idur, 4096
		endin
