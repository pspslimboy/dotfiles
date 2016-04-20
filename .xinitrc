# Xrandr: Triple Head Setup

	# Old 'Hack' Version
	#xrandr -r 120
	#xrandr --setprovideroutputsource nouveau radeon
	#xrandr --output DVI-0 --auto --left-of DVI-1
	#xrandr --output DVI-I-1-2 --auto --pos 3360x26
	#xrandr --output DVI-1 --primary -r 120
	#xrandr -r 120
	#xrandr --output DVI-0 --auto --left-of DVI-1
	#xrandr --output DVI-I-1-2 --auto --pos 3360x26
	#if [[ $(hostname) = "ArchRCPC" ]]; then
	#	xrandr --output DVI-D-1 --off
	#	xrandr --output DVI-I-1 --primary
	#	xrandr --rate 120
	#	xrandr --setprovideroutputsource 1 0
	#	xrandr --output DVI-D-1 --auto --left-of DVI-I-1
	#	xrandr --output DVI-I-2 --auto --pos 3360x26
	#else
		# New 'Improved' Version
		xrandr --output DVI-0 --off
		xrandr --output DVI-1 --primary
		xrandr --rate 120
		#xrandr --setprovideroutputsource nouveau radeon
		xrandr --setprovideroutputsource 1 0
		xrandr --output DVI-0 --auto --left-of DVI-1
		xrandr --output DVI-I-1-2 --auto --pos 3360x26
	#fi

# If catalyst driver is detected, then run alternate script (rarely used)
if lsmod | grep "fglrx" &> /dev/null ; then
	source ~/bin/catalyst-monitors
fi

# Evdev: disable mouse acceleration
#		 enable scroll emulation on Logitech MX Revolution
xset m 0 0
xinput set-int-prop 9 "Evdev Wheel Emulation Button" 8 17
xinput set-int-prop 9 "Evdev Wheel Emulation" 8 1
xinput set-int-prop 8 "Evdev Wheel Emulation Button" 8 17 
xinput set-int-prop 8 "Evdev Wheel Emulation" 8 1

# Nitrogen: restore background for X
#nitrogen --restore

# Old XFCE startx
# exec ck-launch-session dbus-launch openbox-session
# exec ck-launch-session dbus-launch startxfce4

xrdb ~/.Xresources &

# Current startx
#exec openbox-session
#sxhkd &
#exec bspwm
#exec startkde
exec i3
