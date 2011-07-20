xrdb -load /etc/X11/Xresources
xrdb -merge ~/.Xresources

exec ck-launch-session fvwm >&2 2>> /tmp/fvwm.error.ordo
