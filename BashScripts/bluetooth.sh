#!/bin/bash

# Command to run
CMD="footclient -e bluetuith"

# Check if the command is already running
if pgrep -f "$CMD" >/dev/null; then
  # If running, kill it
  pkill -f "$CMD"
else
  # Otherwise, launch it
  $CMD &
fi
