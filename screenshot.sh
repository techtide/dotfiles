#!/bin/bash
# I may switch to Sway w/ Wayland so this would render unfunctional, hence my decision to put it off for a bit.
read -p "Take screenshot of external display (0) or the laptop screen (1): " choice
read -p "File name: " name
if [$choice -ge 0];then
	maim -g 1366x768+1920+0 "$name.png"
else
	maim -g 1920x1080+0+0 ss.png
fi
