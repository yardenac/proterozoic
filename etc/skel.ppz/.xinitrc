#!/bin/bash

time numlockx on

export XAUTHORITY=/tmp/.Xauthority.xuser
xrdb -load /etc/X11/Xresources
#xrdb -merge ~/.Xresources

fbpanel_profile=default
xrandr &>/dev/null && {
	 eval "$(xrandr --current | xrandr-reformat)" #maximizes all screens
} || {
	# we have no compositing
	xrdb -override - <<-EOF
		urxvt.transparent: true
		urxvt.shading: 50u
		urxvt.font: xft:Mono-13:antialias=false:hinting=false
	EOF
	fbpanel_profile=1024
}

exec ck-launch-session fvwm \
	 -c "Read $HOME/.fvwm/config" \
	 -c "SetEnv FBPP $fbpanel_profile" \
	 &>> ~/.fvwm/errorlog #.$(date +%s)
