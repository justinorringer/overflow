t 0 60
; Delay and reverb init
;=====================================
;instr    strt dur  rvbtime   hfdif
i99       0    -1   2         .2
;instr    strt dur  dltime
i98       0    -1   .66

;=====================================
; rough whistling track timings
; instr start   dur amp num pan
i130	0		30	1.0	1   .5
i130	30		10	1.0	2   .5
i130	40		16	1.0	3   .5
i130    52      40  0.9 4   .5
i130    90      12  1.0 5   .5
i130    100     12  1.0 6   .5
i130    112     4   1.0 7   0
i130    120     40  1.0 8   .15
i130    160     16  1.0 9   .35
i130    176     12  1.0 10  .5
i130    188     20  1.0 11  .8
i130    210     16  1.0 12  .8

;=====================================
; gestures
; i101	11.25		0.2	0.34453372827598366	19.445436482630058	0.01	0.24	100	100
i101    100          1   0.2                 349                 0.01 0.75 100 100    ;f
i101    101         .5   0.2                 293.66              0.01 0.95 100 100    ;d
i101    101.1       .1   0.2                 115               0.01 0.1 100 100    ;bf (lower)
i101    101.5        1   0.2                 349.23              0.01 0.95 100 100    ;f
i101    102.5       .5   0.2                 293.66              0.01 0.95 100 100    ;d
i101    103          1   0.2                 349.24              0.01 0.75 100 100    ;f
i101    104         .3   0.2                 232.9               0.01 0.25 100 100    ;bf (lower)

