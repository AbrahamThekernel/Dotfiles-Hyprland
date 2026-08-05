#!/bin/bash

WALL_DIR="$HOME/Imágenes/FondosDePantalla"

selection=$(
find "$WALL_DIR" -maxdepth 1 -type f \
\( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) |
while IFS= read -r img; do
    printf "%s\0icon\x1f%s\n" "$(basename "$img")" "$img"
done | rofi -dmenu -show-icons -p "Wallpaper"
)

[ -z "$selection" ] && exit

wall="$WALL_DIR/$selection"

hyprctl hyprpaper preload "$wall"
hyprctl hyprpaper wallpaper ",$wall"
