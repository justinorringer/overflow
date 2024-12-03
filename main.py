import random
import numpy as np

from thuja.itemstream import notetypes
from thuja.itemstream import Itemstream
from thuja.generator import Generator
from thuja.generator import keys
from thuja import csound_utils
from thuja.utils import rhythm_to_duration

starting_template = ""
with open("main.template.sco", "r") as f:
    starting_template = f.read()

class Section:
    # Collection of chords (each taking up a bar of 4)
    def __init__(self, name, chords, notes, rhythms):
        self.name = name
        self.chords = chords
        self.notes = notes
        self.rhythms = rhythms

        self.select_attributes()
    

    # ====================================
    # Decides the duration, attack, release, and cut offs of each note
    def select_attributes(self):
        # idur	=		p3
        # iamp	=		p4
        # ipitch	=		p5

        # and additionally
        # iatk	=		p6
        # irel	=		p7
        # icut1	=		p8
        # icut2	=		p9

        durations = []
        attacks = []
        releases = []
        cuts = []
        for ry in self.rhythms:
            start_of_note_or_not = 0.05 if random.choice([True, False]) else 0
            dur = rhythm_to_duration(ry, 120) - start_of_note_or_not
            durations.append(rhythm_to_duration(ry, 120) - .05)
            attacks.append(0.01)
            releases.append(dur - 0.01)

            cuts.append(100)
        
        self.durations = durations
        self.attacks = attacks
        self.releases = releases
        self.cuts = cuts

        # going to store the total time for this section
        self.total_time = sum(durations)
    
    def create_generator(self, start_time=0, template=""):
        return Generator(
            streams=[
                (keys.instrument, 101),
                (keys.rhythm, Itemstream(self.rhythms,
                                        tempo=120,
                                        notetype=notetypes.rhythm)),
                (keys.duration, Itemstream(self.durations)),
                (keys.amplitude, 1),
                (keys.frequency, Itemstream(self.notes,
                                        notetype=notetypes.pitch)),
                ('atk', Itemstream(self.attacks)),
                ('rel', Itemstream(self.releases)),
                ('cut1', Itemstream(self.cuts)),
                ('cut2', Itemstream(self.cuts))
            ],
            note_limit=(len(self.notes)),
            gen_lines=[template],
            start_time=start_time
        )

# going to generate in the following keys, 4 bars of 4 counts each
# Gminor or Bflat, Cmin, Bflat, Dminor, Eflat, Bflat
rhythm_pool_1 = ['w', 'w', 'e', 'e', 'q', 'e', 'e', 'e', 'e', 'e', 'e', 'e', 'e', 'h'] # i.e. 16 counts, 14 notes
# then a faster pool, still 16 counts
rhythm_pool_2 = ['q', 'e', 'e', 'e', 'e', 'q', 'q', 'e', 'e.', 's.', 's.', 'q', 'h', 'h', 'w'] # i.e. 16 counts, 16 notes

def generate_rhythm_sequences(values, num_sequences):
    sequences = []
    for _ in range(num_sequences):
        random_sequence = random.sample(values, len(values))
        sequences.append(random_sequence)
    
    # flattening the list
    flattened = [item for sublist in sequences for item in sublist]
    return flattened

# Gminor, Bflat, Cmin, Bflat, Cmin, Bflat, Dminor x2, Eflat x2, Bflat, Cmin, Bflat, Cmin, Bflat
# interesting notes in scales
Bflat_scale = ["bf", "c", "c", "d", "d", "d", "ef3", "f", "af", "a"]
Cmin_scale = ["c", "d4", "ef", "f", "g", "af2", "bf"]
Gmin_scale = ["g", "a", "bf", "c", "d", "ef", "f", "g"]
Dmin_scale = ["d", "d", "ef", "f", "f", "g", "a", "bf", "c"]
Eflat_scale = ['ef3', 'f', 'fs', 'g', 'gs', 'a', 'bf', 'c']
common_phrase = ["d", "f", "d", "f", "bf", "f"]
Bflat = ["b3", "d", "f"]
Cmin = ["c4", "ds", "g", "a"]
Gmin = ["g4", "b", "d4", "f"]
Dmin = ["d3", "f", "a"]
Eflat = ["ef2", "ef4", "g", "as"] 
pitches = [
    [Gmin] + common_phrase + Gmin_scale,
    [Bflat] + Bflat_scale,
    [Cmin] + Cmin_scale,
    [Bflat] + common_phrase + Bflat_scale,
    [Cmin] + Cmin_scale,
    [Bflat] + Bflat_scale,
]

