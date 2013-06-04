#!/bin/sh

xrandr --output CRT1 --auto --left-of LVDS
xrandr --output CRT1 --primary
~/.i3/config/set-wall.sh