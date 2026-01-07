#!/bin/bash

CMD="kitty -e tty-clock -c -D -C 7"

# Check if that exact foot/tty-clock is running
if pgrep -f "kitty .*tty-clock -c -D -C 7" >/dev/null; then
    # Kill it
    pkill -f "kitty .*tty-clock -c -D -C 7"
else
    # Launch it
    $CMD &
fi
