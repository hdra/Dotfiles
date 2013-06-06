#!/bin/sh

xrandr --output CRT1 --auto --left-of LVDS
xrandr --output CRT1 --primary
~/.i3/set-wall.sh