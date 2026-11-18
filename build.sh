#!/bin/bash

set -e

PYTHON_BIN="${PYTHON_BIN:-python3}"
BUILD_DIR=".build-figures"

mkdir -p "$BUILD_DIR"
(cd code/data/o25_checkpoints && shasum -a 256 -c SHA256SUMS)
# Part A only is copied back: o28_analysis.py also writes a different, legacy o28_reff_measurement.pdf
# (Part B proxy), which must never replace the published Part B figure from o28_reff_figures.py.
SOURCE_DATE_EPOCH=0 MPLCONFIGDIR="$PWD/.matplotlib-cache" "$PYTHON_BIN" code/o28_analysis.py \
    --npz-dir code/data/o25_checkpoints --out-dir "$BUILD_DIR"
cp "$BUILD_DIR/o28_n1_calibration.pdf" code/o28_n1_calibration.pdf
(cd code && shasum -a 256 -c ARTIFACT_SHA256SUMS)

bash compile.sh
