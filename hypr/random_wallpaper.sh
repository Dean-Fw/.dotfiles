#!/bin/bash
sleep 2
DIR=$HOME/Pictures/Wallpapers
wall=$(ls -d "$DIR"/*jpg | shuf -n 1)

echo "$wall"

hyprctl hyprpaper reload ,"$wall"
hyprctl hyprpaper unload unused
