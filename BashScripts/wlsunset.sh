#!/usr/bin/env bash

if pgrep -x wlsunset >/dev/null; then
  pkill -x wlsunset
else
  wlsunset -l -26.2 -L 28.0 -t 5500 -T 6500 &
  disown
fi
