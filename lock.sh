#!/bin/bash
scrot /tmp/desktop.png -q 25
convert /tmp/desktop.png -blur 0x7 /tmp/desktop.png
composite -gravity center /home/greenie/.config/i3/lockicon.png /tmp/desktop.png /tmp/desktop.png
i3lock -i /tmp/desktop.png
rm -rf /tmp/desktop.png

sleep 60; pgrep i3lock && xset dpms force off
