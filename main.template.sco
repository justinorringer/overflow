t 0 60
; Delay and reverb init
;===========================
;instr    strt dur  rvbtime   hfdif
i99       0    -1   2         .2

;this is for the delay line
;==========================
;instr    strt dur  dltime
i98       0    -1   .66

; rough whistling track timings
; instr start   dur amp num pan
i130	0		30	1.0	1   .5
i130	30		10	1.0	2   .5
i130	40		16	1.0	3   .5
i130    52      40  1.0 4   .5
i130    90      12  1.0 5   .5
i130    100     12  1.0 6   .5
i130    112     4   1.0 7   0
i130    120     40  1.0 8   .15
i130    160     16  1.0 9   .35
i130    176     12  1.0 10  .5
i130    188     20  1.0 11  .8
i130    210     16  1.0 12  .8
