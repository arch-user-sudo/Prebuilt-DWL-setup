#!/bin/bash
# ws.sh

case "$1" in
1) KEY=2 ;;
2) KEY=3 ;;
3) KEY=4 ;;
4) KEY=5 ;;
5) KEY=6 ;;
*) exit 1 ;;
esac

ydotool key 125:1 $KEY:1 $KEY:0 125:0
