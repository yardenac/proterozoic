#!/usr/bin/bash

. /etc/ppz.conf

export DISPLAY=${DISPLAY:-:$(mydisplay)}

[ "$SYSTEM_TYPE" = desktop ] && numlockx on

export XAUTHORITY=/tmp/.Xauthority.xuser
for xrfile in /etc/X11/xresources.d/*; do
    xrdb -override "$xrfile"
done

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

xset +fp /usr/share/fonts/local
xset fp rehash

exec fvwm \
    -c "Read $HOME/.fvwm/config" \
    -c "SetEnv FBPP $fbpanel_profile" \
    &>> ~/.fvwm/errorlog #.$(date +%s)