pitches_2 = [
    [Dmin] + Dmin_scale,
    [Dmin] + common_phrase + Dmin_scale,
    Eflat_scale,
    Eflat_scale,
    [Bflat] + common_phrase,
    Eflat_scale,
]

pitches_3 = [
    Bflat + Bflat_scale,
    Cmin + Cmin_scale,
    Bflat + Bflat_scale,
    Cmin + Cmin_scale,
]

def generate_pitches(pitches, num_notes_per_chord, num_rests_per_chord=0):
    pitches_array = []
    for chord in pitches:
        pitches_array += random.sample(chord*4 + []*num_rests_per_chord, num_notes_per_chord)
    return pitches_array

section_1 = Section(
    "section 1",
    ["gmin", "bflat", "cmin", "bflat", "cmin", "bflat"],
    generate_pitches(pitches, len(rhythm_pool_1), 6),
    generate_rhythm_sequences(rhythm_pool_1, 6)
)
section_2 = Section(
    "section 2",
    ["dmin", "dmin", "eflat", "eflat", "bflat", "eflat"],
    generate_pitches(pitches_2, len(rhythm_pool_2), 1),
    generate_rhythm_sequences(rhythm_pool_2, 6)
)
section_3 = Section(
    "section 3",
    ["bflat", "cmin", "bflat", "cmin"],
    generate_pitches(pitches_3, len(rhythm_pool_1), 4),
    generate_rhythm_sequences(rhythm_pool_1, 4)
)
g1 = section_1.create_generator(8, starting_template)
g1_dur = g1.start_time + section_1.total_time
g2 = section_2.create_generator(start_time=(g1_dur), template="section 2")
g2_dur = g1_dur + section_2.total_time
g3 = section_3.create_generator(start_time=(g2_dur), template="section 3")
g3_dur = g2_dur + section_3.total_time

g1.add_generator(g2)
g1.add_generator(g3)

# ====================================
# Bucket generator
# - index should start in an odd rhythm centered around overflowing beats
# - i.e. after 2^3, 2^2, 2^1, 2^0 beats and repeat
# - only include 2^3 in the rotation during the first and last sections
# ====================================
MAX_BUCKET_DURATION = 15
bucket_indecies = list(range(1, 23))

def generate_bucket_queues(duration, amp_mod=1.2, pattern=[2**3, 2**2, 2**1]):
    counts = []
    sum = 0

    while sum < duration:
        print(sum)
        for p in pattern:
            if sum + p <= duration:
                counts.append(p)
            sum += p

    amplitude = [
        amp_mod * 1.5 if c == pattern[-2] 
        else amp_mod * 2 if c == pattern[-1] 
        else amp_mod
        for c in counts
    ]

    return counts, amplitude

g1_bucket_times, g1_bucket_amp = generate_bucket_queues(section_1.total_time)
g2_bucket_times, g2_bucket_amp = generate_bucket_queues(section_2.total_time, pattern=[2**2, 2**1, 2**0])
g3_bucket_times, g3_bucket_amp = generate_bucket_queues(section_3.total_time)

bucket = Generator(
    streams=[
        (keys.instrument, 140),
        (keys.rhythm, Itemstream(g1_bucket_times + g2_bucket_times + g3_bucket_times, notetype=notetypes.number, tempo=120)),
        (keys.duration, MAX_BUCKET_DURATION), # orc ignores this anyway
        (keys.amplitude, Itemstream(g1_bucket_amp + g2_bucket_amp + g3_bucket_amp)),
        ('bucket', Itemstream(bucket_indecies))
    ],
    note_limit=(len(g1_bucket_times) + len(g2_bucket_times) + len(g3_bucket_times)),
    start_time=16,
)

g1.add_generator(bucket)

