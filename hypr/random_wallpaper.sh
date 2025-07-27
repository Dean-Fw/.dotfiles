#!/bin/bash
DIR=$HOME/Pictures/Wallpapers
wall=$(ls -d "$DIR"/*jpg | shuf -n 1)

echo "$wall"

hyprctl hyprpaper preload "$wall"
sleep 2
hyprctl hyprpaper wallpaper ,"$wall"
