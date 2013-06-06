#!/bin/bash
options=("Laptop only" "LCD Only" "Duplicate" "LCD extend to left" "LCD extend to right");

opt=$(zenity --title="Display Selection" --text="Select the display mode" --list \
	--column="Options" "${options[@]}");

echo $opt
	

