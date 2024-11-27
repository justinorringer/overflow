; I want to use a counter to determine the rythmn of the piece
; have the counter change from 4 bit to 3 bit to 2 bit
; on overflow, have a sound play

sr = 44100
kr = 4410
ksmps = 10
nchnls = 2
0dbfs = 1

gicount init 0
gibit   init 3

gievent_count init 0

instr 1
    prints "instr 1"
    event "i", 2, 0, 0, p5
endin
instr 2
schedule:
    idelay = p4
    print idelay
    prints "schedule"
    timout 0, idelay, clock
    goto clock

clock:
    timout 0, 1, count
    reinit clock

count:
    gicount = gicount + 1
    if gicount == 2^gibit then
        gicount = 0
        gibit = gibit - 1
        if gibit == 0 then
            gibit = 4
        endif
    endif

    print gicount, gibit
    if gicount == gievent_count then
        event "i", 3, 0, 0, 0
    endif
    rireturn
endin

instr 3
overflow:
        prints "overflow"
    kgate linen 	.5, 0, .5, .1
    a1  oscili kgate, 220, 1
        outs a1, a1
endin


gkReverb init 0

		instr	100
idur	=		p3
iamp	=		p4
ifrq	=		p5
iatk	=		p6
irel	=		p7
icut1	=		p8
icut2	=		p9
kenv	linen	iamp, iatk, idur, irel
kcut	expon	icut1, idur, icut2 ; exponential envelope where icut1 is the bottom and icut2 is the top
anoise	rand	ifrq	
afilt	tone	anoise, kcut
aout    =  	    afilt*kenv

gkReverb =      gkReverb + aout
		outs  	aout, aout
		dispfft	afilt, idur, 4096
		endin

		instr	101
idur	=		p3
iamp	=		p4
ipitch	=		p5
iatk	=		p6
irel	=		p7
icut1	=		p8
icut2	=		p9
kpitch  =       table(ipitch, 1)
kenv	linen	iamp, iatk, idur, irel
kcut	expon	icut1, idur, icut2
aosc    oscili  iamp, kpitch
afilt	tone	aosc, kcut
aout    =  	    afilt*kenv

gkReverb =      gkReverb + aout
		outs  	aout, aout
		dispfft	afilt, idur, 4096
		endin

instr Reverb
    aInput = gkReverb
    gkReverb = 0  ; Reset the global reverb send

    aReverbL, aReverbR reverbsc aInput, aInput, 0.85, sr/ksmps
    outs aReverbL, aReverbR
endin

schedule("Reverb", 0, -1)
