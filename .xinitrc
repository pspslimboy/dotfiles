#!/bin/bash
xrandr --output DVI-0 --off
xrandr --output DVI-1 --primary
xrandr --rate 120
xrandr --setprovideroutputsource 1 0
xrandr --output DVI-0 --auto --left-of DVI-1
xrandr --output DVI-I-1-2 --auto --pos 3360x26

xset m 0 0
xinput set-int-prop 9 "Evdev Wheel Emulation Button" 8 17
xinput set-int-prop 9 "Evdev Wheel Emulation" 8 1
xinput set-int-prop 8 "Evdev Wheel Emulation Button" 8 17 
xinput set-int-prop 8 "Evdev Wheel Emulation" 8 1

xrdb ~/.Xresources &

exec i3
