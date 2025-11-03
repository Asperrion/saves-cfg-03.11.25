#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers"

selected_file=$(find "$WALLPAPER_DIR" -type f -print0 \
  | xargs -0 -I{} bash -c 'printf "%s\t%s\n" "$(basename "{}")" "{}"' \
  | fuzzel -d --with-nth=1 --accept-nth=2)

if [ -n "$selected_file" ]; then
    wal --out-dir "$HOME/themes" -i "$selected_file"
    swww img "$selected_file"
fi


