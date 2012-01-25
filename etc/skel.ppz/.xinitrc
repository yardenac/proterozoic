#!/bin/bash

numlockx on

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
		urxvt.font: xft:Bitstream Vera Sans Mono-12:antialias=true:hinting=false,xft:Code2000
	EOF
	fbpanel_profile=1024
}

lspci | grep -q 'Intel Corporation Mobile 945GM/GMS/GME, 943/940GML Express Integrated Graphics Controller (rev 03)' && xrdb -override - <<-EOF
	xscreensaver.dpmsEnabled: False
EOF

xset +fp /usr/share/fonts/local
xset fp rehash

exec ck-launch-session fvwm \
	 -c "Read $HOME/.fvwm/config" \
	 -c "SetEnv FBPP $fbpanel_profile" \
	 &>> ~/.fvwm/errorlog #.$(date +%s)