# ====================================
# Waves generator
# - I want it to come in in the middle of the second section (strong),
#   wayne and then come back at the end of the third section
# Example content
# ;inst start   dur   amp  freq atk rel cut1   cut2
# i 110	0	    13   .1	    10	1	11	 50   20 ; subtle waves

# i 110	1		6.1   .2	10	2	5.8	 200	200
# i 110	7		6.1   .2	10	1	5.8	 200	200
# i 110	13		4     .2	10	.3	3	 150	100
# ====================================
wave_rhythm_pool_sec_2 = ['h', 'w+', 'h', 'q', 'w', 'q'] # 16 counts
wave_rhythm_pool_sec_3 = ['w+w', 'w.', 'h'] # 16 counts
wave_r_sec_2 = generate_rhythm_sequences(wave_rhythm_pool_sec_2, 6)
wave_r_sec_3 = generate_rhythm_sequences(wave_rhythm_pool_sec_3, 5)

wave_durations_sec_2 = [rhythm_to_duration(r, 120) for r in wave_r_sec_2]
wave_durations_sec_3 = [rhythm_to_duration(r, 120) for r in wave_r_sec_3]

wave_r_amp_sec_2 = (list(np.arange(.25, .4, .05)) * 10)[:len(wave_durations_sec_2)]
wave_r_amp_sec_3 = list(np.arange(.1, .2, .05))[:len(wave_durations_sec_3)]

# attack and releases
wave_r_atk_sec_2 = [random.uniform(0.1, 0.5) for _ in range(len(wave_durations_sec_2))]
wave_r_atk_sec_3 = [random.uniform(0.1, 0.5) for _ in range(len(wave_durations_sec_3))]
wave_r_rel_sec_2 = [dur * .98 for dur in wave_durations_sec_2]
wave_r_rel_sec_3 = [dur * .8 for dur in wave_durations_sec_3]

# i want the values to change across the waves for cuts, not stick out
wave_r_cut_sec_2 = [random.uniform(50, 200) for _ in range(len(wave_durations_sec_2))]
wave_r_cut_sec_3 = [random.uniform(100, 200) for _ in range(len(wave_durations_sec_3))]

wave_sec_2 = Generator(
    streams=[
        (keys.instrument, 110),
        (keys.rhythm, Itemstream(wave_r_sec_2, notetype=notetypes.rhythm, tempo=120)),
        (keys.duration, Itemstream(wave_durations_sec_2)),
        (keys.amplitude, Itemstream(wave_r_amp_sec_2)),
        (keys.frequency, 10),
        ('atk', Itemstream(wave_r_atk_sec_2)),
        ('rel', Itemstream(wave_r_rel_sec_2)),
        ('cut1', Itemstream(wave_r_cut_sec_2)),
        ('cut2', Itemstream(wave_r_cut_sec_2))
    ],
    note_limit=len(wave_r_sec_2) - 1,
    start_time=g1_dur + 4
)

wave_sec_3 = Generator(
    streams=[
        (keys.instrument, 110),
        (keys.rhythm, Itemstream(wave_r_sec_3, notetype=notetypes.rhythm, tempo=120)),
        (keys.duration, Itemstream(wave_durations_sec_3)),
        (keys.amplitude, Itemstream(wave_r_amp_sec_3)),
        (keys.frequency, 10),
        ('atk', Itemstream(wave_r_atk_sec_3)),
        ('rel', Itemstream(wave_r_rel_sec_3)),
        ('cut1', Itemstream(wave_r_cut_sec_3)),
        ('cut2', Itemstream(wave_r_cut_sec_3))
    ],
    note_limit=len(wave_r_sec_3) - 1,
    start_time=g3_dur + 16
)

g1.add_generator(wave_sec_2)
g1.add_generator(wave_sec_3)

g1.generate_notes()
score_string = g1.generate_score_string()
print(score_string)

with open("main.generated.sco", "w") as f:
    f.write(score_string)

csound_utils.play_csound("main.orc", g1, 
                            args_list=["-+rtaudio=pa_cb", "-odac", "--nchnls=2", "--nchnls_i=2", "--limiter=1", "--print_version", "--env:CSNOSTOP=yes"], 
                            silent=True
                        )
