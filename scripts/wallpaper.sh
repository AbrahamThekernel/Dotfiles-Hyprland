#!/bin/bash

WALLPAPER="$HOME/.config/hypr/current_wallpaper"

swww-daemon &

sleep 1

if [ -f "$WALLPAPER" ]; then
    swww img "$(cat "$WALLPAPER")"
fi
