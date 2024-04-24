#!/bin/bash
SECONDS=0
set -e        # exit when error
set -o xtrace # print command

GPU=$1

export DISPLAY=:1.0 && blender-3.2.2-linux-x64/blender -b -P scripts/blender_script.py -- \
    --object_path my_object.glb \
    --output_dir ./views \
    --engine CYCLES \
    --scale 0.8 \
    --num_images 12 \
    --camera_dist 1.2
    # --engine BLENDER_EEVEE \
# ... 



















set +x; duration=SECONDS; RED='\033[0;31m'; Yellow='\033[1;33m'; Green='\033[0;32m'; NC='\033[0m'; echo -e "RED$((duration / 3600))hNC Yellow$((duration / 60 % 60))mNC Green$((duration % 60))sNC elapsed."