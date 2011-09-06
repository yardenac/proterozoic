export XAUTHORITY=/tmp/.Xauthority.xuser
xrdb -load /etc/X11/Xresources
#xrdb -merge ~/.Xresources

eval "$(xrandr --current | xrandr-reformat)" #maximizes all screens

exec ck-launch-session fvwm &>> /tmp/fvwm.error.$USER.$(date +%s)
