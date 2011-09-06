id:5:initdefault:
rc::sysinit:/etc/rc.sysinit
rs:S1:wait:/etc/rc.single
rm:2345:wait:/etc/rc.multi
rh:06:wait:/etc/rc.shutdown
su:S:wait:/sbin/sulogin -p
c2:2345:respawn:/sbin/fgetty tty2
c3:5:respawn:/sbin/mingetty --nice 5 --noclear --autologin ex tty3
