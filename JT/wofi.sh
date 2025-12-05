#!/bin/bash

# Check if rofi is already running
if pgrep -x wofi >/dev/null; then
    # If running, kill it
    pkill -x wofi
else
    # Otherwise, launch rofi (change mode as needed)
    wofi --show drun
fi
