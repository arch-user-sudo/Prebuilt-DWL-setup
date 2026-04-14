#!/bin/bash

# Check if rofi is already running
if pgrep -x fuzzel >/dev/null; then
  # If running, kill it
  pkill -x fuzzel
else
  # Otherwise, launch rofi (change mode as needed)
  fuzzel
fi
