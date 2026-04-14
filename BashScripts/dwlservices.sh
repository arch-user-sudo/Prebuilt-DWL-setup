#!/usr/bin/env bash
# dwl startup toggle script for rwaybar, wbg, foot --server

# Array of commands to toggle
declare -A apps
apps=(
  ["rwaybar"]="rwaybar"
  #["wbg"]="wbg -s /home/lynch/Wallpapers/Mountainsice.jpeg"
  #["foot"]="foot --server"
)

for name in "${!apps[@]}"; do
  cmd="${apps[$name]}"

  # Check if process is running
  if pgrep -f "$cmd" >/dev/null; then
    echo "$name is running, killing..."
    pkill -f "$cmd"
  else
    echo "$name is not running, starting..."
    # Run in background so script continues
    $cmd &
  fi
done
