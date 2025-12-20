#!/bin/sh

DIRS="
/usr/share/applications
~/.local/share/applications
/var/lib/flatpak/exports/share/applications
~/.local/share/flatpak/exports/share/applications
"

# Build list: "Pretty Name | desktop-id"
apps=$(
  find $DIRS -name '*.desktop' 2>/dev/null | while read -r file; do
    name=$(grep -m1 '^Name=' "$file" | cut -d= -f2-)
    nodisplay=$(grep -m1 '^NoDisplay=true' "$file")
    terminal=$(grep -m1 '^Terminal=true' "$file")

    [ -z "$name" ] && continue
    [ -n "$nodisplay" ] && continue
    [ -n "$terminal" ] && continue

    id=$(basename "$file" .desktop)
    printf '%s | %s\n' "$name" "$id"
  done
)

choice=$(printf '%s\n' "$apps" \
  | sort -u \
  | fzf --prompt="apps> ")

[ -z "$choice" ] && exit 0

id=$(printf '%s' "$choice" | sed 's/.* | //')

setsid -f gtk-launch "$id" >/dev/null 2>&1

