#!/bin/bash

CMD="footclient -e tty-clock -c -D -C 7"

# Check if that exact foot/tty-clock is running
if pgrep -f "footclient .*tty-clock -c -D -C 7" >/dev/null; then
  # Kill it
  pkill -f "footclient .*tty-clock -c -D -C 7"
else
  # Launch it
  $CMD &
fi
