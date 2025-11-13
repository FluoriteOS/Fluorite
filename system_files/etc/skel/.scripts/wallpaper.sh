#!/usr/bin/env bash
# Fluorite wallpaper randomizer for Niri using swww

# Directory containing wallpapers
WALLPAPER_DIR="/usr/share/fluorite/wallpapers"

# Pick a random image from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) | shuf -n 1)

# Make sure swww daemon is running
if ! pgrep -x swww-daemon >/dev/null; then
    swww-daemon &
    # Give it a moment to start up
    sleep 0.5
fi

# Set the wallpaper with a transition
swww img "$WALLPAPER" --transition-fps 60 --transition-type fade --transition-duration 2