;=====================================
; generated
i101	8		0.45	0.34210549844682075	29.13523509488062	0.01	0.49	100	100
i101	8.5		0.2	0.3548591990012854	18.354047994837977	0.01	0.24	100	100
i101	8.75		0.2	0.35405104332989085	18.354047994837977	0.01	0.19	100	100
i101	9.0		1.95	0.2990942692763503	27.5	0.01	1.99	100	100
i101	11.0		0.2	0.28532021888927284	27.5	0.01	0.24	100	100
i101	11.25		1.95	0.36295022502931296	24.499714748859326	0.01	1.94	100	100
i101	13.25		0.95	0.3730875174167713	21.826764464562746	0.01	0.94	100	100
i101	14.25		0.2	0.2916052234415997	27.5	0.01	0.24	100	100
i101	14.5		0.2	0.35508083520364764	18.354047994837977	0.01	0.24	100	100
i101	14.75		0.2	0.4022294108244895	21.826764464562746	0.01	0.24	100	100
i101	15.0		0.2	0.39107079300653624	19.445436482630058	0.01	0.19	100	100
i101	15.25		0.2	0.4081811333507428	21.826764464562746	0.01	0.24	100	100
i101	15.5		0.2	0.33456056167035464	24.499714748859326	0.01	0.24	100	100
i101	15.75		0.2	0.33406507608026076	391.99543598174927	0.01	0.19	100	100
i101	15.75		0.2	0.36298477119386274	493.8833012561241	0.01	0.24	100	100
i101	15.75		0.2	0.3768262986788161	293.6647679174076	0.01	0.19	100	100
i101	15.75		0.2	0.33835001686010224	349.2282314330039	0.01	0.19	100	100
i101	16.0		0.2	0.3887099232499348	293.6647679174076	0.01	0.19	100	100
i101	16.25		1.95	0.2642993911360085	415.3046975799451	0.01	1.94	100	100
i101	16.5		0.45	0.3367858221581072	466.1637615180899	0.01	0.44	100	100
i101	16.75		0.2	0.3281072271750778	293.6647679174076	0.01	0.19	100	100
i101	17.0		0.2	0.36960522081758307	293.6647679174076	0.01	0.24	100	100
i101	19.0		0.95	0.30263872870028713	440.0	0.01	0.99	100	100
i101	19.5		0.2	0.3867683208623538	155.56349186104046	0.01	0.19	100	100
i101	19.75		0.2	0.2727792233461446	155.56349186104046	0.01	0.24	100	100
i101	20.0		0.2	0.3911502694779064	174.61411571650194	0.01	0.19	100	100
i101	21.0		1.95	0.3336583538305353	130.8127826502993	0.01	1.99	100	100
i101	21.25		0.2	0.34389474166311174	130.8127826502993	0.01	0.24	100	100
i101	21.5		0.2	0.3894632420550907	155.56349186104046	0.01	0.19	100	100
i101	21.75		0.2	0.26527941562743884	207.65234878997256	0.01	0.24	100	100
i101	23.75		1.95	0.27731251151722625	246.94165062806206	0.01	1.99	100	100
i101	23.75		0.2	0.36117885776631814	146.8323839587038	0.01	0.24	100	100
i101	23.75		1.95	0.38143713047463956	174.61411571650194	0.01	1.99	100	100
i101	24.0		0.2	0.33720215684978183	293.6647679174076	0.01	0.19	100	100
i140	24		15	1.2	1
i101	24.25		0.2	0.3408434916565331	466.1637615180899	0.01	0.24	100	100
i101	24.5		0.2	0.36528016515826317	466.1637615180899	0.01	0.24	100	100
i101	26.5		0.2	0.36173846894361233	349.2282314330039	0.01	0.24	100	100
i101	26.75		0.45	0.3028519264621078	293.6647679174076	0.01	0.49	100	100
i101	28.75		0.2	0.3090532312997301	391.99543598174927	0.01	0.19	100	100
i101	29.0		0.2	0.3445108111147457	311.1269837220809	0.01	0.19	100	100
i101	29.25		0.95	0.29026530760711927	349.2282314330039	0.01	0.94	100	100
i101	29.5		0.2	0.37032687914072926	391.99543598174927	0.01	0.24	100	100
i101	29.75		1.95	0.33679527887082805	391.99543598174927	0.01	1.99	100	100
i101	30.25		0.2	0.26971135439790755	311.1269837220809	0.01	0.24	100	100
i101	30.5		0.2	0.3484485512104514	293.6647679174076	0.01	0.24	100	100
i101	30.75		0.2	0.32964413267072923	261.6255653005986	0.01	0.24	100	100
i101	30.75		0.2	0.3711985250174449	311.1269837220809	0.01	0.19	100	100
i101	30.75		0.2	0.33534775965676106	391.99543598174927	0.01	0.19	100	100
i101	30.75		0.2	0.2886661477529946	440.0	0.01	0.24	100	100
i101	31.75		0.2	0.3225063293982469	261.6255653005986	0.01	0.24	100	100
i101	31.75		0.2	0.26529369312617873	311.1269837220809	0.01	0.19	100	100
i101	31.75		0.95	0.36117182855283503	391.99543598174927	0.01	0.94	100	100
i101	31.75		0.2	0.27298109240599544	440.0	0.01	0.24	100	100
i101	32.0		0.45	0.3197284968842482	293.6647679174076	0.01	0.49	100	100
i140	32		15	1.7999999999999998	2
i101	34.0		1.95	0.27003066078701576	466.1637615180899	0.01	1.94	100	100
i101	34.25		0.2	0.32541886756508254	466.1637615180899	0.01	0.24	100	100
i101	34.5		0.2	0.38612512434129437	466.1637615180899	0.01	0.24	100	100
i101	34.75		0.95	0.3524743189061204	261.6255653005986	0.01	0.99	100	100
i101	35.0		0.2	0.381697628206923	293.6647679174076	0.01	0.19	100	100
i101	35.25		0.2	0.4091107156080206	440.0	0.01	0.19	100	100
i101	35.5		0.2	0.2874643060582426	466.1637615180899	0.01	0.19	100	100
i101	35.75		0.2	0.2716034079610139	293.6647679174076	0.01	0.19	100	100
i101	36.0		0.45	0.2740994132797422	440.0	0.01	0.44	100	100
i140	36		15	2.4	3
i101	37.0		0.2	0.31407564926787523	349.2282314330039	0.01	0.19	100	100
i101	37.25		0.2	0.3530831627937834	349.2282314330039	0.01	0.19	100	100
i101	37.75		1.95	0.3872660443031023	155.56349186104046	0.01	1.94	100	100
i140	38		15	1.2	4
i101	39.75		0.2	0.32849456863219845	246.94165062806206	0.01	0.19	100	100
i101	39.75		1.95	0.3812893851574202	146.8323839587038	0.01	1.94	100	100
i101	39.75		0.2	0.37813894359472067	174.61411571650194	0.01	0.19	100	100
i101	40.0		0.2	0.28561154237111586	155.56349186104046	0.01	0.19	100	100
i101	40.25		1.95	0.31602057760726554	195.99771799087463	0.01	1.99	100	100
i101	41.25		0.2	0.38029593938776407	195.99771799087463	0.01	0.19	100	100
i101	41.5		0.2	0.30955494737506123	233.08188075904496	0.01	0.19	100	100
i101	41.75		0.2	0.37519720764444303	233.08188075904496	0.01	0.24	100	100
i101	42.0		0.2	0.2717818597260243	130.8127826502993	0.01	0.24	100	100
i101	42.25		1.95	0.3524404138447047	155.56349186104046	0.01	1.99	100	100
i101	42.75		0.45	0.3946175268605091	130.8127826502993	0.01	0.49	100	100
i101	43.0		0.95	0.312475574996821	174.61411571650194	0.01	0.99	100	100
i101	43.25		0.2	0.3571791655830322	293.6647679174076	0.01	0.24	100	100
i101	45.25		0.2	0.38285433854597306	349.2282314330039	0.01	0.24	100	100
i101	45.5		0.2	0.3248322776740099	311.1269837220809	0.01	0.19	100	100
i140	46		15	1.7999999999999998	5
i101	47.5		0.2	0.2753090239778714	293.6647679174076	0.01	0.24	100	100
i101	47.75		0.2	0.376462992234393	466.1637615180899	0.01	0.24	100	100
i101	48.0		0.2	0.3627320903055875	155.56349186104046	0.01	0.19	100	100
i101	50.0		0.2	0.3529631776079195	246.94165062806206	0.01	0.19	100	100
i101	50.0		0.2	0.2903946459693326	146.8323839587038	0.01	0.24	100	100
i101	50.0		0.95	0.28623387679977713	174.61411571650194	0.01	0.99	100	100
i140	50		15	2.4	6
i101	50.25		0.2	0.29298118518677835	130.8127826502993	0.01	0.19	100	100
i101	50.5		0.2	0.2993540813771093	130.8127826502993	0.01	0.19	100	100
i101	50.75		1.95	0.2966675973805294	174.61411571650194	0.01	1.94	100	100
i101	51.0		0.2	0.29038599188725295	207.65234878997256	0.01	0.19	100	100
i140	52		15	1.2	7
i101	53.0		0.2	0.31538424239623986	246.94165062806206	0.01	0.19	100	100
i101	53.0		0.2	0.3213416564283106	146.8323839587038	0.01	0.24	100	100
i101	53.0		1.95	0.40940613466291337	174.61411571650194	0.01	1.99	100	100
i101	53.5		0.2	0.3382690987719049	146.8323839587038	0.01	0.24	100	100
i101	54.5		0.2	0.2721336847198563	146.8323839587038	0.01	0.24	100	100
i101	54.75		0.2	0.29178650367767534	155.56349186104046	0.01	0.24	100	100
i101	55.0		0.45	0.2867293663514327	146.8323839587038	0.01	0.44	100	100
i140	60		15	1.7999999999999998	8
i140	64		15	2.4	9
i140	66		15	1.2	10
i101	67.1		0.45	0.40850284202151427	18.354047994837977	0.01	0.49	100	100
i101	67.6		0.95	0.3578526813811911	29.13523509488062	0.01	0.99	100	100
i101	68.6		0.1375	0.3892080912600634	29.13523509488062	0.01	0.1275	100	100
i101	68.7875		0.2	0.36291823043338933	18.354047994837977	0.01	0.24	100	100
i101	69.0375		0.45	0.348826265468414	18.354047994837977	0.01	0.49	100	100
i101	69.5375		0.1375	0.38057938713491324	146.8323839587038	0.01	0.1275	100	100
i101	69.5375		0.2	0.42101223473924076	174.61411571650194	0.01	0.24	100	100
i101	69.5375		0.2	0.4535919745973897	220.0	0.01	0.19	100	100
i101	69.725		1.95	0.3848706254573704	174.61411571650194	0.01	1.94	100	100
i101	69.975		0.95	0.3444504064594376	220.0	0.01	0.99	100	100
i101	70.225		0.45	0.3394875309589014	130.8127826502993	0.01	0.44	100	100
i110	71.1		0.5	0.2	6.0	0.14165514838113744	0.49	185.16654748966647	165.44086846805732	0.9
i110	71.6		0.5	0.25	6.05	0.19157892776751628	0.49	61.049036540493255	139.5056207006669	0.9500000000000001
i110	72.1		2.0	0.3	6.1	0.39253074780477426	1.96	62.12099198205554	167.0909453209453	0.9
i101	72.225		0.2	0.37943000335744054	146.8323839587038	0.01	0.24	100	100
i101	73.225		0.325	0.4217855708735945	174.61411571650194	0.01	0.365	100	100
i101	73.725		0.2	0.4228184236780791	220.0	0.01	0.24	100	100
i101	73.975		0.45	0.4855082581483863	233.08188075904496	0.01	0.44	100	100
i140	74		15	1.2	11
i110	74.1		2.0	0.2	6.1499999999999995	0.49972416211865134	1.96	132.05394750452268	116.01419705348368	0.9500000000000001
i101	74.35		0.325	0.38663778225016643	174.61411571650194	0.01	0.365	100	100
i101	74.6		0.95	0.3446282986097851	220.0	0.01	0.94	100	100
i101	75.1		0.95	0.36724632295494297	233.08188075904496	0.01	0.99	100	100
i101	75.475		1.95	0.42875794605797934	130.8127826502993	0.01	1.94	100	100
i110	76.1		2.0	0.25	6.199999999999999	0.2521814036251232	1.96	161.15230571462502	102.38285432096635	0.9
i101	76.475		0.2	0.42614356781327056	146.8323839587038	0.01	0.19	100	100
i101	77.475		0.2	0.4367766398808214	155.56349186104046	0.01	0.19	100	100
i140	78		15	1.7999999999999998	12
i110	78.1		0.5	0.3	6.249999999999999	0.366830238421758	0.49	118.31701908713376	185.14734108444534	0.9500000000000001
i110	78.6		0.5	0.2	6.299999999999999	0.23607920360376058	0.49	76.63117898097944	196.2165894353093	0.9
i110	79.1		2.0	0.25	6.349999999999999	0.1664197018522523	1.96	107.20703330107214	126.44426074919737	0.9500000000000001
i101	79.475		0.1375	0.38380932331708184	174.61411571650194	0.01	0.1275	100	100
i101	79.725		0.45	0.4584599215148207	174.61411571650194	0.01	0.49	100	100
i101	79.975		0.45	0.4160371168263501	146.8323839587038	0.01	0.44	100	100
i140	80		15	2.4	13
i101	80.1625		0.2	0.4597563061194638	195.99771799087463	0.01	0.24	100	100
i101	80.6625		0.45	0.3816152024859855	233.08188075904496	0.01	0.44	100	100
i140	81		15	1.2	14
i110	81.1		2.0	0.3	6.399999999999999	0.4276413051576079	1.96	97.97582598559123	107.46258075588779	0.9
i101	81.1625		0.45	0.4053481295727734	233.08188075904496	0.01	0.44	100	100
i101	81.4125		0.2	0.4349415496832399	174.61411571650194	0.01	0.24	100	100
i101	81.9125		0.2	0.430500976797037	233.08188075904496	0.01	0.24	100	100
i101	82.4125		0.1375	0.47356476141598186	146.8323839587038	0.01	0.1775	100	100
i101	82.6625		0.2	0.3655109543221836	174.61411571650194	0.01	0.19	100	100
i101	82.9125		0.95	0.4806941304293723	195.99771799087463	0.01	0.99	100	100
i101	83.1		0.45	0.4067309185235111	233.08188075904496	0.01	0.44	100	100
i110	83.1		2.0	0.2	6.449999999999998	0.36763784134864774	1.96	67.92750301618864	65.69415299811796	0.9500000000000001
i101	83.35		0.325	0.4780867813755153	174.61411571650194	0.01	0.315	100	100
i101	84.35		0.1375	0.461134226663784	195.99771799087463	0.01	0.1275	100	100
i101	84.85		0.45	0.4505644974107487	130.8127826502993	0.01	0.49	100	100
i140	85		15	1.7999999999999998	15
i110	85.1		0.5	0.25	6.499999999999998	0.4893824389043655	0.49	174.6835095612022	73.30143816464326	0.9
i101	85.225		0.95	0.4281239581566345	220.0	0.01	0.94	100	100
i101	85.4125		0.2	0.4307889970807023	174.61411571650194	0.01	0.24	100	100
i110	85.6		2.0	0.3	6.549999999999998	0.3418807955404851	1.96	97.91489719355354	124.02463046756556	0.9500000000000001
i101	85.9125		0.45	0.36970866725827206	195.99771799087463	0.01	0.44	100	100
i101	86.9125		0.1375	0.3381849097516774	130.8127826502993	0.01	0.1775	100	100
i140	87		15	2.4	16
i101	87.1625		0.2	0.43287879359559045	155.56349186104046	0.01	0.24	100	100
i110	87.6		2.0	0.2	6.599999999999998	0.33235275109260176	1.96	150.82269529816642	114.2652350801427	0.9
i101	87.6625		0.2	0.43599059345152735	184.9972113558172	0.01	0.24	100	100
i101	87.85		0.45	0.4525005636330506	184.9972113558172	0.01	0.44	100	100
i140	88		15	1.2	17
i101	88.1		0.2	0.45135089791825267	184.9972113558172	0.01	0.19	100	100
i101	88.35		1.95	0.4529607961383916	220.0	0.01	1.94	100	100
i101	88.85		0.1375	0.39509305689651575	174.61411571650194	0.01	0.1275	100	100
i101	89.1		0.325	0.4247250981880364	130.8127826502993	0.01	0.365	100	100
i110	89.6		2.0	0.25	6.649999999999998	0.2947975601740259	1.96	124.80800329371313	182.34898608144442	0.9500000000000001
i101	91.1		0.45	0.3714617857853727	220.0	0.01	0.44	100	100
i101	91.2875		0.45	0.4379123897939337	130.8127826502993	0.01	0.44	100	100
i110	91.6		0.5	0.3	6.6999999999999975	0.3341978965251622	0.49	185.61891862966772	145.69956061722178	0.9
i101	91.6625		0.45	0.4610094603070451	207.65234878997256	0.01	0.49	100	100
i140	92		15	1.7999999999999998	18
i110	92.1		0.5	0.2	6.749999999999997	0.3662958844275862	0.49	126.606201754643	97.5287647411518	0.9500000000000001
i101	92.1625		1.95	0.4512790083336346	233.08188075904496	0.01	1.99	100	100
i110	92.6		2.0	0.25	6.799999999999997	0.14124248943517392	1.96	195.7204810868032	111.10630170195901	0.9
i101	92.6625		0.2	0.3635602899921479	184.9972113558172	0.01	0.24	100	100
i101	93.1625		0.2	0.38734670743482824	207.65234878997256	0.01	0.19	100	100
i140	94		15	2.4	19
i110	94.6		2.0	0.3	6.849999999999997	0.16127182551027525	1.96	138.6223434133293	114.23914228623522	0.9500000000000001
i140	95		15	1.2	20
i101	95.1625		0.1375	0.48241311365208805	130.8127826502993	0.01	0.1275	100	100
i101	95.4125		0.2	0.43732557431683355	184.9972113558172	0.01	0.24	100	100
i101	95.6625		0.2	0.38331870330061535	155.56349186104046	0.01	0.19	100	100
i101	95.85		0.45	0.36007565281797843	130.8127826502993	0.01	0.44	100	100
i101	96.1		0.95	0.4371121073312021	195.99771799087463	0.01	0.94	100	100
i101	96.35		0.95	0.48684373324623276	184.9972113558172	0.01	0.94	100	100
i110	96.6		0.5	0.2	6.899999999999997	0.22487625871295527	0.49	179.21278202586598	159.58945370826376	0.9
i101	96.85		0.2	0.3832361748909485	207.65234878997256	0.01	0.24	100	100
i110	97.1		2.0	0.25	6.949999999999997	0.472999523926935	1.96	138.18353369587112	85.74160040237189	0.9500000000000001
i101	97.85		0.45	0.4420550481386316	220.0	0.01	0.49	100	100
i101	98.85		0.2	0.39933609763754485	195.99771799087463	0.01	0.24	100	100
i140	99		15	1.7999999999999998	21
i101	99.1		0.1375	0.44042462221708323	174.61411571650194	0.01	0.1275	100	100
i110	99.1		2.0	0.3	6.9999999999999964	0.34192976009721626	1.96	110.35957784113191	76.74181790331032	0.9
i101	99.6		0.2	0.46692078040002716	174.61411571650194	0.01	0.19	100	100
i101	99.85		0.2	0.40749617183481174	174.61411571650194	0.01	0.19	100	100
i101	100.0375		0.95	0.4763484429034005	174.61411571650194	0.01	0.99	100	100
i101	100.2875		1.95	0.4315514262769308	146.8323839587038	0.01	1.94	100	100
i101	100.5375		0.95	0.3913350420645238	246.94165062806206	0.01	0.99	100	100
i101	100.5375		0.1375	0.3752848609726931	146.8323839587038	0.01	0.1775	100	100
i101	100.5375		0.2	0.3463898576790042	174.61411571650194	0.01	0.24	100	100
i140	101		15	2.4	22
i110	101.1		2.0	0.2	7.049999999999996	0.34941868677690235	1.96	121.71411496720648	89.7360172353371	0.9500000000000001
i101	101.5375		0.45	0.47265117980194754	146.8323839587038	0.01	0.49	100	100
i140	102		15	1.2	1
i110	103.1		0.5	0.25	7.099999999999996	0.4457738837779983	0.49	117.7237793604241	129.48695772663868	0.9
i101	103.5375		0.45	0.4267004019581573	146.8323839587038	0.01	0.44	100	100
i110	103.6		0.5	0.3	7.149999999999996	0.2321295580891481	0.49	57.149769157373385	175.52597212040342	0.9500000000000001
i110	104.1		2.0	0.2	7.199999999999996	0.484177159925649	1.96	199.32483987679873	56.17076828885641	0.9
i101	104.5375		0.325	0.4301418652365685	246.94165062806206	0.01	0.315	100	100
i101	104.5375		0.2	0.37394212258106385	146.8323839587038	0.01	0.24	100	100
i101	104.5375		0.45	0.43632930828397065	174.61411571650194	0.01	0.44	100	100
i101	104.725		0.1375	0.481519952837695	174.61411571650194	0.01	0.1275	100	100
i101	104.975		0.2	0.42055086321353546	146.8323839587038	0.01	0.24	100	100
i101	105.475		0.45	0.337557011060308	233.08188075904496	0.01	0.49	100	100
i101	105.975		0.45	0.4811567004688161	174.61411571650194	0.01	0.44	100	100
i140	106		15	1.7999999999999998	2
i110	106.1		2.0	0.25	7.249999999999996	0.10146234217358147	1.96	146.7869110495089	149.73979058439738	0.9500000000000001
i101	106.35		0.2	0.34957839219168624	174.61411571650194	0.01	0.24	100	100
i101	106.6		0.2	0.43841302026944984	174.61411571650194	0.01	0.19	100	100
i101	107.1		0.95	0.3777319586999295	174.61411571650194	0.01	0.94	100	100
i101	107.2875		0.45	0.3446149727150845	184.9972113558172	0.01	0.49	100	100
i101	107.5375		0.95	0.4533834018212491	195.99771799087463	0.01	0.99	100	100
i140	108		15	2.4	3
i101	108.0375		0.2	0.43226451711306346	207.65234878997256	0.01	0.19	100	100
i110	108.1		0.5	0.3	7.299999999999995	0.4570285171376134	0.49	136.42916442073437	57.90553669641747	0.9
i101	108.5375		0.45	0.44156159033344666	174.61411571650194	0.01	0.49	100	100
i110	108.6		0.5	0	7.349999999999995	0.1901333393564992	0.49	97.3402899270566	101.47597089611924	0.9500000000000001
i101	108.7875		0.1375	0.3878151312034491	174.61411571650194	0.01	0.1275	100	100
i140	109		15	1.2	4
i101	109.0375		0.2	0.37884701945261745	207.65234878997256	0.01	0.24	100	100
i110	109.1		2.0	0	7.399999999999995	0	1.96	131.57138348778892	56.1672687290083	0.9
i101	110.0375		1.95	0.4472328254765694	195.99771799087463	0.01	1.94	100	100
i101	110.5375		0.325	0.3922739732353445	207.65234878997256	0.01	0.315	100	100
i101	110.6		0.2	0.46871381324044403	16.351597831287414	0.01	0.24	100	100
i101	110.85		0.2	0.4364786063098508	16.351597831287414	0.01	0.19	100	100
i101	111.1		0.2	0.4028071652173009	16.351597831287414	0.01	0.19	100	100
i101	111.35		0.2	0.4119146245520871	29.13523509488062	0.01	0.24	100	100
i101	111.6		0.2	0.3971773833584652	16.351597831287414	0.01	0.19	100	100
i101	111.85		1.95	0.3969688876862276	18.354047994837977	0.01	1.99	100	100
i140	113		15	1.7999999999999998	5
i101	113.85		0.2	0.49500120126887676	18.354047994837977	0.01	0.19	100	100
i101	114.1		1.95	0.4168493122247958	155.56349186104046	0.01	1.94	100	100
i101	114.6		0.325	0.21281931141100158	4698.63628667852	0.01	0.315	100	100
i101	114.975		0.45	0.2573517429802892	4978.031739553295	0.01	0.44	100	100
i140	115		15	2.4	6
i101	115.475		0.2	0.2252002695140798	14917.240368578874	0.01	0.19	100	100
i101	115.725		0.1375	0.24451436723894726	9397.272573357044	0.01	0.1775	100	100
i101	115.9125		0.1375	0.17758484432753607	11175.303405856126	0.01	0.1775	100	100
i140	116		15	1.2	7
i101	116.1		0.95	0.47811716211491884	174.61411571650194	0.01	0.99	100	100
i101	116.1		0.2	0.24453518181617398	9397.272573357044	0.01	0.19	100	100
i101	116.35		0.95	0.2609621787712372	14080.0	0.01	0.94	100	100
i101	117.1		0.2	0.40041743892103443	220.0	0.01	0.24	100	100
i101	117.35		0.45	0.4827715126837222	246.94165062806206	0.01	0.49	100	100
i101	117.35		1.95	0.1601100345061037	2349.31814333926	0.01	1.99	100	100
i101	117.85		0.2	0.4699418516234919	146.8323839587038	0.01	0.24	100	100
i101	118.1		0.2	0.4188392276010022	207.65234878997256	0.01	0.24	100	100
i101	118.35		0.2	0.4194673870038752	220.0	0.01	0.19	100	100
i101	118.6		0.2	0.41175657175604924	130.8127826502993	0.01	0.24	100	100
i101	118.85		0.2	0.45440292480255673	155.56349186104046	0.01	0.19	100	100
i101	119.1		1.95	0.3872371233892064	293.6647679174076	0.01	1.94	100	100
i101	119.35		0.45	0.1591221048955876	5587.651702928062	0.01	0.44	100	100
i101	119.85		0.95	0.20992342815175818	2793.825851464031	0.01	0.94	100	100
i101	120.85		0.45	0.15168124271117994	4698.63628667852	0.01	0.44	100	100
i101	121.1		0.2	0.4518170665121609	391.99543598174927	0.01	0.19	100	100
i101	121.35		0.2	0.4635326230692215	261.6255653005986	0.01	0.24	100	100
i101	121.35		0.2	0.22639228650862334	4698.63628667852	0.01	0.24	100	100
i101	121.6		0.2	0.45868757103087576	261.6255653005986	0.01	0.24	100	100
i101	121.6		0.45	0.16650413138976813	5587.651702928062	0.01	0.49	100	100
i101	121.85		0.2	0.4557121848098101	391.99543598174927	0.01	0.24	100	100
i101	122.1		0.2	0.44028532795558084	349.2282314330039	0.01	0.24	100	100
i101	122.1		0.2	0.20347234200220932	5587.651702928062	0.01	0.24	100	100
i101	122.35		0.2	0.4008626532077136	311.1269837220809	0.01	0.19	100	100
i101	122.35		0.2	0.22540062987536894	5587.651702928062	0.01	0.24	100	100
i101	122.6		1.95	0.42237940878486824	261.6255653005986	0.01	1.99	100	100
i101	122.6		0.95	0.2341076232833178	5587.651702928062	0.01	0.94	100	100
i101	123.6		0.325	0.15186446108062684	4698.63628667852	0.01	0.315	100	100
i101	123.6		0.2	0.1976498750126002	2793.825851464031	0.01	0.19	100	100
i101	123.975		0.2	0.15613759944985983	3729.3100921447194	0.01	0.24	100	100
i140	124		15	1.7999999999999998	8
i101	124.225		0.1375	0.22370686101677417	2349.31814333926	0.01	0.1775	100	100
i101	124.475		0.45	0.18166666145782245	4698.63628667852	0.01	0.44	100	100
i101	124.6		0.2	0.42655533732741724	311.1269837220809	0.01	0.19	100	100
i101	124.6625		1.95	0.255768619644124	4698.63628667852	0.01	1.94	100	100
i101	124.85		0.2	0.42064428673887205	466.1637615180899	0.01	0.24	100	100
i101	125.1		0.45	0.42702985976212143	293.6647679174076	0.01	0.49	100	100
i101	125.1625		0.45	0.16962997314507477	5587.651702928062	0.01	0.49	100	100
i101	125.6		0.95	0.4571399530814366	391.99543598174927	0.01	0.99	100	100
i101	126.6		0.2	0.45197036751587927	261.6255653005986	0.01	0.19	100	100
i101	126.85		0.2	0.4153510467816615	293.6647679174076	0.01	0.19	100	100
i101	127.1		0.2	0.4936770377363519	349.2282314330039	0.01	0.24	100	100
i101	127.1625		0.45	0.24806713055016488	4698.63628667852	0.01	0.49	100	100
i101	127.35		0.2	0.4686951635082014	261.6255653005986	0.01	0.19	100	100
i101	127.6		0.95	0.45104800105465254	293.6647679174076	0.01	0.99	100	100
i101	127.6625		0.2	0.2025666903842426	4698.63628667852	0.01	0.19	100	100
i101	127.6625		0.2	0.26096815156390224	2793.825851464031	0.01	0.24	100	100
i140	128		15	2.4	9
i101	128.1625		0.95	0.21655044336127743	2793.825851464031	0.01	0.94	100	100
i101	128.4125		0.45	0.2109105410503108	2793.825851464031	0.01	0.44	100	100
i101	128.6		0.2	0.4670343009693724	349.2282314330039	0.01	0.24	100	100
i101	128.6625		0.2	0.24085590208030366	5587.651702928062	0.01	0.19	100	100
i101	128.85		0.2	0.4215024052544409	261.6255653005986	0.01	0.19	100	100
i101	129.1		1.95	0.3965788746831772	349.2282314330039	0.01	1.94	100	100
i101	129.6625		0.1375	0.25898559933298193	4698.63628667852	0.01	0.1275	100	100
i140	130		15	1.2	10
i101	130.1625		0.95	0.1731871833785855	7458.620184289437	0.01	0.94	100	100
i101	130.4125		0.2	0.2463265639923547	4698.63628667852	0.01	0.19	100	100
i101	130.6		0.1375	0.2579394644354626	12543.853951415975	0.01	0.1775	100	100
i101	131.1		0.45	0.39973827089695535	261.6255653005986	0.01	0.49	100	100
i101	131.6		0.2	0.44978343713255386	415.3046975799451	0.01	0.24	100	100
i101	131.6		0.45	0.23545223789974398	5919.91076338615	0.01	0.49	100	100
i101	131.85		0.2	0.4185241708816353	466.1637615180899	0.01	0.19	100	100
i101	131.85		0.95	0.18741672400726914	4434.922095629953	0.01	0.94	100	100
i101	132.0375		0.45	0.16211556516214978	155.56349186104046	0.01	0.44	100	100
i101	132.1		1.95	0.37961136689790265	293.6647679174076	0.01	1.94	100	100
i101	132.5375		0.45	0.17874053873020057	7040.0	0.01	0.49	100	100
i101	133.5375		0.2	0.20688120992440714	6644.875161279122	0.01	0.24	100	100
i101	134.0375		0.2	0.2523331707667159	4186.009044809578	0.01	0.24	100	100
i101	134.1		0.2	0.46798601429280934	349.2282314330039	0.01	0.19	100	100
i101	134.35		0.2	0.38304147665774824	155.56349186104046	0.01	0.24	100	100
i101	134.5375		1.95	0.23989918893062034	7458.620184289437	0.01	1.94	100	100
i101	134.6		0.2	0.49967404293332895	220.0	0.01	0.24	100	100
i101	134.7875		0.1375	0.19013155485696884	155.56349186104046	0.01	0.1775	100	100
i101	134.85		0.2	0.37745168070730867	103.82617439498628	0.01	0.19	100	100
i101	135.0375		0.45	0.24134537545473672	2793.825851464031	0.01	0.44	100	100
i101	135.1		0.2	0.4273497874205967	65.40639132514966	0.01	0.19	100	100
i101	135.35		0.2	0.3905297336986255	77.78174593052023	0.01	0.24	100	100
i101	135.6		0.2	0.42920932902457143	116.54094037952248	0.01	0.24	100	100
i101	135.85		0.2	0.38274120095918934	77.78174593052023	0.01	0.24	100	100
i101	136.1		0.2	0.4393256975726354	103.82617439498628	0.01	0.19	100	100
i101	136.35		0.95	0.4296141496039093	97.99885899543733	0.01	0.99	100	100
i101	137.0375		0.2	0.22484383119988957	155.56349186104046	0.01	0.24	100	100
i101	137.225		0.2	0.17638950167710998	207.65234878997256	0.01	0.19	100	100
i101	137.35		1.95	0.3773958646661124	293.6647679174076	0.01	1.99	100	100
i101	137.725		0.325	0.18799866113219854	155.56349186104046	0.01	0.315	100	100
i101	137.975		0.2	0.24023971676863998	7458.620184289437	0.01	0.19	100	100
i140	138		15	1.7999999999999998	11
i101	138.225		0.2	0.15004522632562256	12543.853951415975	0.01	0.24	100	100
i101	138.6		0.45	0.15618775364235282	13289.750322558246	0.01	0.44	100	100
i101	138.85		0.95	0.21596616507752342	2793.825851464031	0.01	0.99	100	100
i101	139.1		0.45	0.17326658607773338	4186.009044809578	0.01	0.49	100	100
i101	139.35		0.2	0.42548913273474576	311.1269837220809	0.01	0.24	100	100
i101	139.6		0.45	0.39657123464027266	349.2282314330039	0.01	0.44	100	100
i101	139.6		0.45	0.18847145992351128	7040.0	0.01	0.49	100	100
i101	140.1		1.95	0.41037580130830914	391.99543598174927	0.01	1.99	100	100
i101	140.6		0.325	0.1554125292550335	4186.009044809578	0.01	0.315	100	100
i101	141.1		0.1375	0.18497414280258928	4186.009044809578	0.01	0.1775	100	100
i101	141.6		0.95	0.20609344338752827	12543.853951415975	0.01	0.94	100	100
i101	141.975		0.1375	0.20172219086112697	4186.009044809578	0.01	0.1775	100	100
i140	142		15	2.4	12
i101	142.1		0.2	0.4908702224222965	261.6255653005986	0.01	0.24	100	100
i101	142.1625		0.2	0.16185050191566752	4434.922095629953	0.01	0.19	100	100
i101	142.35		0.2	0.44627533727753477	440.0	0.01	0.19	100	100
i101	142.6		0.2	0.4770272279128611	293.6647679174076	0.01	0.24	100	100
i101	142.85		0.2	0.37616440841724863	293.6647679174076	0.01	0.19	100	100
i101	143.1		0.2	0.4504967422801984	293.6647679174076	0.01	0.24	100	100
i101	143.1625		0.2	0.2237001784017501	5919.91076338615	0.01	0.19	100	100
i101	143.35		0.2	0.47019094103071984	293.6647679174076	0.01	0.24	100	100
i101	143.35		1.95	0.2443509313629774	2793.825851464031	0.01	1.94	100	100
i101	143.6		0.2	0.4693860366795641	155.56349186104046	0.01	0.24	100	100
i101	143.6		0.2	0.1888431486017362	2793.825851464031	0.01	0.19	100	100
i101	143.85		0.2	0.3867153080502079	174.61411571650194	0.01	0.19	100	100
i101	143.85		0.45	0.1767106740887818	155.56349186104046	0.01	0.44	100	100
i140	144		15	1.2	13
i101	144.1		1.95	0.4003903180872952	130.8127826502993	0.01	1.94	100	100
i101	145.85		0.2	0.15302765559603926	7458.620184289437	0.01	0.19	100	100
i101	146.1		0.2	0.48621156022516426	146.8323839587038	0.01	0.19	100	100
i101	146.1		1.95	0.17833129009919468	7458.620184289437	0.01	1.94	100	100
i101	146.35		0.45	0.4294037864384682	146.8323839587038	0.01	0.44	100	100
i101	146.39999999999998		0.2	0.05229491464446086	32.70319566257483	0.01	0.24	100	100
i101	146.6		0.95	0.26080948080014776	2793.825851464031	0.01	0.99	100	100
i101	146.64999999999998		0.2	0.05484156249527555	51.91308719749314	0.01	0.24	100	100
i101	146.85		0.2	0.43606890896421047	174.61411571650194	0.01	0.19	100	100
i101	146.85		0.45	0.16293495366042282	4698.63628667852	0.01	0.44	100	100
i101	146.85		0.45	0.15744405549308454	2793.825851464031	0.01	0.44	100	100
i101	146.89999999999998		1.95	0.05350970492542268	130.8127826502993	0.01	1.94	100	100
i101	147.1		0.95	0.38431744613575625	220.0	0.01	0.99	100	100
i101	148.1		0.2	0.42992673522995184	146.8323839587038	0.01	0.24	100	100
i101	148.35		1.95	0.3810547331373809	174.61411571650194	0.01	1.99	100	100
i101	148.85		0.45	0.16837928111691397	2349.31814333926	0.01	0.44	100	100
i101	148.89999999999998		0.2	0.05511901774817923	32.70319566257483	0.01	0.19	100	100
i101	149.14999999999998		0.45	0.05501115988352351	36.70809598967594	0.01	0.49	100	100
i101	149.64999999999998		1.95	0.0558914558999253	246.94165062806206	0.01	1.99	100	100
i101	149.64999999999998		0.2	0.06009653678048628	146.8323839587038	0.01	0.19	100	100
i101	149.64999999999998		0.2	0.052919200855532395	174.61411571650194	0.01	0.19	100	100
i101	149.85		0.95	0.20038733868000758	5587.651702928062	0.01	0.94	100	100
i101	150.35		0.2	0.41844504024821216	146.8323839587038	0.01	0.19	100	100
i101	150.35		0.2	0.1790219419491848	4698.63628667852	0.01	0.19	100	100
i101	150.6		0.95	0.46771898589641897	155.56349186104046	0.01	0.94	100	100
i101	150.85		0.2	0.22831565852904262	4698.63628667852	0.01	0.19	100	100
i101	150.85		0.1375	0.1857899176111555	2793.825851464031	0.01	0.1275	100	100
i101	151.35		0.2	0.2238163838802554	5587.651702928062	0.01	0.19	100	100
i101	151.6		0.2	0.444030044235046	103.82617439498628	0.01	0.19	100	100
i101	151.64999999999998		0.2	0.05361228097256027	220.0	0.01	0.19	100	100
i101	151.85		0.2	0.39799345165119127	103.82617439498628	0.01	0.19	100	100
i101	151.89999999999998		0.2	0.053912582258744596	220.0	0.01	0.19	100	100
i140	152		15	1.7999999999999998	14
i101	152.1		0.2	0.42956497385698267	116.54094037952248	0.01	0.24	100	100
i101	152.14999999999998		0.2	0.05505871178555986	116.54094037952248	0.01	0.19	100	100
i101	152.35		0.2	0.4364315894061776	293.6647679174076	0.01	0.19	100	100
i101	152.35		0.45	0.19268792848887165	5587.651702928062	0.01	0.44	100	100
i101	152.39999999999998		0.95	0.05942466814221311	155.56349186104046	0.01	0.99	100	100
i101	152.6		1.95	0.40703918697035246	349.2282314330039	0.01	1.99	100	100
i101	152.6		0.1375	0.2177246034295055	4698.63628667852	0.01	0.1775	100	100
i101	152.64999999999998		0.2	0.05503946649514445	146.8323839587038	0.01	0.19	100	100
i101	152.85		0.2	0.22495324752813928	7458.620184289437	0.01	0.24	100	100
i101	152.89999999999998		0.2	0.06086157748400701	155.56349186104046	0.01	0.24	100	100
i101	153.0375		0.325	0.1823805031598635	5587.651702928062	0.01	0.365	100	100
i101	153.2875		0.1375	0.15884706927173925	2793.825851464031	0.01	0.1775	100	100
i101	153.7875		0.2	0.19558049308602615	3729.3100921447194	0.01	0.24	100	100
i101	153.89999999999998		0.2	0.05389016530121582	73.41619197935188	0.01	0.24	100	100
i101	153.975		0.45	0.2594707676780616	2349.31814333926	0.01	0.44	100	100
i101	154.14999999999998		0.2	0.053799639499397554	246.94165062806206	0.01	0.19	100	100
i101	154.14999999999998		0.2	0.05120158312085063	146.8323839587038	0.01	0.24	100	100
i101	154.14999999999998		0.2	0.06075810819184831	174.61411571650194	0.01	0.19	100	100
i101	154.225		0.45	0.22543525532849865	2349.31814333926	0.01	0.49	100	100
i101	154.39999999999998		1.95	0.05680788022617908	73.41619197935188	0.01	1.99	100	100
i101	154.6		0.2	0.4425411136662757	466.1637615180899	0.01	0.19	100	100
i101	154.6		0.2	0.22541144529936052	2217.4610478149766	0.01	0.24	100	100
i101	154.64999999999998		0.2	0.05697519193688055	73.41619197935188	0.01	0.24	100	100
i101	154.7875		1.95	0.19799789569992748	12543.853951415975	0.01	1.99	100	100
i101	154.85		0.2	0.471269854875252	261.6255653005986	0.01	0.24	100	100
i101	154.89999999999998		0.95	0.060168779965566285	43.653528929125486	0.01	0.99	100	100
i101	155.0375		0.45	0.23789205514655715	4186.009044809578	0.01	0.44	100	100
i101	155.1		0.2	0.3976489384783247	349.2282314330039	0.01	0.24	100	100
i101	155.14999999999998		0.2	0.05497549425326922	43.653528929125486	0.01	0.19	100	100
i101	155.35		1.95	0.4940257001784564	391.99543598174927	0.01	1.99	100	100
i101	155.39999999999998		0.2	0.060765111244009504	174.61411571650194	0.01	0.24	100	100
i101	155.5375		0.2	0.19159371922670182	7040.0	0.01	0.19	100	100
i140	156		15	2.4	15
i101	156.0375		0.45	0.17484756763874554	5919.91076338615	0.01	0.49	100	100
i101	156.2875		0.95	0.2509684292309029	6644.875161279122	0.01	0.94	100	100
i101	157.35		0.2	0.4919947409395141	391.99543598174927	0.01	0.24	100	100
i101	157.39999999999998		0.45	0.059969208537012146	73.41619197935188	0.01	0.49	100	100
i101	157.6		0.45	0.383894145811581	466.1637615180899	0.01	0.44	100	100
i101	157.64999999999998		0.2	0.051132570760774	116.54094037952248	0.01	0.19	100	100
i101	158.1		0.2	0.4843037782454057	261.6255653005986	0.01	0.24	100	100
i101	158.2875		0.95	0.24677770090954548	4186.009044809578	0.01	0.94	100	100
i101	158.35		0.2	0.4293736297102471	349.2282314330039	0.01	0.24	100	100
i101	158.64999999999998		0.2	0.06152778814381292	87.30705785825097	0.01	0.19	100	100
i101	158.7875		0.1375	0.24646792264522138	4186.009044809578	0.01	0.1275	100	100
i101	158.89999999999998		1.95	0.05140786809790146	43.653528929125486	0.01	1.99	100	100
i101	159.0375		0.2	0.2467708890562219	5919.91076338615	0.01	0.19	100	100
i101	159.14999999999998		0.2	0.05198020229732598	246.94165062806206	0.01	0.19	100	100
i101	159.5375		0.325	0.2357545743535681	7458.620184289437	0.01	0.315	100	100
i101	159.64999999999998		0.2	0.05911951550378122	73.41619197935188	0.01	0.24	100	100
i101	159.89999999999998		0.2	0.06053524108579346	116.54094037952248	0.01	0.19	100	100
i101	160.14999999999998		0.2	0.06086483068991696	87.30705785825097	0.01	0.19	100	100
i101	160.5375		0.2	0.15913228223965303	2793.825851464031	0.01	0.24	100	100
i101	162.14999999999998		1.95	0.058730608345377126	246.94165062806206	0.01	1.94	100	100
i101	162.39999999999998		0.2	0.05966197021298113	146.8323839587038	0.01	0.24	100	100
i101	162.64999999999998		0.2	0.055197448765223554	73.41619197935188	0.01	0.19	100	100
i101	162.89999999999998		0.2	0.05268691198906277	73.41619197935188	0.01	0.19	100	100
i101	163.14999999999998		0.2	0.0532977698132436	116.54094037952248	0.01	0.19	100	100
i101	165.14999999999998		0.2	0.05904737433843593	116.54094037952248	0.01	0.19	100	100
i101	165.39999999999998		0.2	0.059322088411637185	73.41619197935188	0.01	0.24	100	100
i101	165.64999999999998		1.95	0.06095865231979568	110.0	0.01	1.94	100	100
i101	165.89999999999998		0.45	0.05094227237663348	73.41619197935188	0.01	0.49	100	100
i101	166.14999999999998		0.2	0.05555932538731082	110.0	0.01	0.19	100	100
i101	166.39999999999998		0.95	0.05590438505830041	73.41619197935188	0.01	0.99	100	100
i101	166.64999999999998		0.2	0.05869594952127611	103.82617439498628	0.01	0.24	100	100
i101	168.64999999999998		1.95	0.05801428111016724	155.56349186104046	0.01	1.94	100	100
i101	169.14999999999998		0.2	0.05933464751744526	130.8127826502993	0.01	0.19	100	100
i101	169.39999999999998		0.2	0.055124962785018425	73.41619197935188	0.01	0.19	100	100
i101	170.39999999999998		0.45	0.06190396311867866	116.54094037952248	0.01	0.44	100	100
i110	170.39999999999998		1.0	0.05	6.0	0.13060919534293533	0.6	132.8810839667432	187.31639195023973	1.0
i101	170.64999999999998		0.2	0.05211789818311753	77.78174593052023	0.01	0.19	100	100
i101	170.64999999999998		0.95	0.05710658568198657	311.1269837220809	0.01	0.94	100	100
i101	170.64999999999998		0.2	0.05604811609801234	391.99543598174927	0.01	0.24	100	100
i101	170.64999999999998		1.95	0.056360000403408425	466.1637615180899	0.01	1.94	100	100
i110	171.39999999999998		1.0	0.05	6.05	0.20433605360997606	0.6	110.67005777912628	131.33205189152704	0.95
i110	172.39999999999998		6.0	0.05	6.1	0.42247567248615436	3.5999999999999996	123.66142500432713	171.87999824962296	0.8999999999999999
i101	172.64999999999998		0.2	0.05124940057537701	32.70319566257483	0.01	0.24	100	100
i101	172.89999999999998		0.2	0.055431629421770046	36.70809598967594	0.01	0.24	100	100
i101	173.14999999999998		0.2	0.0615544534602014	116.54094037952248	0.01	0.19	100	100
i101	173.64999999999998		0.2	0.059346164614335145	73.41619197935188	0.01	0.19	100	100
i101	173.89999999999998		0.2	0.055408284450252435	311.1269837220809	0.01	0.19	100	100
i101	174.89999999999998		0.2	0.05229491464446086	391.99543598174927	0.01	0.24	100	100
i101	175.14999999999998		0.2	0.05484156249527555	349.2282314330039	0.01	0.24	100	100
i101	177.14999999999998		1.95	0.05350970492542268	73.41619197935188	0.01	1.94	100	100
i101	177.39999999999998		0.2	0.05511901774817923	97.99885899543733	0.01	0.19	100	100
i101	177.64999999999998		0.45	0.05501115988352351	73.41619197935188	0.01	0.49	100	100
i101	177.89999999999998		1.95	0.0558914558999253	43.653528929125486	0.01	1.99	100	100
i101	178.14999999999998		0.2	0.06009653678048628	174.61411571650194	0.01	0.19	100	100
i101	178.39999999999998		0.2	0.052919200855532395	77.78174593052023	0.01	0.19	100	100
i110	178.39999999999998		6.0	0.05	6.1499999999999995	0.34070278338673854	3.5999999999999996	110.46700500601757	184.9600668881646	0.8499999999999999
i110	184.39999999999998		1.0	0.05	6.199999999999999	0.445026439938189	0.6	146.0043429173856	153.19852519068456	0.7999999999999998
i110	185.39999999999998		1.0	0.05	6.249999999999999	0.2739357829263742	0.6	104.0830378388861	126.06640395667137	0.7499999999999998
i110	186.39999999999998		1.0	0.05	6.299999999999999	0.4844171293431674	0.6	171.04763174069492	151.19313054281014	0.6999999999999997
i110	187.39999999999998		1.0	0.05	6.349999999999999	0.2567214160532757	0.6	195.3277904866327	176.69067086169622	0.6499999999999997
i110	188.39999999999998		6.0	0.05	6.399999999999999	0.4847998497931596	3.5999999999999996	154.3837058263529	107.23035633404965	0.5999999999999996
i110	194.39999999999998		1.0	0.05	6.449999999999998	0.4209749488034943	0.6	175.2969671815284	155.70374224073987	0.5499999999999996
i110	195.39999999999998		1.0	0	6.499999999999998	0.14758632298179075	0.6	122.71452597228432	187.55036982390828	1.0
i110	196.39999999999998		6.0	0	6.549999999999998	0.4070554894214451	3.5999999999999996	131.03429581254775	114.5075327812266	0.95
i110	202.39999999999998		6.0	0	6.599999999999998	0.39310277514462333	3.5999999999999996	111.86015438399048	174.12319566204417	0.8999999999999999
i110	208.39999999999998		1.0	0	6.649999999999998	0.290025666880415	0.6	109.65656184046216	153.00086187063317	0.8499999999999999
i110	209.39999999999998		1.0	0.05	6.6999999999999975	0.33116665855479566	0.6	157.72039884033595	118.73758925294968	0.7999999999999998
i110	210.39999999999998		1.0	0.05	6.749999999999997	0.3729495777897013	0.6	183.08952088343813	161.6270924288286	0.7499999999999998
i110	211.39999999999998		1.0	0.05	6.799999999999997	0.4053761818335583	0.6	146.82993539565436	128.80924938474655	0.6999999999999997