# Inputs of the regenerated Part A figure

`o28_n1_calibration.pdf` reads only the keys `n1`, `delta_pair_mean` and `delta_pair_std` of the O25 full-graph
checkpoints `q{29,61,101,151,211}_o25.npz`. These five files are copied unchanged from the O25 repository
(`code/data/extended/`, identical to `simulation/spectral/o25/o25_outputs/` in the archived `simulation`
repository); `SHA256SUMS` lists their digests.

The figure published in version 2.0 was built from the Q5a-O5 checkpoints (q <= 151) and the O25 checkpoint
(q = 211). Those Q5a-O5 files (1-9 GB each) carry the same `n1` and pair-exponent values: regenerating the
version 2.0 figure from the five compact files above reproduces it pixel for pixel (Matplotlib 3.10.8).
They remain the input of Part B and are not distributed here.
