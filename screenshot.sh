#!/bin/bash
read -p "Take screenshot of external display (0) or the laptop screen (1): " choice
read -p "File name: " name
if [$choice -ge 0];then
	maim -g 1366x768+1920+0 "$name.png"
else
	maim -g 1920x1080+0+0 ss.png
fi
