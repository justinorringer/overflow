import random

from thuja.itemstream import notetypes
from thuja.itemstream import Itemstream
from thuja.generator import Generator
from thuja.generator import keys
from thuja import csound_utils
from thuja.utils import rhythm_to_duration

# going to generate in the following keys, 4 bars of 4 counts each
# Gminor or Bflat, Cmin, Bflat, Dminor, Eflat, Bflat
rhythm_pool_1 = ['w', 'w', 'e', 'e', 'q', 'e', 'e', 'e', 'e', 'e', 'e', 'e', 'e', 'h'] # i.e. 16 counts, 14 notes
# then a faster pool, still 16 counts
rhythm_pool_2 = ['q', 'e', 'e', 'e', 'e', 'q', 'q', 'e', 'e.', 's.', 's.', 'q', 'h', 'h', 'w'] # i.e. 16 counts, 16 notes

def generate_random_sequences(values, num_sequences):
    sequences = []
    for _ in range(num_sequences):
        random_sequence = random.sample(values, len(values))
        sequences.append(random_sequence)
    return sequences

# Generate 5 random sequences
random_sequences = generate_random_sequences(rhythm_pool_1, 6) + generate_random_sequences(rhythm_pool_2, 6) + generate_random_sequences(rhythm_pool_1, 4)
combined_sequence = [item for sublist in random_sequences for item in sublist]

rhythms = Itemstream(combined_sequence,
                     tempo=120,
                     notetype=notetypes.rhythm)

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
for ry in combined_sequence:
    start_of_note_or_not = 0.05 if random.choice([True, False]) else 0
    dur = rhythm_to_duration(ry, 120) - start_of_note_or_not
    durations.append(rhythm_to_duration(ry, 120) - .05)
    attacks.append(0.01)
    releases.append(dur - 0.01)

    # cuts.append(random.randint(100, 200))
    cuts.append(100)

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

pitches_array = generate_pitches(pitches, len(rhythm_pool_1), 6) + generate_pitches(pitches_2, len(rhythm_pool_2), 1) + generate_pitches(pitches_3, len(rhythm_pool_1), 4)

print(pitches_array)
# TODO: increase the odds that notes repeat
pitches = Itemstream(pitches_array,
                     notetype=notetypes.pitch)

template = ""
with open("main.template.sco", "r") as f:
    template = f.read()

g = Generator(
    streams=[
        (keys.instrument, 101),
        (keys.rhythm, rhythms),
        (keys.duration, Itemstream(durations)),
        (keys.amplitude, 1),
        (keys.frequency, pitches),
        ('atk', Itemstream(attacks)),
        ('rel', Itemstream(releases)),
        ('cut1', Itemstream(cuts)),
        ('cut2', Itemstream(cuts))
    ],
    note_limit=(len(pitches_array)),
    gen_lines=[template],
    start_time=8
)

g.generate_notes()
score_string = g.generate_score_string()
print(score_string)

with open("main.generated.sco", "w") as f:
    f.write(score_string)

csound_utils.play_csound("main.orc", g, args_list=["-+rtaudio=pa_cb", "-odac", "--nchnls=2", "--nchnls_i=2", "--limiter=1", "--print_version", "--env:CSNOSTOP=yes"], silent=True)
