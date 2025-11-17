#!/bin/bash

OUTPUT_DIR="$HOME/Pictures/Screenshots"
FILENAME="screenshot_$(date '+%Y-%m-%d_%H-%M-%S').png"

xfce4-screenshooter -f -s "$OUTPUT_DIR/$FILENAME"
notify-send "Screenshot Info" "Capture saved as $OUTPUT_DIR/$FILENAME"
