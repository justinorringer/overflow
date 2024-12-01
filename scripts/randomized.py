import random

from thuja.itemstream import notetypes
from thuja.itemstream import Itemstream
from thuja.generator import Generator
from thuja.generator import keys
from thuja import csound_utils
from thuja.utils import rhythm_to_duration

values = ['e','e','e','q.','e','q.', 'q', 'w', 'h', 'h', 'e','h']

def generate_random_sequences(values, num_sequences):
    sequences = []
    for _ in range(num_sequences):
        random_sequence = random.sample(values, len(values))
        sequences.append(random_sequence)
    return sequences

# Generate 5 random sequences
random_sequences = generate_random_sequences(values, 5)
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
    cuts.append(50)

print(cuts)

# section one will go back and forth between E and F#m
E = ["e4", "gs", "b"]
Fsm = ["fs4", "a", "c"]
Escale = ["gs4", "a3", "b3", "cs", "fs", "b", "b"] # modified obviously
Fsmscale = ["d4", "ds", "d", "ds", "fs", "a", "b", "cs"]
pitches_array = [E, Fsm] + E + Fsm + Escale + Fsmscale + []*5
pitches_array = random.sample(pitches_array, len(pitches_array) - 3)
# TODO: increase the odds that notes repeat
pitches = Itemstream(pitches_array,
                     notetype=notetypes.pitch)

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
    note_limit=(len(pitches.values)*4*3),
    gen_lines=[';sine', 'f 1 0 16384 10 1']
)

g.generate_notes()
score_string = g.generate_score_string()
print(score_string)

with open("randomized.sco", "w") as f:
    f.write(score_string)

csound_utils.play_csound("randomized.orc", g, args_list=["-+rtaudio=pulse", "-odac", "--nchnls=2", "--nchnls_i=2", "--limiter=1", "--print_version", "--env:CSNOSTOP=yes"], silent=True)
