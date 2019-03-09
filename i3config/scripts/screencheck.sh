#!/bin/bash

# First argument: Primary monitor
# Second argument: Secondary monitor
if  xrandr | grep -q "$2 d"; then
	xrandr --output "$2" --off
else
	xrandr --output "$2" --auto
	xrandr --output "$2" --right-of "$1"
fi
feh --bg-scale ~/.wallpaper.jpg
